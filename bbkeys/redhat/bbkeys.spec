%define name		bbkeys
%define version		0.8.6
%define release		1
%define builddir	$RPM_BUILD_DIR/%{name}-%{version}

Summary:	bbkeys, a completely configurable key-combo grabber for blackbox
Name:		%{name}
Version: 	%{version}
Release: 	%{release}
Copyright: 	GPL
Group: 		X11/Applications
URL: 		http://movingparts.net
Source: 	http://movingparts.net/bbkeys/bbkeys-%{version}.tar.gz
Packager: 	vanRijn (vR@movingparts.net)

BuildRoot:	%{_tmppath}/%{name}-%{version}
Prefix:		%{_prefix}


%description
bbkeys is a configurable key-grabber designed for the blackbox window manager
which is written by Brad Hughes.  It is based on the bbtools object code
created by John Kennis and re-uses some of the blackbox window manager classes
as well.  bbkeys is easily configurable via directly hand-editting the user's
~/.bbkeysrc file, or by using the GUI total blackbox configurator, bbconf.

%prep
%setup
./configure --prefix=%{prefix}

%build
make

%install
if [ -d $RPM_BUILD_ROOT ]; then rm -rf $RPM_BUILD_ROOT; fi
mkdir -p $RPM_BUILD_ROOT
make install DESTDIR=$RPM_BUILD_ROOT
cd $RPM_BUILD_ROOT/%{prefix}/man
[ -f man1/bbkeys.1.gz ] || gzip man1/bbkeys.1
[ -f man5/bbkeys.bb.5.gz ] || gzip man5/bbkeys.bb.5
[ -f man5/bbkeysrc.5.gz ] || gzip man5/bbkeysrc.5

%clean
rm -rf $RPM_BUILD_ROOT

%files 
%defattr(-,root,root) 
%{prefix}/bin/bbkeys 
%{prefix}/bin/bbkeysconf.pl
%{prefix}/share/bbtools/bbkeys.bb 
%{prefix}/share/bbtools/bbkeys.nobb 
%{prefix}/doc/bbkeys/README
%{prefix}/doc/bbkeys/AUTHORS
%{prefix}/doc/bbkeys/BUGS
%{prefix}/doc/bbkeys/ChangeLog
%{prefix}/doc/bbkeys/NEWS
%{prefix}/man/man1/bbkeys.1.gz
%{prefix}/man/man5/bbkeys.bb.5.gz
%{prefix}/man/man5/bbkeysrc.5.gz
 
%changelog 
* Sat Jan 12 2002 Jason 'vanRijn' Kasper <vR@movingparts.net>
- removing README.bbkeys and adding BUGS and NEWS
* Sat Jan 5 2002 Jason 'vanRijn' Kasper <vR@movingparts.net>
- gzipping man pages by default and changing file list to reflect this
* Mon Nov 5 2001 Jason 'vanRijn' Kasper <vR@movingparts.net>
- removing bbkeysConfigC and replacing with bbkeysconf.pl
* Tue Sep 18 2001 Jason Kasper <vR@movingparts.net>
- changing to a dynamically-created bbkeys.spec
* Sun Aug 5 2001 Jason Kasper <vR@movingparts.net>
- added to file list for newly included files (docs and man pages)
- install to %{prefix} instead of /usr
* Sun May 6 2001 Hollis Blanchard <hollis@terraplex.com> 
- removed file list in favor of explicit %files section 
- install to /usr instead of /usr/local 
- buildroot = /var/tmp/bbkeys-buildroot instead of /tmp/buildroot
