// blackbox.cc for Hackedbox
// Copyright (c) 2002 Larry Owen <larry@scrudgeware.org>
// Copyright (c) 2001 Sean 'Shaleh' Perry <shaleh@debian.org>
// Copyright (c) 1997 - 2000 Brad Hughes (bhughes@tcac.net)
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.

// stupid macros needed to access some functions in version 2 of the GNU C
// library
#ifndef   _GNU_SOURCE
#define   _GNU_SOURCE
#endif // _GNU_SOURCE

#ifdef    HAVE_CONFIG_H
#  include "../config.h"
#endif // HAVE_CONFIG_H

#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/Xresource.h>
#include <X11/Xatom.h>
#include <X11/keysym.h>

#ifdef    SHAPE
#include <X11/extensions/shape.h>
#endif // SHAPE

#include "i18n.hh"
#include "blackbox.hh"
#include "Basemenu.hh"
#include "Clientmenu.hh"
#include "Rootmenu.hh"
#include "Screen.hh"
#include "Window.hh"
#include "Workspace.hh"
#include "Workspacemenu.hh"

#ifdef    HAVE_STDIO_H
#  include <stdio.h>
#endif // HAVE_STDIO_H

#ifdef    STDC_HEADERS
#  include <stdlib.h>
#  include <string.h>
#endif // STDC_HEADERS

#ifdef    HAVE_UNISTD_H
#  include <sys/types.h>
#  include <unistd.h>
#endif // HAVE_UNISTD_H

#ifdef    HAVE_SYS_PARAM_H
#  include <sys/param.h>
#endif // HAVE_SYS_PARAM_H

#ifndef   MAXPATHLEN
#define   MAXPATHLEN 255
#endif // MAXPATHLEN

#ifdef    HAVE_SYS_SELECT_H
#  include <sys/select.h>
#endif // HAVE_SYS_SELECT_H

#ifdef    HAVE_SIGNAL_H
#  include <signal.h>
#endif // HAVE_SIGNAL_H

#ifdef    HAVE_SYS_SIGNAL_H
#  include <sys/signal.h>
#endif // HAVE_SYS_SIGNAL_H

#ifdef    HAVE_SYS_STAT_H
#  include <sys/types.h>
#  include <sys/stat.h>
#endif // HAVE_SYS_STAT_H

#ifdef    TIME_WITH_SYS_TIME
#  include <sys/time.h>
#  include <time.h>
#else // !TIME_WITH_SYS_TIME
#  ifdef    HAVE_SYS_TIME_H
#    include <sys/time.h>
#  else // !HAVE_SYS_TIME_H
#    include <time.h>
#  endif // HAVE_SYS_TIME_H
#endif // TIME_WITH_SYS_TIME

#ifdef    HAVE_LIBGEN_H
#  include <libgen.h>
#endif // HAVE_LIBGEN_H

#ifndef   HAVE_BASENAME
static inline char *basename (char *s) {
  char *save = s;

  while (*s) if (*s++ == '/') save = s;

  return save;
}
#endif // HAVE_BASENAME


// X event scanner for enter/leave notifies - adapted from twm
typedef struct scanargs {
  Window w;
  Bool leave, inferior, enter;
} scanargs;

static Bool queueScanner(Display *, XEvent *e, char *args) {
  if ((e->type == LeaveNotify) &&
      (e->xcrossing.window == ((scanargs *) args)->w) &&
      (e->xcrossing.mode == NotifyNormal)) {
    ((scanargs *) args)->leave = True;
    ((scanargs *) args)->inferior = (e->xcrossing.detail == NotifyInferior);
  } else if ((e->type == EnterNotify) &&
             (e->xcrossing.mode == NotifyUngrab)) {
    ((scanargs *) args)->enter = True;
  }

  return False;
}

Blackbox *blackbox;

Blackbox::Blackbox(int m_argc, char **m_argv, char *dpy_name, char *rc)
  : BaseDisplay(m_argv[0], dpy_name) {
  grab();

  if (! XSupportsLocale())
    fprintf(stderr, "X server does not support locale\n");

  if (XSetLocaleModifiers("") == NULL)
    fprintf(stderr, "cannot set locale modifiers\n");

  ::blackbox = this;
  argc = m_argc;
  argv = m_argv;
  rc_file = rc;

  no_focus = False;

  resource.menu_file = resource.style_file = (char *) 0;
  resource.auto_raise_delay.tv_sec = resource.auto_raise_delay.tv_usec = 0;

  focused_window = masked_window = (BlackboxWindow *) 0;
  masked = None;

  windowSearchList = new LinkedList<WindowSearch>;
  menuSearchList = new LinkedList<MenuSearch>;

  groupSearchList = new LinkedList<WindowSearch>;

  menuTimestamps = new LinkedList<MenuTimestamp>;

  XrmInitialize();
  load_rc();

#ifdef    HAVE_GETPID
  blackbox_pid = XInternAtom(getXDisplay(), "_BLACKBOX_PID", False);
#endif // HAVE_GETPID

  screenList = new LinkedList<BScreen>;
  for (int i = 0; i < getNumberOfScreens(); i++) {
    BScreen *screen = new BScreen(this, i);

    if (! screen->isScreenManaged()) {
      delete screen;
      continue;
    }

    screenList->insert(screen);
  }

  if (! screenList->count()) {
    fprintf(stderr,
	    i18n->getMessage(blackboxSet, blackboxNoManagableScreens,
	       "Blackbox::Blackbox: no managable screens found, aborting.\n"));
    ::exit(3);
  }

  XSynchronize(getXDisplay(), False);
  XSync(getXDisplay(), False);

  reconfigure_wait = reread_menu_wait = False;

  timer = new BTimer(this, this);
  timer->setTimeout(0);
  timer->fireOnce(True);

  ungrab();
}


