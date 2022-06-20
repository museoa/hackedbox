EXTRA_DIST=*.hh *.cc
DEFAULT_KEYS=$(pkgdatadir)/keys

CPPFLAGS= @CPPFLAGS@ -DDEFAULT_KEYS=\"$(DEFAULT_KEYS)\"

keysdir = $(pkgdatadir)
keys_DATA = keys

bin_PROGRAMS=epist

epist_SOURCES = epist.cc

MAINTAINERCLEANFILES= Makefile.in

epist.o: epist.cc Modifiers.cc epist.hh


