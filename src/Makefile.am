# src/Makefile.am for Hackedbox
# Copyright (c) 1997 - 2000 Brad Hughes (bhughes@tcac.net)
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the 
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in 
# all copies or substantial portions of the Software. 
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL 
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
# DEALINGS IN THE SOFTWARE.

DEFAULT_MENU=$(pkgdatadir)/menu
DEFAULT_STYLE=$(pkgdatadir)/styles/Results

CPPFLAGS= @CPPFLAGS@ @SHAPE@  @INTERLACE@ @ORDEREDPSEUDO@ \
@DEBUG@ @NEWWMSPEC@ @NLS@ @TIMEDCACHE@ \
-DLOCALEPATH=\"$(pkgdatadir)/nls\" \
-DDEFAULTMENU=\"$(DEFAULT_MENU)\" \
-DDEFAULTSTYLE=\"$(DEFAULT_STYLE)\"

bin_PROGRAMS= hackedbox

hackedbox_SOURCES= BaseDisplay.cc Basemenu.cc Clientmenu.cc Configmenu.cc Iconmenu.cc Image.cc LinkedList.cc Netizen.cc Rootmenu.cc Screen.cc  Timer.cc  Window.cc Windowmenu.cc Workspace.cc Workspacemenu.cc blackbox.cc bsd-snprintf.c i18n.cc main.cc

MAINTAINERCLEANFILES= Makefile.in

EXTRA_DIST=*.hh *.h

distclean-local:
	rm -f *\~ *.orig *.rej

# local dependencies

BaseDisplay.o: BaseDisplay.cc i18n.hh BaseDisplay.hh LinkedList.hh \
 Timer.hh
Basemenu.o: Basemenu.cc i18n.hh blackbox.hh BaseDisplay.hh \
 LinkedList.hh Timer.hh Image.hh Window.hh Iconmenu.hh Basemenu.hh \
 Windowmenu.hh  Screen.hh Configmenu.hh Netizen.hh Rootmenu.hh \
 Workspace.hh Workspacemenu.hh
Clientmenu.o: Clientmenu.cc blackbox.hh BaseDisplay.hh LinkedList.hh \
 Timer.hh Image.hh Window.hh Iconmenu.hh Basemenu.hh Windowmenu.hh  \
 Clientmenu.hh Workspace.hh Screen.hh Configmenu.hh Netizen.hh \
 Rootmenu.hh Workspacemenu.hh
Configmenu.o: Configmenu.cc i18n.hh Configmenu.hh Basemenu.hh \
 LinkedList.hh Screen.hh BaseDisplay.hh Timer.hh Iconmenu.hh Netizen.hh \
 Rootmenu.hh Workspace.hh Workspacemenu.hh blackbox.hh Image.hh \
 Window.hh Windowmenu.hh  
Icon.o: Iconmenu.cc i18n.hh blackbox.hh BaseDisplay.hh LinkedList.hh \
 Timer.hh Image.hh Window.hh Iconmenu.hh Basemenu.hh Windowmenu.hh  \
 Screen.hh Configmenu.hh Netizen.hh Rootmenu.hh Workspace.hh \
 Workspacemenu.hh 
Image.o: Image.cc i18n.hh BaseDisplay.hh LinkedList.hh Timer.hh \
 Image.hh
LinkedList.o: LinkedList.cc LinkedList.hh
Netizen.o: Netizen.cc Netizen.hh BaseDisplay.hh LinkedList.hh Timer.hh \
 Screen.hh Configmenu.hh Basemenu.hh blackbox.hh Image.hh Window.hh \
 Iconmenu.hh Windowmenu.hh  Rootmenu.hh Workspace.hh \
 Workspacemenu.hh
Rootmenu.o: Rootmenu.cc blackbox.hh BaseDisplay.hh LinkedList.hh \
 Timer.hh Image.hh Window.hh Iconmenu.hh Basemenu.hh Windowmenu.hh  \
 Rootmenu.hh Screen.hh Configmenu.hh Netizen.hh Workspace.hh \
 Workspacemenu.hh
Screen.o: Screen.cc i18n.hh bsd-snprintf.h blackbox.hh BaseDisplay.hh \
 LinkedList.hh Timer.hh Image.hh Window.hh Iconmenu.hh Basemenu.hh \
 Windowmenu.hh  Clientmenu.hh Workspace.hh Screen.hh Configmenu.hh \
 Netizen.hh Rootmenu.hh Workspacemenu.hh 
Timer.o: Timer.cc BaseDisplay.hh LinkedList.hh Timer.hh
Window.o: Window.cc i18n.hh blackbox.hh BaseDisplay.hh LinkedList.hh \
 Timer.hh Image.hh Window.hh Iconmenu.hh Basemenu.hh Windowmenu.hh  \
 Screen.hh Configmenu.hh Netizen.hh Rootmenu.hh Workspace.hh \
 Workspacemenu.hh 
Windowmenu.o: Windowmenu.cc i18n.hh blackbox.hh BaseDisplay.hh \
 LinkedList.hh Timer.hh Image.hh Window.hh Iconmenu.hh Basemenu.hh \
 Windowmenu.hh  Screen.hh Configmenu.hh Netizen.hh Rootmenu.hh \
 Workspace.hh Workspacemenu.hh
Workspace.o: Workspace.cc i18n.hh blackbox.hh BaseDisplay.hh \
 LinkedList.hh Timer.hh Image.hh Window.hh Iconmenu.hh Basemenu.hh \
 Windowmenu.hh  Clientmenu.hh Workspace.hh Screen.hh \
 Configmenu.hh Netizen.hh Rootmenu.hh Workspacemenu.hh 
Workspacemenu.o: Workspacemenu.cc i18n.hh blackbox.hh BaseDisplay.hh \
 LinkedList.hh Timer.hh Image.hh Window.hh Iconmenu.hh Basemenu.hh \
 Windowmenu.hh  Screen.hh Configmenu.hh Netizen.hh Rootmenu.hh \
 Workspace.hh Workspacemenu.hh 
blackbox.o: blackbox.cc i18n.hh blackbox.hh BaseDisplay.hh \
 LinkedList.hh Timer.hh Image.hh Window.hh Iconmenu.hh Basemenu.hh \
 Windowmenu.hh  Clientmenu.hh Workspace.hh Rootmenu.hh \
 Screen.hh Configmenu.hh Netizen.hh Workspacemenu.hh 
bsd-snprintf.o: bsd-snprintf.c bsd-snprintf.h
i18n.o: i18n.cc i18n.hh
main.o: main.cc ../version.h i18n.hh blackbox.hh BaseDisplay.hh \
 LinkedList.hh Timer.hh Image.hh Window.hh Iconmenu.hh Basemenu.hh \
 Windowmenu.hh 