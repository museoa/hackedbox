// 	$Id: epist.cc,v 1.7 2002/04/17 02:57:22 woodblock Exp woodblock $	

#include <X11/Xlib.h>
#include <X11/Xproto.h>
#include <X11/keysym.h>
#include <unistd.h>
#include <iostream.h>
#include <fstream.h>
#include <hash_map.h>
#include <list.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <signal.h>
#include "epist.hh"
#include <sys/types.h>
#include <sys/wait.h>
#include "Modifiers.cc"

Epist* globalEpist;

// Keydef

Keydef::Keydef(KeyCode k,const unsigned long m, const Action a):
  keycode(k), modifier(m), action(a), command(NULL){}

Keydef::Keydef(KeyCode k, const unsigned long m, const Action a, char *s):
  keycode(k), modifier(m), action(a){
  command=strdup(s);
}
Keydef::  Keydef(const Keydef &k):
  keycode(k.keycode), modifier(k.modifier), action(k.action){
  command = (k.command==NULL?NULL:strdup(k.command));

}
Keydef::~Keydef(){
  if (command != NULL)
    free(command);
}

#ifdef DEBUG
ostream& operator<<(ostream& out, const Keydef& k){
  out << k.getKeycode() << ' ' << k.getModifier();
  return out;
}
#endif

Epist::Epist(int argc, char**argv){
  globalEpist = this;

  struct sigaction action;

  action.sa_handler = sighandler;
  action.sa_mask = sigset_t();
  action.sa_flags = SA_NOCLDSTOP | SA_NODEFER;
  int signum=7;
  int signals[] = {SIGSEGV, SIGFPE, SIGTERM, SIGINT, SIGCHLD, SIGHUP, SIGUSR1};
  
  for(int sig=0; sig<signum; ++sig)
    if (sigaction(signals[sig], &action, NULL)){
      cerr << "Error installing sighandlers!" << endl;
      exit(1);
    }

  display = XOpenDisplay(NULL);
  if (display == NULL){
    cerr << "Can't open X display." << endl;
    exit(1);
  }
  rootWindow = RootWindow(display, 0);	
  twiddleModifiers();
  if(argc > 1){
    rcfile=new char[strlen(argv[1])+1];
    strcpy(rcfile, argv[1]);
    readRcfile();
  }else{
    char *home = getenv("HOME");
    rcfile = new char[strlen(home)+strlen(RCFILE)+2]; 
    //one for \0 and one for /
    sprintf(rcfile, "%s/" RCFILE, home);
    //cerr << f << endl;
    readRcfile();
  }
  getLockMasks(ScrollLockMask, NumLockMask);
  activate();
};

Epist::~Epist(){
    delete [] rcfile;
}

void Epist::readRcfile(){//TODO: add sanity checks
  ifstream in(rcfile);
	
  if (in.fail()) {
   ifstream in(DEFAULT_KEYS);
	  
   if (in.fail()) {
     exit(1);
     cout << "Can't open keys file." << endl;
   }
  }
  
  char line[80];
  
  while(in.good() && !in.eof()){
    unsigned long m=0;
    in >> line;
    if (!in.good() || in.eof()) break;
    if(line[0]=='#'){
      in.getline(line, 80);
      continue;
    }
#   ifdef DEBUG
    cerr << 'm' << line << endl;
#   endif

    char *l;
    char **l2=new char*;
    *l2=strdup(line);
    while ( (l=strsep(l2, "+")) !=NULL){
      m = m|getModifer(l);
    }
    delete[] *l2;
    delete l2;

    in >> line;
    if (!in.good() || in.eof()) break;

#   ifdef DEBUG
    cerr << 'k' << line << endl;
#   endif

    KeyCode k = XKeysymToKeycode(display, XStringToKeysym(line));

#   ifdef DEBUG
    cerr << k<<endl;
#   endif 

    in >> line;

#   ifdef DEBUG
    cerr << 'a' << line << endl;
#   endif

    Action a = getAction(line);
    if ((int)a==execute){
      in.getline(line, 80);

#     ifdef DEBUG
      cerr << 'e' << line << endl;
#     endif

      keys.push_back(Keydef(k, m, (Action)a, line));
      if (!in.good()|| in.eof()) break;
    }else{
      keys.push_back(Keydef(k, m, (Action)a));
    }
    if (!in.good()||in.eof()) break;
	
  }
}
void sighandler(int sig){
  
  switch(sig){
  case SIGTERM:
  case SIGINT:
    quit();
  case SIGSEGV:
  case SIGFPE:
    //bad stuff mang
    abort();
    break;
  case SIGCHLD:
    waitpid(-1, NULL, WNOHANG|WUNTRACED);
    signal(SIGCHLD, sighandler);
    break;
  case SIGUSR1:
    globalEpist->clearCache();
    break;
  case SIGHUP:
    globalEpist->restart();
    break;
  }
  
}

