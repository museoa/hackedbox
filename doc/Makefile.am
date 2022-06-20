# doc/Makefile.am for hackedbox 

CLEANFILES = hackedbox.1 epist.1
MAINTAINERCLEANFILES = Makefile.in
man_MANS = hackedbox.1 epist.1
SUBDIRS = fr_FR ja_JP nl_NL sl_SI

DEFAULT_MENU=$(pkgdatadir)/menu

distclean-local:
	rm -f *\~ .\#*
	
hackedbox.1: hackedbox.1.in
	@regex_cmd@ -e "s,@defaultmenu@,$(DEFAULT_MENU)," \
		-e "s,@pkgdatadir@,$(pkgdatadir)," \
		-e "s,@version@,$(VERSION)," \
		 @srcdir@/hackedbox.1.in > hackedbox.1
