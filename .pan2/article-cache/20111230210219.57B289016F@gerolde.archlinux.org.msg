Path: news.gmane.org!not-for-mail
From: repomaint-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Newsgroups: gmane.linux.arch.devel
Subject: Integrity Check x86_64: core, extra, community,
	multilib 30-12-2011
Date: Fri, 30 Dec 2011 16:02:19 -0500 (EST)
Lines: 215
Approved: news@gmane.org
Message-ID: <20111230210219.57B289016F@gerolde.archlinux.org>
Reply-To: Public mailing list for Arch Linux development
 <arch-dev-public-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
X-Trace: dough.gmane.org 1325278950 23946 80.91.229.12 (30 Dec 2011 21:02:30 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 30 Dec 2011 21:02:30 +0000 (UTC)
To: arch-notifications-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org,arch-dev-public-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-X-From: arch-dev-public-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Fri Dec 30 22:02:26 2011
Return-path: <arch-dev-public-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glad-arch-dev-public@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-dev-public-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1Rgjar-0005sR-JA
	for glad-arch-dev-public@m.gmane.org; Fri, 30 Dec 2011 22:02:25 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 7F62F90171;
	Fri, 30 Dec 2011 16:02:20 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 519228617B;
 Fri, 30 Dec 2011 16:02:19 -0500 (EST)
Original-Received: by gerolde.archlinux.org (Postfix, from userid 99)
 id 57B289016F; Fri, 30 Dec 2011 16:02:19 -0500 (EST)
X-BeenThere: arch-dev-public-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
X-Mailman-Version: 2.1.14
Precedence: list
List-Id: Public mailing list for Arch Linux development
 <arch-dev-public.archlinux.org>
List-Unsubscribe: <http://mailman.archlinux.org/mailman/options/arch-dev-public>, 
 <mailto:arch-dev-public-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=unsubscribe>
List-Archive: <http://mailman.archlinux.org/pipermail/arch-dev-public>
List-Post: <mailto:arch-dev-public-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
List-Help: <mailto:arch-dev-public-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=help>
List-Subscribe: <http://mailman.archlinux.org/mailman/listinfo/arch-dev-public>, 
 <mailto:arch-dev-public-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=subscribe>
Errors-To: arch-dev-public-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-Sender: arch-dev-public-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Xref: news.gmane.org gmane.linux.arch.devel:16864
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.devel/16864>

Warning : the repository multilib does not exist in /srv/abs/rsync/any

===========================================================
= Integrity Check x86_64 of core,extra,community,multilib =
===========================================================

Performing integrity checks...
==> parsing pkgbuilds
==> parsing db files
==> checking mismatches
==> checking archs
==> checking dependencies
==> checking makedepends
==> checking hierarchy
==> checking for circular dependencies
==> checking for differences between db files and pkgbuilds

Missing PKGBUILDs
-------------------
/srv/abs/rsync/any/multilib

Duplicate PKGBUILDs
---------------------
/srv/abs/rsync/any/community/fail2ban vs. /srv/abs/rsync/x86_64/community/fail2ban
/srv/abs/rsync/x86_64/community/dwarffortress vs. /srv/abs/rsync/x86_64/multilib/dwarffortress
/srv/abs/rsync/x86_64/community/skype vs. /srv/abs/rsync/x86_64/multilib/skype
/srv/abs/rsync/x86_64/community/wine vs. /srv/abs/rsync/x86_64/multilib/wine

Missing Dependencies
----------------------
community/cpanminus --> 'perl-extutils-install>=1.46'
community/cpanminus --> 'perl-extutils-makemaker>=6.31'
community/cpanminus --> 'perl-module-build>=0.36'
community/perl-data-optlist --> 'perl-scalar-list-utils'
community/perl-devel-patchperl --> 'perl-io'
community/perl-devel-patchperl --> 'perl-ipc-cmd>=0.40'
community/perl-devel-patchperl --> 'perl-mime-base64'
community/perl-device-gsm --> 'perl-test-simple'
community/perl-local-lib --> 'perl-cpan>=1.82'
community/perl-local-lib --> 'perl-extutils-install>=1.43'
community/perl-local-lib --> 'perl-extutils-makemaker>=6.42'
community/perl-local-lib --> 'perl-module-build>=0.36'
community/perl-package-deprecationmanager --> 'perl-carp'
community/perl-package-stash --> 'perl-scalar-list-utils'
community/perl-params-util --> 'perl-scalar-list-utils'
community/perl-sub-install --> 'perl-scalar-list-utils'
community/perl-test-fatal --> 'perl-carp'
community/perl-test-fatal --> 'perl-exporter>=5.57'
community/perl-test-fatal --> 'perl-test-simple'
extra/perl-anyevent --> 'perl-async-interrupt>=1.0'
extra/perl-anyevent --> 'perl-ev>=4.00'
extra/perl-anyevent --> 'perl-guard>=1.02'
extra/perl-libwww --> 'perl-encode>=2.12'
extra/perl-libwww --> 'perl-libnet'
extra/perl-libwww --> 'perl-mime-base64>=2.1'

Missing Makedepends
---------------------
community/darcs --> 'haskell-hashed-storage<0.6'
community/perl-data-optlist --> 'perl-extutils-makemaker>=6.30'
community/perl-devel-patchperl --> 'perl-extutils-makemaker>=6.30'
community/perl-dist-checkconflicts --> 'perl-extutils-makemaker>=6.31'
community/perl-package-deprecationmanager --> 'perl-extutils-makemaker>=6.30'
community/perl-package-stash --> 'perl-extutils-makemaker>=6.30'
community/perl-package-stash-xs --> 'perl-extutils-makemaker>=6.30'
community/perl-params-util --> 'perl-extutils-cbuilder>=0.27'
community/perl-params-util --> 'perl-extutils-makemaker>=6.52'
community/perl-params-util --> 'perl-pathtools'
community/perl-sub-install --> 'perl-extutils-makemaker'
community/perl-test-fatal --> 'perl-extutils-makemaker>=6.30'
community/perl-try-tiny --> 'perl-extutils-makemaker'
community/perlbrew --> 'perl-extutils-makemaker>=6.42'
community/perlbrew --> 'perl-file-temp'
extra/alex --> 'ghc=7.0.2'
extra/cabal-install --> 'ghc=7.0.2'
extra/happy --> 'ghc=7.0.2'
extra/perl-mozilla-ca --> 'perl-extutils-makemaker'
extra/perl-mozilla-ca --> 'perl-test'

Repo Hierarchy for Dependencies
---------------------------------
extra/archboot depends on community/squashfs-tools (0 extra (make)deps to pull)
extra/banshee depends on community/dbus-sharp-glib (6 extra (make)deps to pull : dbus-sharp docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/gnucash depends on community/aqbanking (7 extra (make)deps to pull : gwenhywfar ktoblzcheck docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/gnucash depends on community/libdbi-drivers (7 extra (make)deps to pull : libdbi sqlite2 docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/mod_perl depends on community/perl-linux-pid (5 extra (make)deps to pull : docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/ruby depends on community/libyaml (0 extra (make)deps to pull)
extra/tomboy depends on community/dbus-sharp (5 extra (make)deps to pull : docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/tomboy depends on community/dbus-sharp-glib (6 extra (make)deps to pull : dbus-sharp docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)

Repo Hierarchy for Makedepends
--------------------------------
community/virtualbox depends on multilib/dev86 (6 extra (make)deps to pull : lib32-glibc gcc-multilib gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-gcc-libs)
community/virtualbox depends on multilib/gcc-multilib (6 extra (make)deps to pull : gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-glibc gcc-multilib lib32-gcc-libs)
community/virtualbox depends on multilib/lib32-glibc (6 extra (make)deps to pull : gcc-multilib gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-glibc lib32-gcc-libs)
community/virtualbox-archlinux-additions depends on multilib/dev86 (6 extra (make)deps to pull : lib32-glibc gcc-multilib gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-gcc-libs)
community/virtualbox-archlinux-additions depends on multilib/gcc-multilib (6 extra (make)deps to pull : gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-glibc gcc-multilib lib32-gcc-libs)
community/virtualbox-archlinux-additions depends on multilib/lib32-glibc (6 extra (make)deps to pull : gcc-multilib gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-glibc lib32-gcc-libs)
community/virtualbox-archlinux-modules depends on multilib/dev86 (6 extra (make)deps to pull : lib32-glibc gcc-multilib gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-gcc-libs)
community/virtualbox-archlinux-modules depends on multilib/gcc-multilib (6 extra (make)deps to pull : gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-glibc gcc-multilib lib32-gcc-libs)
community/virtualbox-archlinux-modules depends on multilib/lib32-glibc (6 extra (make)deps to pull : gcc-multilib gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-glibc lib32-gcc-libs)
community/virtualbox-modules depends on multilib/dev86 (6 extra (make)deps to pull : lib32-glibc gcc-multilib gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-gcc-libs)
community/virtualbox-modules depends on multilib/gcc-multilib (6 extra (make)deps to pull : gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-glibc gcc-multilib lib32-gcc-libs)
community/virtualbox-modules depends on multilib/lib32-glibc (6 extra (make)deps to pull : gcc-multilib gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-glibc lib32-gcc-libs)
community/virtualbox-sdk depends on multilib/dev86 (6 extra (make)deps to pull : lib32-glibc gcc-multilib gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-gcc-libs)
community/virtualbox-sdk depends on multilib/gcc-multilib (6 extra (make)deps to pull : gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-glibc gcc-multilib lib32-gcc-libs)
community/virtualbox-sdk depends on multilib/lib32-glibc (6 extra (make)deps to pull : gcc-multilib gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-glibc lib32-gcc-libs)
community/virtualbox-source depends on multilib/dev86 (6 extra (make)deps to pull : lib32-glibc gcc-multilib gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-gcc-libs)
community/virtualbox-source depends on multilib/gcc-multilib (6 extra (make)deps to pull : gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-glibc gcc-multilib lib32-gcc-libs)
community/virtualbox-source depends on multilib/lib32-glibc (6 extra (make)deps to pull : gcc-multilib gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-glibc lib32-gcc-libs)
core/ca-certificates depends on extra/python2 (195 extra (make)deps to pull)
core/crda depends on extra/python-m2crypto (196 extra (make)deps to pull)
core/curl depends on extra/perl-libwww (195 extra (make)deps to pull)
core/dbus-core depends on extra/libx11 (195 extra (make)deps to pull)
core/e2fsprogs depends on extra/bc (0 extra (make)deps to pull)
core/glib2 depends on extra/python2 (195 extra (make)deps to pull)
core/groff depends on extra/ghostscript (195 extra (make)deps to pull)
core/groff depends on extra/netpbm (195 extra (make)deps to pull)
core/groff depends on extra/psutils (195 extra (make)deps to pull)
core/initscripts depends on community/asciidoc (195 extra (make)deps to pull)
core/libsasl depends on extra/libmysqlclient (195 extra (make)deps to pull)
core/libsasl depends on extra/postgresql-libs (195 extra (make)deps to pull)
core/lilo depends on extra/bin86 (0 extra (make)deps to pull)
core/lilo depends on extra/sharutils (195 extra (make)deps to pull)
core/links depends on extra/libpng (0 extra (make)deps to pull)
core/links depends on extra/libtiff (195 extra (make)deps to pull)
core/links depends on extra/libxt (195 extra (make)deps to pull)
core/linux depends on extra/docbook-xsl (195 extra (make)deps to pull)
core/linux depends on extra/xmlto (195 extra (make)deps to pull)
core/linux-docs depends on extra/docbook-xsl (195 extra (make)deps to pull)
core/linux-docs depends on extra/xmlto (195 extra (make)deps to pull)
core/linux-headers depends on extra/docbook-xsl (195 extra (make)deps to pull)
core/linux-headers depends on extra/xmlto (195 extra (make)deps to pull)
core/module-init-tools depends on community/docbook2x (195 extra (make)deps to pull)
core/pam depends on extra/docbook-xml (195 extra (make)deps to pull)
core/pam depends on extra/docbook-xsl (195 extra (make)deps to pull)
core/pam depends on extra/w3m (195 extra (make)deps to pull)
core/sqlite3 depends on extra/tcl (0 extra (make)deps to pull)
core/sqlite3-doc depends on extra/tcl (0 extra (make)deps to pull)
core/sqlite3-tcl depends on extra/tcl (0 extra (make)deps to pull)
core/syslinux depends on extra/nasm (195 extra (make)deps to pull)
core/udev depends on extra/gobject-introspection (195 extra (make)deps to pull)
core/udev depends on extra/gperf (0 extra (make)deps to pull)
core/udev-compat depends on extra/gobject-introspection (195 extra (make)deps to pull)
core/udev-compat depends on extra/gperf (0 extra (make)deps to pull)
extra/ardour depends on community/cwiid (5 extra (make)deps to pull : docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/audacious-plugins depends on community/jack2 (7 extra (make)deps to pull : celt docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja chrpath)
extra/audacious-plugins depends on community/oss (5 extra (make)deps to pull : docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/bitlbee depends on community/asciidoc (5 extra (make)deps to pull : docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/chromium depends on multilib/lib32-zlib (6 extra (make)deps to pull : lib32-glibc gcc-multilib gcc-libs-multilib binutils-multilib gcc-ada-multilib lib32-gcc-libs)
extra/colord depends on community/docbook2x (5 extra (make)deps to pull : perl-sgmls docbook2x python-sphinx python2-pygments python2-jinja)
extra/conky depends on community/docbook2x (5 extra (make)deps to pull : perl-sgmls docbook2x python-sphinx python2-pygments python2-jinja)
extra/convertlit depends on community/libtommath (0 extra (make)deps to pull)
extra/frozen-bubble depends on community/perl-file-slurp (5 extra (make)deps to pull : docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/frozen-bubble depends on community/perl-locale-maketext-lexicon (5 extra (make)deps to pull : docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/gnome-speech depends on community/espeak (8 extra (make)deps to pull : portaudio celt chrpath docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/gpsd depends on community/chrpath (0 extra (make)deps to pull)
extra/grilo-plugins depends on community/libquvi (6 extra (make)deps to pull : libquvi-scripts docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/grml-zsh-config depends on community/txt2tags (5 extra (make)deps to pull : docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/jack depends on community/celt (0 extra (make)deps to pull)
extra/java-commons-daemon depends on community/docbook2x (5 extra (make)deps to pull : perl-sgmls docbook2x python-sphinx python2-pygments python2-jinja)
extra/java-jsvc depends on community/docbook2x (5 extra (make)deps to pull : perl-sgmls docbook2x python-sphinx python2-pygments python2-jinja)
extra/libiodbc depends on community/chrpath (0 extra (make)deps to pull)
extra/libsmbios depends on community/chrpath (0 extra (make)deps to pull)
extra/python-nose depends on community/python-sphinx (5 extra (make)deps to pull : python2-pygments python2-jinja docbook2x perl-sgmls python-sphinx)
extra/python-nose-doc depends on community/python-sphinx (5 extra (make)deps to pull : python2-pygments python2-jinja docbook2x perl-sgmls python-sphinx)
extra/python-qscintilla depends on community/chrpath (0 extra (make)deps to pull)
extra/python2-nose depends on community/python-sphinx (5 extra (make)deps to pull : python2-pygments python2-jinja docbook2x perl-sgmls python-sphinx)
extra/python2-qscintilla depends on community/chrpath (0 extra (make)deps to pull)
extra/qscintilla depends on community/chrpath (0 extra (make)deps to pull)
extra/qtwebkit depends on community/chrpath (0 extra (make)deps to pull)
extra/ruby depends on community/libyaml (0 extra (make)deps to pull)
extra/ruby-docs depends on community/libyaml (0 extra (make)deps to pull)
extra/speech-dispatcher depends on community/espeak (8 extra (make)deps to pull : portaudio celt chrpath docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/telepathy-salut depends on community/xmldiff (5 extra (make)deps to pull : docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/unoconv depends on community/asciidoc (5 extra (make)deps to pull : docbook2x perl-sgmls python-sphinx python2-pygments python2-jinja)
extra/vigra depends on community/python-sphinx (5 extra (make)deps to pull : python2-pygments python2-jinja docbook2x perl-sgmls python-sphinx)
extra/vigra-doc depends on community/python-sphinx (5 extra (make)deps to pull : python2-pygments python2-jinja docbook2x perl-sgmls python-sphinx)
extra/xfconf depends on community/chrpath (0 extra (make)deps to pull)

Circular Dependencies
-----------------------
telepathy-kde-contact-list>extra/telepathy-kde-text-ui>extra/telepathy-kde-send-file>telepathy-kde-contact-list

Packages found in db, but not in tree
---------------------------------------
community/blender
community/cuda-toolkit
community/opencollada
community/openimageio
extra/libreoffice-af
extra/libreoffice-ar
extra/libreoffice-as
extra/libreoffice-ast
extra/libreoffice-be
extra/libreoffice-bg
extra/libreoffice-bn

Packages found in tree, but not in db
---------------------------------------
extra/blender

Summary
---------
Missing PKGBUILDs:                     1
Invalid PKGBUILDs:                     0
Mismatching PKGBUILD names:            0
Duplicate PKGBUILDs:                   4
Invalid archs:                         0
Missing (make)dependencies:            45
Repo hierarchy problems:               95
Circular dependencies:                 1
In db, but not in tree:                11
In tree, but not in db:                1