void Epist::restart(){
  //clear all caught keys
  list<Keydef>::const_iterator it;
  for(it=keys.begin(); it != keys.end(); it++){
    XUngrabKey(display, it->getKeycode(), it->getModifier(), rootWindow );

    XUngrabKey(display, it->getKeycode(), it->getModifier()| ScrollLockMask, rootWindow );
    XUngrabKey(display, it->getKeycode(), it->getModifier()| LockMask, rootWindow );
    XUngrabKey(display, it->getKeycode(), it->getModifier()| NumLockMask, rootWindow );

    XUngrabKey(display, it->getKeycode(), it->getModifier()|ScrollLockMask|LockMask, rootWindow );
    XUngrabKey(display, it->getKeycode(), it->getModifier()|LockMask|NumLockMask, rootWindow );
    XUngrabKey(display, it->getKeycode(), it->getModifier()|NumLockMask|ScrollLockMask, rootWindow );

    XUngrabKey(display, it->getKeycode(), it->getModifier()|LockMask|ScrollLockMask|NumLockMask, rootWindow );

  }

  //clear list
  keys.clear();
  //reread config
  readRcfile();
  //activate the new keys
  activate();

}
void quit(){
  //not much to do now
  exit(2);
}

void Epist::getLockMasks(int &NumLockMask, int &ScrollLockMask){
  const XModifierKeymap* const modmap = XGetModifierMapping(display);
  if (modmap && modmap->max_keypermod > 0) {
    const int mask_table[] = {
      ShiftMask, LockMask, ControlMask, Mod1Mask,
      Mod2Mask, Mod3Mask, Mod4Mask, Mod5Mask
    };
    const size_t size = (sizeof(mask_table) / sizeof(mask_table[0])) *
      modmap->max_keypermod;
    // get the values of the keyboard lock modifiers
    // Note: Caps lock is not retrieved the same way as Scroll and Num lock
    // since it doesn't need to be.
    const KeyCode num_lock_code = XKeysymToKeycode(display, XK_Num_Lock);
    const KeyCode scroll_lock_code = XKeysymToKeycode(display, XK_Scroll_Lock);
    
    for (size_t cnt = 0; cnt < size; ++cnt) {
      if (! modmap->modifiermap[cnt]) continue;

      if (num_lock_code == modmap->modifiermap[cnt])
	NumLockMask = mask_table[cnt / modmap->max_keypermod];
      if (scroll_lock_code == modmap->modifiermap[cnt])
	ScrollLockMask = mask_table[cnt / modmap->max_keypermod];
    }
  }

  if (modmap) XFreeModifiermap(const_cast<XModifierKeymap*>(modmap));
}
void Epist::activate(){
  list<Keydef>::const_iterator it;
  for(it=keys.begin(); it != keys.end(); it++){
    XGrabKey(display, it->getKeycode(), 
	     it->getModifier(),
	     rootWindow, True, GrabModeAsync, GrabModeAsync);
    XGrabKey(display, it->getKeycode(), 
	     it->getModifier()|LockMask,
	     rootWindow, True, GrabModeAsync, GrabModeAsync);
    XGrabKey(display, it->getKeycode(), 
	     it->getModifier()|ScrollLockMask,
	     rootWindow, True, GrabModeAsync, GrabModeAsync);
    XGrabKey(display, it->getKeycode(), 
	     it->getModifier()|NumLockMask,
	     rootWindow, True, GrabModeAsync, GrabModeAsync);
    
    XGrabKey(display, it->getKeycode(), 
	     it->getModifier()|LockMask|ScrollLockMask,
	     rootWindow, True, GrabModeAsync, GrabModeAsync);
    XGrabKey(display, it->getKeycode(), 
	     it->getModifier()|ScrollLockMask|NumLockMask,
	     rootWindow, True, GrabModeAsync, GrabModeAsync);
    XGrabKey(display, it->getKeycode(), 
	     it->getModifier()|NumLockMask|LockMask,
	     rootWindow, True, GrabModeAsync, GrabModeAsync);
    
    XGrabKey(display, it->getKeycode(), 
	     it->getModifier()|NumLockMask|LockMask|ScrollLockMask,
	     rootWindow, True, GrabModeAsync, GrabModeAsync);

  }
}
void Epist::run(){
  while(1){
    XEvent e;
    XNextEvent(display, &e);
    process(&e);
  }
}

