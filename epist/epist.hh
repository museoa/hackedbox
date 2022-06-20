//$Id: epist.hh,v 1.7 2002/04/17 02:57:32 woodblock Exp $
#ifndef __BaseDisplay_hh
#include <X11/Xlib.h>
#include <X11/Xproto.h>
#include <X11/keysym.h>
#include <unistd.h>
#include <string.h>

#define AttribShaded      (1l << 0)
#define AttribMaxHoriz    (1l << 1)
#define AttribMaxVert     (1l << 2)
#define AttribOmnipresent (1l << 3)
#define AttribWorkspace   (1l << 4)
#define AttribStack       (1l << 5)
#define AttribDecoration  (1l << 6)

typedef struct _blackbox_hints {
  unsigned long flags, attrib, workspace, stack, decoration;
} BlackboxHints;

typedef struct _blackbox_attributes {
  unsigned long flags, attrib, workspace, stack;
  int premax_x, premax_y;
  unsigned int premax_w, premax_h;
} BlackboxAttributes;

#define PropBlackboxHintsElements      (5)
#define PropBlackboxAttributesElements (8)
#endif //__BaseDisplay_hh

#define RCFILE ".hackedbox/keys"

enum Action{
  noaction=0,
  execute,
  iconify,
  raiseWin,
  lower,
  closewindow,
  desktop1,
  desktop2,
  desktop3,
  desktop4,
  desktop5,
  desktop6,
  desktop7,
  desktop8,
  desktop9,
  shade,
  moveup,
  movedown,
  moveleft,
  moveright,
  bigmoveup,
  bigmovedown,
  bigmoveleft,
  bigmoveright,
  cycleWindowForward,
  cycleWindowBackward,
  maximizeboth,
  maximizevertical,
  maximizehorizontal
};

struct streq{
  bool operator()(const char* s1, const char* s2)const{
	return strcmp(s1,s2) == 0;
  }
};

class Keydef{
  
  KeyCode keycode;
  const unsigned long modifier;
  const Action action;
  char *command;
public:
  Keydef(KeyCode k, const unsigned long m,const Action a);
  Keydef(KeyCode k, unsigned long m, Action a, char *s);
  Keydef(const Keydef &k);
  ~Keydef();
  friend ostream& operator<<(ostream&, const Keydef&);
  inline KeyCode getKeycode()const{return keycode;}
  inline unsigned long getModifier()const{return modifier;}
  inline char* getCommand()const{return command;}
  inline Action getAction()const{return action;}
};

class Epist{
private:
  unsigned int MetaMask, HyperMask, SuperMask, AltMask, ModeMask;
  unsigned int ScrollLockMask, NumLockMask;
  Display* display;
  Window rootWindow;
  list<Keydef> keys;
  hash_map<const char*, Atom, hash<const char*>, streq> atoms;
  char *rcfile;
public:
  inline unsigned long getModifer(const char* s){
	return translateModifier(s);
  }
  inline Action getAction(const char* s){
	if(strcasecmp(s, "exec")==0)
	  return execute;
	else if(strcasecmp(s, "iconify")==0)
	  return iconify;
	else if(strcasecmp(s, "raise")==0)
	  return raiseWin;
	else if(strcasecmp(s, "lower")==0)
	  return lower;
	else if(strcasecmp(s, "close")==0)
	  return closewindow;
	else if(strcasecmp(s, "desktop1")==0)
	  return desktop1;
	else if(strcasecmp(s, "desktop2")==0)
	  return desktop2;
	else if(strcasecmp(s, "desktop3")==0)
	  return desktop3;
	else if(strcasecmp(s, "desktop4")==0)
	  return desktop4;
	else if(strcasecmp(s, "desktop5")==0)
	  return desktop5;
	else if(strcasecmp(s, "desktop6")==0)
	  return desktop6;
	else if(strcasecmp(s, "desktop7")==0)
	  return desktop7;
	else if(strcasecmp(s, "desktop8")==0)
	  return desktop8;
	else if(strcasecmp(s, "desktop9")==0)
	  return desktop9;
	else if(strcasecmp(s, "shadewindow")==0)
	  return shade;
	else if(strcasecmp(s, "movedown")==0)
	  return movedown;
	else if(strcasecmp(s, "moveup")==0)
	  return moveup;
	else if(strcasecmp(s, "moveright")==0)
	  return moveright;
	else if(strcasecmp(s, "moveleft")==0)
	  return moveleft;
	else if(strcasecmp(s, "nextWindow")==0)
	  return cycleWindowForward;
	else if(strcasecmp(s, "prevWindow")==0)
	  return cycleWindowBackward;
	else if(strcasecmp(s, "maximize")==0)
	  return maximizeboth;
	else if(strcasecmp(s, "maximizevertical")==0)
	  return maximizevertical;
	else if(strcasecmp(s, "maximizehorizontal")==0)
	  return maximizehorizontal;
	else if(strcasecmp(s, "bigmovedown")==0)
	  return bigmovedown;
	else if(strcasecmp(s, "bigmoveup")==0)
	  return bigmoveup;
	else if(strcasecmp(s, "bigmoveright")==0)
	  return bigmoveright;
	else if(strcasecmp(s, "bigmoveleft")==0)
	  return bigmoveleft;


	else
	  return noaction;
  }
  void readRcfile();
  Epist(int argc, char**argv);
  ~Epist();
  inline void twiddleModifiers(void){
	x_reset_modifier_mapping(display);
  }
  void restart();
  void activate();
  void run();
  void process(XEvent* e);
  void shexec(char *command)const;
  Atom& getAtom(const char *a);
  void switchDesktop(const int& i);
  void shadeWindow();
  void closeWindow();
  void moveWindow(Action a);
  void bigMoveWindow(Action a);
  void clearCache();
  void cycleWindow(const Action a);
  void maximize(bool vert, bool horiz);
  //Modifiers
  char* index_to_name(int indice);
  void x_reset_modifier_mapping(Display * display);
  int translateModifier(const char *key);
  void getLockMasks(unsigned int &, unsigned int &);
};
void sighandler(int);
void quit();