Blackbox::~Blackbox(void) {
  while (screenList->count())
    delete screenList->remove(0);

  while (menuTimestamps->count()) {
    MenuTimestamp *ts = menuTimestamps->remove(0);

    if (ts->filename)
      delete [] ts->filename;

    delete ts;
  }

  if (resource.menu_file)
    delete [] resource.menu_file;

  if (resource.style_file)
    delete [] resource.style_file;

  delete timer;

  delete screenList;
  delete menuTimestamps;

  delete windowSearchList;
  delete menuSearchList;
  delete groupSearchList;

}


void Blackbox::process_event(XEvent *e) {
  if ((masked == e->xany.window) && masked_window &&
      (e->type == MotionNotify)) {
    last_time = e->xmotion.time;
    masked_window->motionNotifyEvent(&e->xmotion);

    return;
  }

  switch (e->type) {
  case ButtonPress: {
    // strip the lock key modifiers
    e->xbutton.state &= ~(NumLockMask | ScrollLockMask | LockMask);

    last_time = e->xbutton.time;

    BlackboxWindow *win = (BlackboxWindow *) 0;
    Basemenu *menu = (Basemenu *) 0;

    if ((win = searchWindow(e->xbutton.window))) {
      win->buttonPressEvent(&e->xbutton);

      if (e->xbutton.button == 1)
	win->installColormap(True);
    } else if ((menu = searchMenu(e->xbutton.window))) {
      menu->buttonPressEvent(&e->xbutton);
    } else {
      LinkedListIterator<BScreen> it(screenList);
      BScreen *screen = it.current();
      for (; screen; it++, screen = it.current()) {
	if (e->xbutton.window == screen->getRootWindow()) {
	  if (e->xbutton.button == 1) {
            if (! screen->isRootColormapInstalled())
	      screen->getImageControl()->installRootColormap();

	    if (screen->getWorkspacemenu()->isVisible())
	      screen->getWorkspacemenu()->hide();

            if (screen->getRootmenu()->isVisible())
              screen->getRootmenu()->hide();
          } else if (e->xbutton.button == 2) {
	    int mx = e->xbutton.x_root -
	      (screen->getWorkspacemenu()->getWidth() / 2);
	    int my = e->xbutton.y_root -
	      (screen->getWorkspacemenu()->getTitleHeight() / 2);

	    if (mx < 0) mx = 0;
	    if (my < 0) my = 0;

	    if (mx + screen->getWorkspacemenu()->getWidth() >
		screen->getWidth())
	      mx = screen->getWidth() -
		screen->getWorkspacemenu()->getWidth() -
		screen->getBorderWidth();

	    if (my + screen->getWorkspacemenu()->getHeight() >
		screen->getHeight())
	      my = screen->getHeight() -
		screen->getWorkspacemenu()->getHeight() -
		screen->getBorderWidth();

	    screen->getWorkspacemenu()->move(mx, my);

	    if (! screen->getWorkspacemenu()->isVisible()) {
	      screen->getWorkspacemenu()->removeParent();
	      screen->getWorkspacemenu()->show();
	    }
	  } else if (e->xbutton.button == 3) {
	    int mx = e->xbutton.x_root -
	      (screen->getRootmenu()->getWidth() / 2);
	    int my = e->xbutton.y_root -
	      (screen->getRootmenu()->getTitleHeight() / 2);

	    if (mx < 0) mx = 0;
	    if (my < 0) my = 0;

	    if (mx + screen->getRootmenu()->getWidth() > screen->getWidth())
	      mx = screen->getWidth() -
		screen->getRootmenu()->getWidth() -
		screen->getBorderWidth();

	    if (my + screen->getRootmenu()->getHeight() > screen->getHeight())
		my = screen->getHeight() -
		  screen->getRootmenu()->getHeight() -
		  screen->getBorderWidth();

	    screen->getRootmenu()->move(mx, my);

	    if (! screen->getRootmenu()->isVisible()) {
	      checkMenu();
	      screen->getRootmenu()->show();
	    }
	  }
	}
      }
    }

    break;
  }

  case ButtonRelease: {
    // strip the lock key modifiers
    e->xbutton.state &= ~(NumLockMask | ScrollLockMask | LockMask);

    last_time = e->xbutton.time;

    BlackboxWindow *win = (BlackboxWindow *) 0;
    Basemenu *menu = (Basemenu *) 0;

    if ((win = searchWindow(e->xbutton.window)))
      win->buttonReleaseEvent(&e->xbutton);
    else if ((menu = searchMenu(e->xbutton.window)))
      menu->buttonReleaseEvent(&e->xbutton);

    break;
  }

  case ConfigureRequest: {
    BlackboxWindow *win = (BlackboxWindow *) 0;

    if ((win = searchWindow(e->xconfigurerequest.window))) {
      win->configureRequestEvent(&e->xconfigurerequest);
    } else {
      grab();

      if (validateWindow(e->xconfigurerequest.window)) {
	XWindowChanges xwc;

	xwc.x = e->xconfigurerequest.x;
	xwc.y = e->xconfigurerequest.y;
	xwc.width = e->xconfigurerequest.width;
	xwc.height = e->xconfigurerequest.height;
	xwc.border_width = e->xconfigurerequest.border_width;
	xwc.sibling = e->xconfigurerequest.above;
	xwc.stack_mode = e->xconfigurerequest.detail;

	XConfigureWindow(getXDisplay(), e->xconfigurerequest.window,
			 e->xconfigurerequest.value_mask, &xwc);
      }

      ungrab();
    }

    break;
  }

  case MapRequest: {
#ifdef    DEBUG
    fprintf(stderr,
	    i18n->getMessage(blackboxSet, blackboxMapRequest,
		 "Blackbox::process_event(): MapRequest for 0x%lx\n"),
	    e->xmaprequest.window);
#endif // DEBUG

    BlackboxWindow *win = searchWindow(e->xmaprequest.window);

    if (! win)
      win = new BlackboxWindow(this, e->xmaprequest.window);

    if ((win = searchWindow(e->xmaprequest.window)))
      win->mapRequestEvent(&e->xmaprequest);

    break;
  }

  case MapNotify: {
    BlackboxWindow *win = searchWindow(e->xmap.window);

    if (win)
      win->mapNotifyEvent(&e->xmap);

      break;
  }

  case UnmapNotify: {
    BlackboxWindow *win = (BlackboxWindow *) 0;

    if ((win = searchWindow(e->xunmap.window))) {
      win->unmapNotifyEvent(&e->xunmap);
      if (focused_window == win)
	focused_window = (BlackboxWindow *) 0;
    }

    break;
  }

  case DestroyNotify: {
    BlackboxWindow *win = (BlackboxWindow *) 0;

    if ((win = searchWindow(e->xdestroywindow.window))) {
      win->destroyNotifyEvent(&e->xdestroywindow);
      if (focused_window == win)
	focused_window = (BlackboxWindow *) 0;
    }

    break;
  }

  case MotionNotify: {
    // strip the lock key modifiers
    e->xbutton.state &= ~(NumLockMask | ScrollLockMask | LockMask);
    
    last_time = e->xmotion.time;

    BlackboxWindow *win = (BlackboxWindow *) 0;
    Basemenu *menu = (Basemenu *) 0;

    if ((win = searchWindow(e->xmotion.window)))
      win->motionNotifyEvent(&e->xmotion);
    else if ((menu = searchMenu(e->xmotion.window)))
      menu->motionNotifyEvent(&e->xmotion);

    break;
  }

  case PropertyNotify: {
    last_time = e->xproperty.time;

    if (e->xproperty.state != PropertyDelete) {
      BlackboxWindow *win = searchWindow(e->xproperty.window);

      if (win)
	win->propertyNotifyEvent(e->xproperty.atom);
    }

    break;
  }

  case EnterNotify: {
    last_time = e->xcrossing.time;

    BScreen *screen = (BScreen *) 0;
    BlackboxWindow *win = (BlackboxWindow *) 0;
    Basemenu *menu = (Basemenu *) 0;

    if (e->xcrossing.mode == NotifyGrab) break;

    XEvent dummy;
    scanargs sa;
    sa.w = e->xcrossing.window;
    sa.enter = sa.leave = False;
    XCheckIfEvent(getXDisplay(), &dummy, queueScanner, (char *) &sa);

    if ((e->xcrossing.window == e->xcrossing.root) &&
	(screen = searchScreen(e->xcrossing.window))) {
      screen->getImageControl()->installRootColormap();
    } else if ((win = searchWindow(e->xcrossing.window))) {
      if (win->getScreen()->isSloppyFocus() &&
	  (! win->isFocused()) && (! no_focus)) {
	grab();

        if (((! sa.leave) || sa.inferior) && win->isVisible() &&
            win->setInputFocus())
	  win->installColormap(True);

        ungrab();
      }
    } else if ((menu = searchMenu(e->xcrossing.window))) {
      menu->enterNotifyEvent(&e->xcrossing);
    }
    break;
  }

  case LeaveNotify: {
    last_time = e->xcrossing.time;

    BlackboxWindow *win = (BlackboxWindow *) 0;
    Basemenu *menu = (Basemenu *) 0;

	if ((menu = searchMenu(e->xcrossing.window)))
      menu->leaveNotifyEvent(&e->xcrossing);
    else if ((win = searchWindow(e->xcrossing.window)))
      win->installColormap(False);
    break;
  }

  case Expose: {
    BlackboxWindow *win = (BlackboxWindow *) 0;
    Basemenu *menu = (Basemenu *) 0;

    if ((win = searchWindow(e->xexpose.window)))
      win->exposeEvent(&e->xexpose);
    else if ((menu = searchMenu(e->xexpose.window)))
      menu->exposeEvent(&e->xexpose);

    break;
  }

  case ColormapNotify: {
    BScreen *screen = searchScreen(e->xcolormap.window);

    if (screen)
      screen->setRootColormapInstalled((e->xcolormap.state ==
					ColormapInstalled) ? True : False);

    break;
  }

  case FocusIn: {
    if (e->xfocus.mode == NotifyUngrab || e->xfocus.detail == NotifyPointer)
      break;

    BlackboxWindow *win = searchWindow(e->xfocus.window);
    if (win && ! win->isFocused())
      setFocusedWindow(win);

    break;
  }

  case FocusOut:
    break;

  case ClientMessage: {
    if (e->xclient.format == 32) {
      if (e->xclient.message_type == getWMChangeStateAtom()) {
        BlackboxWindow *win = searchWindow(e->xclient.window);
        if (! win || ! win->validateClient()) return;

        if (e->xclient.data.l[0] == IconicState)
	  win->iconify();
        if (e->xclient.data.l[0] == NormalState)
          win->deiconify();
      } else if (e->xclient.message_type == getBlackboxChangeWorkspaceAtom()) {
	BScreen *screen = searchScreen(e->xclient.window);

	if (screen && e->xclient.data.l[0] >= 0 &&
	    e->xclient.data.l[0] < screen->getCount())
	  screen->changeWorkspaceID(e->xclient.data.l[0]);
      } else if (e->xclient.message_type == getBlackboxChangeWindowFocusAtom()) {
	BlackboxWindow *win = searchWindow(e->xclient.window);

	if (win && win->isVisible() && win->setInputFocus())
          win->installColormap(True);
      } else if (e->xclient.message_type == getBlackboxCycleWindowFocusAtom()) {
        BScreen *screen = searchScreen(e->xclient.window);

        if (screen) {
          if (! e->xclient.data.l[0])
            screen->prevFocus();
          else
            screen->nextFocus();
	}
      } else if (e->xclient.message_type == getBlackboxChangeAttributesAtom()) {
	BlackboxWindow *win = searchWindow(e->xclient.window);

	if (win && win->validateClient()) {
	  BlackboxHints net;
	  net.flags = e->xclient.data.l[0];
	  net.attrib = e->xclient.data.l[1];
	  net.workspace = e->xclient.data.l[2];
	  net.stack = e->xclient.data.l[3];
	  net.decoration = e->xclient.data.l[4];

	  win->changeBlackboxHints(&net);
	}
      }
    }

    break;
  }


  default: {
#ifdef    SHAPE
    if (e->type == getShapeEventBase()) {
      XShapeEvent *shape_event = (XShapeEvent *) e;
      BlackboxWindow *win = (BlackboxWindow *) 0;

      if ((win = searchWindow(e->xany.window)) ||
	  (shape_event->kind != ShapeBounding))
	win->shapeEvent(shape_event);
    }
#endif // SHAPE

  }
  } // switch
}