void Epist::process(XEvent* e){
  switch(e->type){
  case KeyPress:
    e->xkey.state &= ~(LockMask|ScrollLockMask|NumLockMask);
    list<Keydef>::const_iterator it;
    for(it=keys.begin(); it!=keys.end(); it++){
      if (e->xkey.keycode == it->getKeycode() &&
	  e->xkey.state == it->getModifier()){
	  
	  

	int revert = RevertToPointerRoot;
	Window w;
		
	switch(it->getAction()){
		  	  
	case execute:
#         ifdef DEBUG
	  cerr << "froking!"<<endl;
#         endif
	  shexec(it->getCommand());
	  break;
	case iconify:
#         ifdef DEBUG
	  cerr << "icronifying!" << endl;
#         endif	  
	  XGetInputFocus(display, &w, &revert);
	  if (w && w!=(int)PointerRoot)
	    XIconifyWindow(display, w, 0);
	  break;
	case raiseWin:
#         ifdef DEBUG
	  cerr << "raise0ring"<<endl;
#         endif	  
	  XGetInputFocus(display, &w, &revert);
	  if (w && w!=(int)PointerRoot)
	    XRaiseWindow(display, w);
	  break;
	case lower:
#         ifdef DEBUG
	  cerr << "lowerre"<<endl;
#         endif	  
	  XGetInputFocus(display, &w, &revert);
	  if (w && w!=(int)PointerRoot)
	    XLowerWindow(display, w);
	  break;
	case desktop1:
	case desktop2:
	case desktop3:
	case desktop4:
	case desktop5:
	case desktop6:
	case desktop7:
	case desktop8:
	case desktop9:
#         ifdef DEBUG
	  cerr << "dekstop!"<<(int)it->getAction() - desktop1 << endl;
#         endif	  
	  switchDesktop((int)it->getAction() - desktop1);
	  break;
	case shade:
#         ifdef DEBUG
	  cerr << "shadink"<<endl;
#         endif	  	  
	  shadeWindow();
	  break;
	case closewindow:
#         ifdef DEBUG
	  cerr << "clothesing"<<endl;
#         endif	  
	  closeWindow();
	  break;
	case moveup:
	case movedown:
	case moveleft:
	case moveright:
	  moveWindow(it->getAction());
	  break;
	case bigmoveup:
	case bigmovedown:
	case bigmoveleft:
	case bigmoveright:
	  bigMoveWindow(it->getAction()); //TODO: make this cleaner
	  break;
	case cycleWindowForward:
	case cycleWindowBackward:
	  cycleWindow(it->getAction());
	case maximizeboth:
	case maximizevertical:
	case maximizehorizontal:
	  maximize( (it->getAction()==maximizeboth||it->getAction()==maximizevertical),
		    (it->getAction()==maximizeboth||it->getAction()==maximizehorizontal));
	  break;
		  
	default:
	  break;
	}
      }
    }
  }
}
void Epist::cycleWindow(const Action a){ 
  XEvent e;
  e.xclient.type=ClientMessage;
  e.xclient.window=rootWindow;
  e.xclient.message_type = getAtom("_BLACKBOX_CYCLE_WINDOW_FOCUS");
  //e.xclient.message_type = getAtom("CHANGE_WINDOW");
  e.xclient.format =32;
  e.xclient.data.l[0]= (a==cycleWindowForward)?(True):(False);
  e.xclient.data.l[1]=0;

  XSendEvent(display, rootWindow, False, SubstructureRedirectMask, &e);
 
}

