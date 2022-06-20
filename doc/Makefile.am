# doc/Makefile.am for Hackedbox

CLEANFILES = hackedbox.1
MAINTAINERCLEANFILES = Makefile.in
man_MANS = hackedbox.1
SUBDIRS = 

DEFAULT_MENU=$(pkgdatadir)/menu

distclean-local:
	rm -f *\~

hackedbox.1: hackedbox.1.in
	@regex_cmd@ -e "s,@defaultmenu@,$(DEFAULT_MENU)," \
		-e "s,@pkgdatadir@,$(pkgdatadir)," \
		-e "s,@version@,$(VERSION)," \
		 @srcdir@/hackedbox.1.in > hackedbox.1