Bool Blackbox::handleSignal(int sig) {
  switch (sig) {
  case SIGHUP:
    reconfigure();
    break;

  case SIGUSR1:
    reload_rc();
    break;

  case SIGUSR2:
    rereadMenu();
    break;

  case SIGPIPE:
  case SIGSEGV:
  case SIGFPE:
  case SIGINT:
  case SIGTERM:
    shutdown();

  default:
    return False;
  }

  return True;
}


BScreen *Blackbox::searchScreen(Window window) {
  LinkedListIterator<BScreen> it(screenList);

  for (BScreen *curr = it.current(); curr; it++, curr = it.current()) {
    if (curr->getRootWindow() == window) {
      return curr;
    }
  }

  return (BScreen *) 0;
}


BlackboxWindow *Blackbox::searchWindow(Window window) {
  LinkedListIterator<WindowSearch> it(windowSearchList);

  for (WindowSearch *tmp = it.current(); tmp; it++, tmp = it.current()) {
      if (tmp->getWindow() == window) {
	return tmp->getData();
      }
  }

  return (BlackboxWindow *) 0;
}


BlackboxWindow *Blackbox::searchGroup(Window window, BlackboxWindow *win) {
  BlackboxWindow *w = (BlackboxWindow *) 0;
  LinkedListIterator<WindowSearch> it(groupSearchList);

  for (WindowSearch *tmp = it.current(); tmp; it++, tmp = it.current()) {
    if (tmp->getWindow() == window) {
      w = tmp->getData();
      if (w->getClientWindow() != win->getClientWindow())
        return win;
    }
  }

  return (BlackboxWindow *) 0;
}