void Epist::bigMoveWindow(Action a){
  Window rootwindow, w, child;
  int focusX, focusY, r;
  unsigned int focusW, focusH, focusBorder, focusDepth;

  XGetInputFocus(display, &w, &r);
  if (w && w != (int)PointerRoot){
    XGetGeometry(display, w, &rootwindow, &focusX,
		 &focusY, &focusW, &focusH, &focusBorder, &focusDepth);
    XTranslateCoordinates(display, w, rootwindow,
			  focusX, focusY, &focusX, &focusY, &child);
	
    switch (a){
    case bigmoveup:
      focusY-=5;break;
    case bigmovedown:
      focusY+=5;break;
    case bigmoveleft:
      focusX-=5; break;
    case bigmoveright:
      focusX+=5; break;
    default:
      break;//can't happen
    }
    XMoveWindow(display, w, focusX, focusY);
  }
}

void Epist::moveWindow(Action a){
  Window rootwindow, w, child;
  int focusX, focusY, r;
  unsigned int focusW, focusH, focusBorder, focusDepth;

  XGetInputFocus(display, &w, &r);
  if (w && w != (int)PointerRoot){
    XGetGeometry(display, w, &rootwindow, &focusX,
		 &focusY, &focusW, &focusH, &focusBorder, &focusDepth);
    XTranslateCoordinates(display, w, rootwindow,
			  focusX, focusY, &focusX, &focusY, &child);
	
    switch (a){
    case moveup:
      --focusY;break;
    case movedown:
      ++focusY;break;
    case moveleft:
      --focusX; break;
    case moveright:
      ++focusX; break;
    default:
      break;//can't happen
    }
    XMoveWindow(display, w, focusX, focusY);
  }
  
}


void Epist::closeWindow(){
  Window w;
  int r;
  XGetInputFocus(display, &w, &r);
  
  XEvent e;
  e.xclient.type=ClientMessage;
  e.xclient.message_type=getAtom("WM_PROTOCOLS");
  e.xclient.format = 32;
  e.xclient.window = w;
  e.xclient.data.l[0]=getAtom("WM_DELETE_WINDOW");
  e.xclient.data.l[1]=CurrentTime;
  e.xclient.data.l[2]= e.xclient.data.l[3]=e.xclient.data.l[4]=0l;

  XSendEvent(display, w, False, NoEventMask, &e);
  
}
void Epist::switchDesktop(const int& i){
  XEvent e;
  e.xclient.type=ClientMessage;
  e.xclient.window=rootWindow;
  e.xclient.message_type = getAtom("_BLACKBOX_CHANGE_WORKSPACE");
  e.xclient.format =32;
  e.xclient.data.l[0]= static_cast<unsigned long int>(i);
  e.xclient.data.l[1]=0;

  XSendEvent(display, rootWindow, False, SubstructureRedirectMask, &e);
}

