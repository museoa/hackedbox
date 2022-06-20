# data/styles/Makefile.am for Hackedbox

styledir = $(pkgdatadir)/styles
MAINTAINERCLEANFILES = Makefile.in
style_DATA = Hackedbox artwiz bluebox cthulhain deep flux frobozz frobust nyz nyzclone operation outcomes shade steelblue steelblue2 the_orange trisb twice

all-local: Hackedbox

Hackedbox: Hackedbox.in
	@regex_cmd@ -e "s,@pkgdatadir@,$(pkgdatadir)," @srcdir@/Hackedbox.in > Hackedbox

distclean-local:
	rm -f *\~
uninstall-am:
	rmdir $(styledir)