Basemenu *Blackbox::searchMenu(Window window) {
  LinkedListIterator<MenuSearch> it(menuSearchList);

  for (MenuSearch *tmp = it.current(); tmp; it++, tmp = it.current()) {
    if (tmp->getWindow() == window)
      return tmp->getData();
  }

  return (Basemenu *) 0;
}

void Blackbox::saveWindowSearch(Window window, BlackboxWindow *data) {
  windowSearchList->insert(new WindowSearch(window, data));
}


void Blackbox::saveGroupSearch(Window window, BlackboxWindow *data) {
  groupSearchList->insert(new WindowSearch(window, data));
}


void Blackbox::saveMenuSearch(Window window, Basemenu *data) {
  menuSearchList->insert(new MenuSearch(window, data));
}

void Blackbox::removeWindowSearch(Window window) {
  LinkedListIterator<WindowSearch> it(windowSearchList);
  for (WindowSearch *tmp = it.current(); tmp; it++, tmp = it.current()) {
    if (tmp->getWindow() == window) {
      windowSearchList->remove(tmp);
      delete tmp;
      break;
    }
  }
}


void Blackbox::removeGroupSearch(Window window) {
  LinkedListIterator<WindowSearch> it(groupSearchList);
  for (WindowSearch *tmp = it.current(); tmp; it++, tmp = it.current()) {
    if (tmp->getWindow() == window) {
      groupSearchList->remove(tmp);
      delete tmp;
      break;
    }
  }
}


void Blackbox::removeMenuSearch(Window window) {
  LinkedListIterator<MenuSearch> it(menuSearchList);
  for (MenuSearch *tmp = it.current(); tmp; it++, tmp = it.current()) {
    if (tmp->getWindow() == window) {
      menuSearchList->remove(tmp);
      delete tmp;
      break;
    }
  }
}

void Blackbox::restart(const char *prog) {
  shutdown();

  if (prog) {
    execlp(prog, prog, NULL);
    perror(prog);
  }

  // fall back in case the above execlp doesn't work
  execvp(argv[0], argv);
  execvp(basename(argv[0]), argv);
}


void Blackbox::shutdown(void) {
  BaseDisplay::shutdown();

  XSetInputFocus(getXDisplay(), PointerRoot, None, CurrentTime);

  LinkedListIterator<BScreen> it(screenList);
  for (BScreen *s = it.current(); s; it++, s = it.current())
    s->shutdown();

  XSync(getXDisplay(), False);

  save_rc();
}