void Epist::shadeWindow(){//this method is almost all vanRijn's work. tnks!
  int r=RevertToPointerRoot;
  Window w;
  XGetInputFocus(display, &w, &r);
  if (w==(int)PointerRoot) return;
	
  XEvent e;
  e.xclient.type = ClientMessage;
  e.xclient.message_type = getAtom("_BLACKBOX_CHANGE_ATTRIBUTES");
  e.xclient.window = w;
  e.xclient.format = 32;
  e.xclient.data.l[0] = AttribShaded;
  e.xclient.data.l[2] = e.xclient.data.l[3] = e.xclient.data.l[4] = 0l;

  Atom atom_return;
  int foo;
  unsigned long ulfoo, nitems;
  BlackboxAttributes *net;
  if (XGetWindowProperty(display,
			 w,
			 getAtom("_BLACKBOX_ATTRIBUTES"),
			 0l,
			 PropBlackboxAttributesElements,
			 False,
			 getAtom("_BLACKBOX_ATTRIBUTES"),
			 &atom_return, 
			 &foo, 
			 &nitems, 
			 &ulfoo, (unsigned char **) &net)
      == Success && net && nitems  == PropBlackboxAttributesElements)
    {
      e.xclient.data.l[1] = net->attrib ^ AttribShaded;
      XFree((void *) net);
    } else
      e.xclient.data.l[1] = AttribShaded;
  
  XSendEvent(display, rootWindow, False, SubstructureRedirectMask, &e);
}

void Epist::maximize(bool vert, bool horiz){
  int r=RevertToPointerRoot;
  Window w;
  XGetInputFocus(display, &w, &r);
  if (w==(int)PointerRoot) return;
	
  XEvent e;
  e.xclient.type = ClientMessage;
  e.xclient.message_type = getAtom("_BLACKBOX_CHANGE_ATTRIBUTES");
  e.xclient.window = w;
  e.xclient.format = 32;
  e.xclient.data.l[0] = (horiz?AttribMaxHoriz:0)|(vert?AttribMaxVert:0);
  e.xclient.data.l[2] = e.xclient.data.l[3] = e.xclient.data.l[4] = 0l;

  Atom atom_return;
  int foo;
  unsigned long ulfoo, nitems;
  BlackboxAttributes *net;
  if (XGetWindowProperty(display,
			 w,
			 getAtom("_BLACKBOX_ATTRIBUTES"),
			 0l,
			 PropBlackboxAttributesElements,
			 False,
			 getAtom("_BLACKBOX_ATTRIBUTES"),
			 &atom_return, 
			 &foo, 
			 &nitems, 
			 &ulfoo, (unsigned char **) &net)
      == Success && net && nitems  == PropBlackboxAttributesElements)
    {
      e.xclient.data.l[1] = net->attrib ^ ((horiz?AttribMaxHoriz:0)|(vert?AttribMaxVert:0));
      XFree((void *) net);
    } else
      e.xclient.data.l[1] = (horiz?AttribMaxHoriz:0)|(vert?AttribMaxVert:0);
  
  XSendEvent(display, rootWindow, False, SubstructureRedirectMask, &e);
}


void Epist::shexec(char *command)const{
  int pid;
  extern char **environ;
  
  pid=fork();
  if(pid==-1){
    //cerr<<"can't frok!"<<endl;
    return;
  }
  if(pid==0){
    char *argv[] = {"sh", "-c", command, 0};
    execve("/bin/sh", argv, environ);
    exit(127);
  }
}

Atom& Epist::getAtom(const char *s){
  if (atoms.count(s)>0){
#   ifdef DEBUG
    cerr << "found in cache"<<endl;
#   endif
    return atoms[s];
  }else{
    //cerr << "interning"<<endl;
    atoms[s]=XInternAtom(display, s, False);
    return atoms[s];
  }
}
void Epist::clearCache(){
  atoms.clear();
}

#ifndef __blackbox_hh
int main(int argc, char *args[]){
#ifdef BACKGROUNDFORK
  int pid;
  pid=fork();
  if(pid==-1){
    cerr<<"can't frok!"<<endl;
  }
  if(pid==0){
    Epist epist(argc,args);
    epist.run();
  }
#else
  Epist epist(argc, args);
  epist.run();
#endif
}
#endif
