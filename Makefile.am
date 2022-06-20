# Makefile.am for Hackedbox
EXTRA_DIST = util bootstrap nls doc epist

AUTOMAKE_OPTIONS = foreign

SUBDIRS = data doc nls src @UTILS@ @KEYS@

MAINTAINERCLEANFILES = aclocal.m4 config.h.in configure Makefile.in stamp-h.in

uninstall-local:
	-rmdir $(pkgdatadir)

distclean-local:
	rm -f *\~ gmon.out .\#*