void Blackbox::save_rc(void) {
  XrmDatabase new_blackboxrc = (XrmDatabase) 0;
  char rc_string[1024];

  char *dbfile = (char *) 0;

  if (! rc_file) {
    char *homedir = getenv("HOME");

    dbfile = new char[strlen(homedir) + strlen("/.hackedboxrc") + 1];
    sprintf(dbfile, "%s/.hackedboxrc", homedir);
  } else {
    dbfile = bstrdup(rc_file);
  }

  load_rc();

  sprintf(rc_string, "session.menuFile:  %s", resource.menu_file);
  XrmPutLineResource(&new_blackboxrc, rc_string);

  sprintf(rc_string, "session.colorsPerChannel:  %d",
          resource.colors_per_channel);
  XrmPutLineResource(&new_blackboxrc, rc_string);

  sprintf(rc_string, "session.doubleClickInterval:  %lu",
          resource.double_click_interval);
  XrmPutLineResource(&new_blackboxrc, rc_string);

  sprintf(rc_string, "session.autoRaiseDelay:  %lu",
          ((resource.auto_raise_delay.tv_sec * 1000) +
           (resource.auto_raise_delay.tv_usec / 1000)));
  XrmPutLineResource(&new_blackboxrc, rc_string);

  sprintf(rc_string, "session.cacheLife: %lu", resource.cache_life / 60000);
  XrmPutLineResource(&new_blackboxrc, rc_string);

  sprintf(rc_string, "session.cacheMax: %lu", resource.cache_max);
  XrmPutLineResource(&new_blackboxrc, rc_string);

  LinkedListIterator<BScreen> it(screenList);
  for (BScreen *screen = it.current(); screen; it++, screen = it.current()) {
    int screen_number = screen->getScreenNumber();

    sprintf(rc_string, "session.opaqueMove: %s",
	    ((screen->doOpaqueMove()) ? "True" : "False"));
    XrmPutLineResource(&new_blackboxrc, rc_string);

    sprintf(rc_string, "session.imageDither: %s",
	    ((screen->getImageControl()->doDither()) ? "True" : "False"));
    XrmPutLineResource(&new_blackboxrc, rc_string);

    sprintf(rc_string, "session.screen%d.fullMaximization: %s", screen_number,
	    ((screen->doFullMax()) ? "True" : "False"));
    XrmPutLineResource(&new_blackboxrc, rc_string);

    sprintf(rc_string, "session.screen%d.focusNewWindows: %s", screen_number,
            ((screen->doFocusNew()) ? "True" : "False"));
    XrmPutLineResource(&new_blackboxrc, rc_string);

    sprintf(rc_string, "session.screen%d.focusLastWindow: %s", screen_number,
	    ((screen->doFocusLast()) ? "True" : "False"));
    XrmPutLineResource(&new_blackboxrc, rc_string);

    sprintf(rc_string, "session.screen%d.rowPlacementDirection: %s",
	    screen_number,
	    ((screen->getRowPlacementDirection() == BScreen::LeftRight) ?
	     "LeftToRight" : "RightToLeft"));
    XrmPutLineResource(&new_blackboxrc, rc_string);

    sprintf(rc_string, "session.screen%d.colPlacementDirection: %s",
	    screen_number,
	    ((screen->getColPlacementDirection() == BScreen::TopBottom) ?
	     "TopToBottom" : "BottomToTop"));
    XrmPutLineResource(&new_blackboxrc, rc_string);

    char *placement = (char *) 0;
    switch (screen->getPlacementPolicy()) {
    case BScreen::CascadePlacement:
      placement = "CascadePlacement";
      break;

    case BScreen::ColSmartPlacement:
      placement = "ColSmartPlacement";
      break;

    case BScreen::RowSmartPlacement:
    default:
      placement = "RowSmartPlacement";
      break;
    }
    sprintf(rc_string, "session.screen%d.windowPlacement:  %s", screen_number,
	    placement);
    XrmPutLineResource(&new_blackboxrc, rc_string);

    sprintf(rc_string, "session.screen%d.focusModel:  %s", screen_number,
	    ((screen->isSloppyFocus()) ?
	     ((screen->doAutoRaise()) ? "AutoRaiseSloppyFocus" :
	      "SloppyFocus") :
	     "ClickToFocus"));
    XrmPutLineResource(&new_blackboxrc, rc_string);

    sprintf(rc_string, "session.screen%d.workspaces:  %d", screen_number,
	    screen->getCount());
    XrmPutLineResource(&new_blackboxrc, rc_string);

    load_rc(screen);

    // these are static, but may not be saved in the users .blackboxrc,
    // writing these resources will allow the user to edit them at a later
    // time... but loading the defaults before saving allows us to rewrite the
    // users changes...

#ifdef    HAVE_STRFTIME
    sprintf(rc_string, "session.screen%d.strftimeFormat: %s", screen_number,
	    screen->getStrftimeFormat());
    XrmPutLineResource(&new_blackboxrc, rc_string);
#else // !HAVE_STRFTIME
    sprintf(rc_string, "session.screen%d.dateFormat:  %s", screen_number,
	    ((screen->getDateFormat() == B_EuropeanDate) ?
	     "European" : "American"));
    XrmPutLineResource(&new_blackboxrc, rc_string);

    sprintf(rc_string, "session.screen%d.clockFormat:  %d", screen_number,
	    ((screen->isClock24Hour()) ? 24 : 12));
    XrmPutLineResource(&new_blackboxrc, rc_string);
#endif // HAVE_STRFTIME

    sprintf(rc_string, "session.screen%d.edgeSnapThreshold: %d", screen_number,
	    screen->getEdgeSnapThreshold());
    XrmPutLineResource(&new_blackboxrc, rc_string);

    // write out the users workspace names
    int i, len = 0;
    for (i = 0; i < screen->getCount(); i++)
      len += strlen((screen->getWorkspace(i)->getName()) ?
		    screen->getWorkspace(i)->getName() : "Null") + 1;

    char *resource_string = new char[len + 1024],
      *save_string = new char[len], *save_string_pos = save_string,
      *name_string_pos;
    if (save_string) {
      for (i = 0; i < screen->getCount(); i++) {
	len = strlen((screen->getWorkspace(i)->getName()) ?
		     screen->getWorkspace(i)->getName() : "Null") + 1;
	name_string_pos =
	  (char *) ((screen->getWorkspace(i)->getName()) ?
		    screen->getWorkspace(i)->getName() : "Null");

	while (--len) *(save_string_pos++) = *(name_string_pos++);
	*(save_string_pos++) = ',';
      }
    }

    *(--save_string_pos) = '\0';

    sprintf(resource_string, "session.screen%d.workspaceNames:  %s",
	    screen_number, save_string);
    XrmPutLineResource(&new_blackboxrc, resource_string);

    delete [] resource_string;
    delete [] save_string;
  }

  XrmDatabase old_blackboxrc = XrmGetFileDatabase(dbfile);

  XrmMergeDatabases(new_blackboxrc, &old_blackboxrc);
  XrmPutFileDatabase(old_blackboxrc, dbfile);
  XrmDestroyDatabase(old_blackboxrc);

  delete [] dbfile;
}


