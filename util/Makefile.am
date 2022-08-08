# util/Makefile.am for Blackbox - an X11 Window manager

AM_CPPFLAGS= @DEBUG@ @NLS@ @TIMEDCACHE@ @ORDEREDPSEUDO@

bin_SCRIPTS =		hsetbg
bin_PROGRAMS =		hsetroot

hgmenudir = $(pkgdatadir)
hgmenu_DATA = hgmenu.mk

hsetroot_SOURCES =	bsetroot.cc
hsetroot_LDADD =	../src/BaseDisplay.o ../src/Color.o ../src/GCCache.o ../src/Texture.o ../src/Timer.o ../src/Image.o ../src/ImageControl.o ../src/i18n.o ../src/Util.o

MAINTAINERCLEANFILES =	Makefile.in

distclean-local:
	rm -f *\~ .\#* hgmenu.mk

# local dependencies

hsetroot.o: bsetroot.cc ../config.h ../src/i18n.hh \
 ../src/../nls/blackbox-nls.hh ../src/GCCache.hh ../src/BaseDisplay.hh \
 ../src/Timer.hh ../src/Color.hh ../src/Texture.hh ../src/Util.hh \
 bsetroot.hh ../src/Image.hh
