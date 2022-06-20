# Makefile.in generated automatically by automake 1.5 from Makefile.am.

# Copyright 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001
# Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



# data/backgrounds/Makefile.am for Hackedbox

SHELL = /bin/sh

srcdir = .
top_srcdir = ../..

prefix = /usr/local
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${prefix}/share
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${prefix}/info
mandir = ${prefix}/man
includedir = ${prefix}/include
oldincludedir = /usr/include
pkgdatadir = $(datadir)/hackedbox
pkglibdir = $(libdir)/hackedbox
pkgincludedir = $(includedir)/hackedbox
top_builddir = ../..

ACLOCAL = ${SHELL} /usr/src/hackedbox-current/missing --run aclocal
AUTOCONF = ${SHELL} /usr/src/hackedbox-current/missing --run autoconf
AUTOMAKE = ${SHELL} /usr/src/hackedbox-current/missing --run automake
AUTOHEADER = ${SHELL} /usr/src/hackedbox-current/missing --run autoheader

INSTALL = /bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL}
INSTALL_HEADER = $(INSTALL_DATA)
transform = s,x,x,
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
AMTAR = ${SHELL} /usr/src/hackedbox-current/missing --run tar
AWK = mawk
BLOAT_HH = 
CC = gcc
CXX = g++
DEBUG = -DNDEBUG
DEPDIR = .deps
EXEEXT = 
INSTALL_STRIP_PROGRAM = ${SHELL} $(install_sh) -c -s
KEYCMD = epist
KEYS = epist
MAINT = #
NLS = -DNLS
OBJEXT = o
ORDEREDPSEUDO = 
PACKAGE = hackedbox
SHAPE = -DSHAPE
TIMEDCACHE = -DTIMEDCACHE
UTILS = 
VERSION = 0.8.2
X_CFLAGS =  -I/usr/X11R6/include
X_EXTRA_LIBS = 
X_LIBS =  -L/usr/X11R6/lib
X_PRE_LIBS =  -lSM -lICE
am__include = include
am__quote = 
browser = 
editor = gvim
gencat_cmd = gencat
install_sh = /usr/src/hackedbox-current/install-sh
launcher = launch
regex_cmd = sed
xterm = Eterm

backgrounddir = $(pkgdatadir)/backgrounds
MAINTAINERCLEANFILES = Makefile.in
background_DATA = flamed_1024.jpg
subdir = data/backgrounds
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = $(top_builddir)/config.h
CONFIG_CLEAN_FILES =
depcomp =
DIST_SOURCES =
DATA = $(background_DATA)

DIST_COMMON = Makefile.am Makefile.in
all: all-am

.SUFFIXES:
$(srcdir)/Makefile.in: # Makefile.am  $(top_srcdir)/configure.in $(ACLOCAL_M4)
	cd $(top_srcdir) && \
	  $(AUTOMAKE) --gnu  --ignore-deps data/backgrounds/Makefile
Makefile: # $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) && \
	  CONFIG_HEADERS= CONFIG_LINKS= \
	  CONFIG_FILES=$(subdir)/$@ $(SHELL) ./config.status
uninstall-info-am:
install-backgroundDATA: $(background_DATA)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(backgrounddir)
	@list='$(background_DATA)'; for p in $$list; do \
	  if test -f "$$p"; then d=; else d="$(srcdir)/"; fi; \
	  f="`echo $$p | sed -e 's|^.*/||'`"; \
	  echo " $(INSTALL_DATA) $$d$$p $(DESTDIR)$(backgrounddir)/$$f"; \
	  $(INSTALL_DATA) $$d$$p $(DESTDIR)$(backgrounddir)/$$f; \
	done

uninstall-backgroundDATA:
	@$(NORMAL_UNINSTALL)
	@list='$(background_DATA)'; for p in $$list; do \
	  f="`echo $$p | sed -e 's|^.*/||'`"; \
	  echo " rm -f $(DESTDIR)$(backgrounddir)/$$f"; \
	  rm -f $(DESTDIR)$(backgrounddir)/$$f; \
	done
tags: TAGS
TAGS:


DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)

top_distdir = ../..
distdir = $(top_distdir)/$(PACKAGE)-$(VERSION)

distdir: $(DISTFILES)
	@for file in $(DISTFILES); do \
	  if test -f $$file; then d=.; else d=$(srcdir); fi; \
	  dir=`echo "$$file" | sed -e 's,/[^/]*$$,,'`; \
	  if test "$$dir" != "$$file" && test "$$dir" != "."; then \
	    $(mkinstalldirs) "$(distdir)/$$dir"; \
	  fi; \
	  if test -d $$d/$$file; then \
	    cp -pR $$d/$$file $(distdir) \
	    || exit 1; \
	  else \
	    test -f $(distdir)/$$file \
	    || cp -p $$d/$$file $(distdir)/$$file \
	    || exit 1; \
	  fi; \
	done
check-am: all-am
check: check-am
all-am: Makefile $(DATA)

installdirs:
	$(mkinstalldirs) $(DESTDIR)$(backgrounddir)

install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	  `test -z '$(STRIP)' || \
	    echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:

clean-generic:

distclean-generic:
	-rm -f Makefile $(CONFIG_CLEAN_FILES) stamp-h stamp-h[0-9]*

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
	-test -z "$(MAINTAINERCLEANFILES)" || rm -f $(MAINTAINERCLEANFILES)
clean: clean-am

clean-am: clean-generic mostlyclean-am

distclean: distclean-am

distclean-am: clean-am distclean-generic distclean-local

dvi: dvi-am

dvi-am:

info: info-am

info-am:

install-data-am: install-backgroundDATA

install-exec-am:

install-info: install-info-am

install-man:

installcheck-am:

maintainer-clean: maintainer-clean-am

maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-generic

uninstall-am: uninstall-backgroundDATA uninstall-info-am

.PHONY: all all-am check check-am clean clean-generic distclean \
	distclean-generic distclean-local distdir dvi dvi-am info \
	info-am install install-am install-backgroundDATA install-data \
	install-data-am install-exec install-exec-am install-info \
	install-info-am install-man install-strip installcheck \
	installcheck-am installdirs maintainer-clean \
	maintainer-clean-generic mostlyclean mostlyclean-generic \
	uninstall uninstall-am uninstall-backgroundDATA \
	uninstall-info-am


distclean-local:
	rm -f *\~
uninstall-am:
	rmdir $(backgrounddir)
# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