void Blackbox::load_rc(void) {
  XrmDatabase database = (XrmDatabase) 0;

  char *dbfile = (char *) 0;

  if (! rc_file) {
    char *homedir = getenv("HOME");

    dbfile = new char[strlen(homedir) + strlen("/.hackedboxrc") + 1];
    sprintf(dbfile, "%s/.hackedboxrc", homedir);
  } else {
    dbfile = bstrdup(rc_file);
  }

  database = XrmGetFileDatabase(dbfile);

  delete [] dbfile;

  XrmValue value;
  char *value_type;

  if (resource.menu_file)
    delete [] resource.menu_file;

  if (XrmGetResource(database, "session.menuFile", "Session.MenuFile", &value_type, &value))
    resource.menu_file = bstrdup(value.addr);
  else
    resource.menu_file = bstrdup(DEFAULTMENU);

  if (XrmGetResource(database, "session.colorsPerChannel", "Session.ColorsPerChannel", &value_type, &value)) {
    if (sscanf(value.addr, "%d", &resource.colors_per_channel) != 1) {
      resource.colors_per_channel = 4;
    } else {
      if (resource.colors_per_channel < 2) resource.colors_per_channel = 2;
      if (resource.colors_per_channel > 6) resource.colors_per_channel = 6;
    }
  } else {
    resource.colors_per_channel = 4;
  }

  if (resource.style_file)
    delete [] resource.style_file;

  if (XrmGetResource(database, "session.styleFile", "Session.StyleFile", &value_type, &value))
    resource.style_file = bstrdup(value.addr);
  else
    resource.style_file = bstrdup(DEFAULTSTYLE);

  if (XrmGetResource(database, "session.doubleClickInterval",
		     "Session.DoubleClickInterval", &value_type, &value)) {
    if (sscanf(value.addr, "%lu", &resource.double_click_interval) != 1)
      resource.double_click_interval = 250;
  } else {
    resource.double_click_interval = 250;
  }

  if (XrmGetResource(database, "session.autoRaiseDelay",
                     "Session.AutoRaiseDelay", &value_type, &value)) {
    if (sscanf(value.addr, "%ld", &resource.auto_raise_delay.tv_usec) != 1)
      resource.auto_raise_delay.tv_usec = 400;
  } else {
    resource.auto_raise_delay.tv_usec = 400;
  }

  resource.auto_raise_delay.tv_sec = resource.auto_raise_delay.tv_usec / 1000;
  resource.auto_raise_delay.tv_usec -=
    (resource.auto_raise_delay.tv_sec * 1000);
  resource.auto_raise_delay.tv_usec *= 1000;

  if (XrmGetResource(database, "session.cacheLife", "Session.CacheLife",
                     &value_type, &value)) {
    if (sscanf(value.addr, "%lu", &resource.cache_life) != 1)
      resource.cache_life = 5l;
  } else {
    resource.cache_life = 5l;
  }

  resource.cache_life *= 60000;

  if (XrmGetResource(database, "session.cacheMax", "Session.CacheMax",
                     &value_type, &value)) {
    if (sscanf(value.addr, "%lu", &resource.cache_max) != 1)
      resource.cache_max = 200;
  } else {
    resource.cache_max = 200;
  }
}


void Blackbox::load_rc(BScreen *screen) {
  XrmDatabase database = (XrmDatabase) 0;

  char *dbfile = (char *) 0;

  if (! rc_file) {
    char *homedir = getenv("HOME");
    
    dbfile = new char[strlen(homedir) + strlen("/.hackedboxrc") + 1];
    sprintf(dbfile, "%s/.hackedboxrc", homedir);
  } else {
    dbfile = bstrdup(rc_file);
  }

  database = XrmGetFileDatabase(dbfile);

  delete [] dbfile;

  XrmValue value;
  char *value_type, name_lookup[1024], class_lookup[1024];
  int screen_number = screen->getScreenNumber();

  sprintf(name_lookup,  "session.screen%d.fullMaximization", screen_number);
  sprintf(class_lookup, "Session.Screen%d.FullMaximization", screen_number);
  if (XrmGetResource(database, name_lookup, class_lookup, &value_type,
                     &value)) {
    if (! strncasecmp(value.addr, "true", value.size))
      screen->saveFullMax(True);
    else
      screen->saveFullMax(False);
  } else {
    screen->saveFullMax(False);
  }
  sprintf(name_lookup,  "session.screen%d.focusNewWindows", screen_number);
  sprintf(class_lookup, "Session.Screen%d.FocusNewWindows", screen_number);
  if (XrmGetResource(database, name_lookup, class_lookup, &value_type,
                     &value)) {
    if (! strncasecmp(value.addr, "true", value.size))
      screen->saveFocusNew(True);
    else
      screen->saveFocusNew(False);
  } else {
    screen->saveFocusNew(False);
  }
  sprintf(name_lookup,  "session.screen%d.focusLastWindow", screen_number);
  sprintf(class_lookup, "Session.Screen%d.focusLastWindow", screen_number);
  if (XrmGetResource(database, name_lookup, class_lookup, &value_type,
		     &value)) {
    if (! strncasecmp(value.addr, "true", value.size))
      screen->saveFocusLast(True);
    else
      screen->saveFocusLast(False);
  } else {
    screen->saveFocusLast(False);
  }
  sprintf(name_lookup,  "session.screen%d.rowPlacementDirection",
	  screen_number);
  sprintf(class_lookup, "Session.Screen%d.RowPlacementDirection",
	  screen_number);
  if (XrmGetResource(database, name_lookup, class_lookup, &value_type,
		     &value)) {
    if (! strncasecmp(value.addr, "righttoleft", value.size))
      screen->saveRowPlacementDirection(BScreen::RightLeft);
    else
      screen->saveRowPlacementDirection(BScreen::LeftRight);
  } else {
    screen->saveRowPlacementDirection(BScreen::LeftRight);
  }
  sprintf(name_lookup,  "session.screen%d.colPlacementDirection",
	  screen_number);
  sprintf(class_lookup, "Session.Screen%d.ColPlacementDirection",
	  screen_number);
  if (XrmGetResource(database, name_lookup, class_lookup, &value_type,
		     &value)) {
    if (! strncasecmp(value.addr, "bottomtotop", value.size))
      screen->saveColPlacementDirection(BScreen::BottomTop);
    else
      screen->saveColPlacementDirection(BScreen::TopBottom);
  } else {
    screen->saveColPlacementDirection(BScreen::TopBottom);
  }
  sprintf(name_lookup,  "session.screen%d.workspaces", screen_number);
  sprintf(class_lookup, "Session.Screen%d.Workspaces", screen_number);
  if (XrmGetResource(database, name_lookup, class_lookup, &value_type,
		     &value)) {
    int i;
    if (sscanf(value.addr, "%d", &i) != 1) i = 1;
    screen->saveWorkspaces(i);
  } else {
    screen->saveWorkspaces(1);
  }

  screen->removeWorkspaceNames();

  sprintf(name_lookup,  "session.screen%d.workspaceNames", screen_number);
  sprintf(class_lookup, "Session.Screen%d.WorkspaceNames", screen_number);
  if (XrmGetResource(database, name_lookup, class_lookup, &value_type,
		     &value)) {
    char *search = bstrdup(value.addr);

    for (int i = 0; i < screen->getNumberOfWorkspaces(); i++) {
      char *nn;

      if (! i) nn = strtok(search, ",");
      else nn = strtok(NULL, ",");

      if (nn) screen->addWorkspaceName(nn);
      else break;
    }

    delete [] search;
  }

  sprintf(name_lookup,  "session.screen%d.focusModel", screen_number);
  sprintf(class_lookup, "Session.Screen%d.FocusModel", screen_number);
  if (XrmGetResource(database, name_lookup, class_lookup, &value_type,
		     &value)) {
    if (! strncasecmp(value.addr, "clicktofocus", value.size)) {
      screen->saveAutoRaise(False);
      screen->saveSloppyFocus(False);
    } else if (! strncasecmp(value.addr, "autoraisesloppyfocus", value.size)) {
      screen->saveSloppyFocus(True);
      screen->saveAutoRaise(True);
    } else {
      screen->saveSloppyFocus(True);
      screen->saveAutoRaise(False);
    }
  } else {
    screen->saveSloppyFocus(True);
    screen->saveAutoRaise(False);
  }

  sprintf(name_lookup,  "session.screen%d.windowPlacement", screen_number);
  sprintf(class_lookup, "Session.Screen%d.WindowPlacement", screen_number);
  if (XrmGetResource(database, name_lookup, class_lookup, &value_type,
		     &value)) {
    if (! strncasecmp(value.addr, "RowSmartPlacement", value.size))
      screen->savePlacementPolicy(BScreen::RowSmartPlacement);
    else if (! strncasecmp(value.addr, "ColSmartPlacement", value.size))
      screen->savePlacementPolicy(BScreen::ColSmartPlacement);
    else
      screen->savePlacementPolicy(BScreen::CascadePlacement);
  } else {
    screen->savePlacementPolicy(BScreen::RowSmartPlacement);
  }

#ifdef    HAVE_STRFTIME
  sprintf(name_lookup,  "session.screen%d.strftimeFormat", screen_number);
  sprintf(class_lookup, "Session.Screen%d.StrftimeFormat", screen_number);
  if (XrmGetResource(database, name_lookup, class_lookup, &value_type,
		     &value)) {
    screen->saveStrftimeFormat(value.addr);
  } else {
    screen->saveStrftimeFormat("%I:%M %p");
  }
#else //  HAVE_STRFTIME
  sprintf(name_lookup,  "session.screen%d.dateFormat", screen_number);
  sprintf(class_lookup, "Session.Screen%d.DateFormat", screen_number);
  if (XrmGetResource(database, name_lookup, class_lookup, &value_type,
		     &value)) {
    if (strncasecmp(value.addr, "european", value.size))
      screen->saveDateFormat(B_AmericanDate);
    else
      screen->saveDateFormat(B_EuropeanDate);
  } else {
    screen->saveDateFormat(B_AmericanDate);
  }
  sprintf(name_lookup,  "session.screen%d.clockFormat", screen_number);
  sprintf(class_lookup, "Session.Screen%d.ClockFormat", screen_number);
  if (XrmGetResource(database, name_lookup, class_lookup, &value_type,
		     &value)) {
    int clock;
    if (sscanf(value.addr, "%d", &clock) != 1) screen->saveClock24Hour(False);
    else if (clock == 24) screen->saveClock24Hour(True);
    else screen->saveClock24Hour(False);
  } else {
    screen->saveClock24Hour(False);
  }
#endif // HAVE_STRFTIME

  sprintf(name_lookup,  "session.screen%d.edgeSnapThreshold", screen_number);
  sprintf(class_lookup, "Session.Screen%d.EdgeSnapThreshold", screen_number);
  if (XrmGetResource(database, name_lookup, class_lookup, &value_type,
		     &value)) {
    int threshold;
    if (sscanf(value.addr, "%d", &threshold) != 1)
      screen->saveEdgeSnapThreshold(0);
    else
      screen->saveEdgeSnapThreshold(threshold);
  } else {
    screen->saveEdgeSnapThreshold(0);
  }
  sprintf(name_lookup,  "session.screen%d.imageDither", screen_number);
  sprintf(class_lookup, "Session.Screen%d.ImageDither", screen_number);
  if (XrmGetResource(database, "session.imageDither", "Session.ImageDither",
		     &value_type, &value)) {
    if (! strncasecmp("true", value.addr, value.size))
      screen->saveImageDither(True);
    else
      screen->saveImageDither(False);
  } else {
    screen->saveImageDither(True);
  }

  if (XrmGetResource(database, "session.opaqueMove", "Session.OpaqueMove",
                     &value_type, &value)) {
    if (! strncasecmp("true", value.addr, value.size))
      screen->saveOpaqueMove(True);
    else
      screen->saveOpaqueMove(False);
  } else {
    screen->saveOpaqueMove(False);
  }
  XrmDestroyDatabase(database);
}


void Blackbox::reload_rc(void) {
  load_rc();
  reconfigure();
}


void Blackbox::reconfigure(void) {
  reconfigure_wait = True;

  if (! timer->isTiming()) timer->start();
}


void Blackbox::real_reconfigure(void) {
  grab();

  XrmDatabase new_blackboxrc = (XrmDatabase) 0;
  char style[MAXPATHLEN + 64];

  char *dbfile = (char *) 0;

  if (! rc_file) {
    char *homedir = getenv("HOME");

    dbfile = new char[strlen(homedir) + strlen("/.hackedboxrc") + 1];
    sprintf(dbfile, "%s/.hackedboxrc", homedir);
  } else {
    dbfile = bstrdup(rc_file);
  }
  sprintf(style, "session.styleFile: %s", resource.style_file);
  XrmPutLineResource(&new_blackboxrc, style);

  XrmDatabase old_blackboxrc = XrmGetFileDatabase(dbfile);

  XrmMergeDatabases(new_blackboxrc, &old_blackboxrc);
  XrmPutFileDatabase(old_blackboxrc, dbfile);
  if (old_blackboxrc) XrmDestroyDatabase(old_blackboxrc);

  delete [] dbfile;

  for (int i = 0, n = menuTimestamps->count(); i < n; i++) {
    MenuTimestamp *ts = menuTimestamps->remove(0);

    if (ts) {
      if (ts->filename)
	delete [] ts->filename;

      delete ts;
    }
  }

  LinkedListIterator<BScreen> it(screenList);
  for (BScreen *screen = it.current(); screen; it++, screen = it.current()) {
    screen->reconfigure();
  }

  ungrab();
}


void Blackbox::checkMenu(void) {
  Bool reread = False;
  LinkedListIterator<MenuTimestamp> it(menuTimestamps);
  for (MenuTimestamp *tmp = it.current(); tmp && (! reread);
       it++, tmp = it.current()) {
    struct stat buf;

    if (! stat(tmp->filename, &buf)) {
      if (tmp->timestamp != buf.st_ctime)
        reread = True;
    } else {
      reread = True;
    }
  }

  if (reread) rereadMenu();
}


void Blackbox::rereadMenu(void) {
  reread_menu_wait = True;

  if (! timer->isTiming()) timer->start();
}


void Blackbox::real_rereadMenu(void) {
  for (int i = 0, n = menuTimestamps->count(); i < n; i++) {
    MenuTimestamp *ts = menuTimestamps->remove(0);

    if (ts) {
      if (ts->filename)
	delete [] ts->filename;

      delete ts;
    }
  }

  LinkedListIterator<BScreen> it(screenList);
  for (BScreen *screen = it.current(); screen; it++, screen = it.current())
    screen->rereadMenu();
}


void Blackbox::saveStyleFilename(const char *filename) {
  if (resource.style_file)
    delete [] resource.style_file;

  resource.style_file = bstrdup(filename);
}


void Blackbox::saveMenuFilename(const char *filename) {
  Bool found = False;

  LinkedListIterator<MenuTimestamp> it(menuTimestamps);
  for (MenuTimestamp *tmp = it.current(); tmp && (! found);
       it++, tmp = it.current()) {
    if (! strcmp(tmp->filename, filename)) found = True;
  }
  if (! found) {
    struct stat buf;

    if (! stat(filename, &buf)) {
      MenuTimestamp *ts = new MenuTimestamp;

      ts->filename = bstrdup(filename);
      ts->timestamp = buf.st_ctime;

      menuTimestamps->insert(ts);
    }
  }
}


void Blackbox::timeout(void) {
  if (reconfigure_wait)
    real_reconfigure();

  if (reread_menu_wait)
    real_rereadMenu();

  reconfigure_wait = reread_menu_wait = False;
}


void Blackbox::setFocusedWindow(BlackboxWindow *win) {
  BScreen *old_screen = (BScreen *) 0, *screen = (BScreen *) 0;
  BlackboxWindow *old_win = (BlackboxWindow *) 0;
  Workspace *old_wkspc = (Workspace *) 0, *wkspc = (Workspace *) 0;

  if (focused_window) {
    old_win = focused_window;
    old_screen = old_win->getScreen();
    old_wkspc = old_screen->getWorkspace(old_win->getWorkspaceNumber());

    old_win->setFocusFlag(False);
    old_wkspc->getMenu()->setItemSelected(old_win->getWindowNumber(), False);
  }

  if (win && ! win->isIconic()) {
    screen = win->getScreen();
    wkspc = screen->getWorkspace(win->getWorkspaceNumber());

    focused_window = win;

    win->setFocusFlag(True);
    wkspc->getMenu()->setItemSelected(win->getWindowNumber(), True);
  } else {
    focused_window = (BlackboxWindow *) 0;
  }

  if (screen)
    screen->updateNetizenWindowFocus();

  if (old_screen && old_screen != screen)
    old_screen->updateNetizenWindowFocus();
}