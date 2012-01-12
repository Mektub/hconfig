Path: news.gmane.org!not-for-mail
From: C Anthony Risinger <anthony@xtfx.me>
Newsgroups: gmane.linux.arch.general
Subject: ldconfig -> Aborted.
Date: Wed, 14 Dec 2011 05:46:58 -0600
Lines: 165
Approved: news@gmane.org
Message-ID: <CAGAVQTFF6xVwxJ7n41mia7YOM11nkNtSoUu7gpt3NGMaRCMXJw@mail.gmail.com>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Trace: dough.gmane.org 1323863251 16957 80.91.229.12 (14 Dec 2011 11:47:31 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Wed, 14 Dec 2011 11:47:31 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Wed Dec 14 12:47:27 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1RanJ0-0007xQ-T3
	for glag-arch@m.gmane.org; Wed, 14 Dec 2011 12:47:27 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id E05C79004E;
	Wed, 14 Dec 2011 06:46:48 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 6AFB486156
 for <arch-general@archlinux.org>; Wed, 14 Dec 2011 06:46:46 -0500 (EST)
Received-SPF: pass (xtfx.me: Sender is authorized to use 'anthony@xtfx.me' in
 'mfrom' identity (mechanism 'include:_spf.google.com' matched))
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="anthony@xtfx.me"; helo=mail-qy0-f172.google.com;
 client-ip=209.85.216.172
Original-Received: from mail-qy0-f172.google.com (mail-qy0-f172.google.com
 [209.85.216.172])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 395D790028
 for <arch-general@archlinux.org>; Wed, 14 Dec 2011 06:46:45 -0500 (EST)
Original-Received: by qcsf15 with SMTP id f15so440692qcs.3
 for <arch-general@archlinux.org>; Wed, 14 Dec 2011 03:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xtfx.me; s=google;
 h=mime-version:x-originating-ip:from:date:message-id:subject:to
 :content-type; bh=KSPce8hwfO0ZkbyZ+GZSOZyWLb/AjgB1KZIM4pUqqnE=;
 b=GCUMiZc39kTNRKt5qgRa8Gv5/qb1zLsMJG2btsnUSEIduCOiXgfE6e1FtjkOslUv7U
 x3t/6kV2OIzItJgmet2AK9y9O0TzNG+knWm3exeMR8A0G6Sni5nHtrxaWYc94HP8beD+
 BYnt2mNjrIP8W+uFfDASazEJMcg7xvUbaNENM=
Original-Received: by 10.224.199.134 with SMTP id es6mr8821875qab.2.1323863239222; Wed,
 14 Dec 2011 03:47:19 -0800 (PST)
Original-Received: by 10.229.79.210 with HTTP; Wed, 14 Dec 2011 03:46:58 -0800 (PST)
X-Originating-IP: [65.30.206.224]
X-BeenThere: arch-general@archlinux.org
X-Mailman-Version: 2.1.14
Precedence: list
List-Id: General Discussion about Arch Linux <arch-general.archlinux.org>
List-Unsubscribe: <http://mailman.archlinux.org/mailman/options/arch-general>, 
 <mailto:arch-general-request@archlinux.org?subject=unsubscribe>
List-Archive: <http://mailman.archlinux.org/pipermail/arch-general>
List-Post: <mailto:arch-general@archlinux.org>
List-Help: <mailto:arch-general-request@archlinux.org?subject=help>
List-Subscribe: <http://mailman.archlinux.org/mailman/listinfo/arch-general>, 
 <mailto:arch-general-request@archlinux.org?subject=subscribe>
Errors-To: arch-general-bounces@archlinux.org
Original-Sender: arch-general-bounces@archlinux.org
Xref: news.gmane.org gmane.linux.arch.general:38122
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38122>

this might be a bit brief as it's really late and i'm already in
trouble :-/ ... will expand as needed.

i upgrade my machines and VMs very regularly, at least once a week,
this last batch of updates broke all of my VMs in particular ...
hardware devices still seem to function correctly.  they are not
really broken, but i am unable to regenerate `/etc/ld.so.cache` on any
of them (3 ATM).

upgraded packages (in order, from pacman.log):

augeas
linux-api-headers
glibc <---------------------- prime suspect!!!!
binutils
fakeroot
gcc-libs
gcc
pcre
git
keyutils
krb5
libmysqlclient
polkit
yajl
libvirt
module-init-tools
mkinitcpio
linux
pm-quirks
postgresql-libs
shadow
systemd-arch-units
texinfo

... during the upgrade i saw:

upgraded linux-api-headers (3.0.1-1 -> 3.1.4-1)
/tmp/alpm_gfNxsS/.INSTALL: line 4:   575 Aborted
sbin/ldconfig -r .
Generating locales...
en_US.UTF-8...cannot map archive header: Invalid argument
upgraded glibc (2.14.1-1 -> 2.14.1-2)
upgraded binutils (2.21.1-2 -> 2.22-2)
/tmp/alpm_dwiY8r/.INSTALL: line 5:   654 Aborted
sbin/ldconfig -r .
upgraded fakeroot (1.18.1-1 -> 1.18.2-1)

... the locale stuff is just a side effect of the ldconfig failure
IIRC -- locales are a little borked because the archive file was blown
away, not a problem tho.  for some reason ldconfig refuses to update
on all the VMs (each has worked without issue until today, for several
months):

# ldconfig
Aborted

... i tried blacklisting some virtio modules (balloon in particular)
and tripling memory, no change, and not convinced its 100% related to
virtio yet.  i tried removing `/var/cache/ldconfig/aux-cache` to force
ldconfig to rescan everything (vs. stat checks) -- again, works on
hardware but not VM.  i tried removing the last library it processes
before failing (per strace), no change, it just fails on another
(libgcrypt -> libsysfs).  i tried reinstalling glibc and whatnot ...

these VMs are all pure 64bit, no multilib, and pure systemd, original
initscript stuff purged.  the only thing i didnt try was downgrading,
because i would have to use the ARM ... i use 9p2000.L passthru for
the rootfs of each VM, bindmount a local mirror into each VM's VFS,
then configure pacman to use the `pool` directory of the bound mirror
as a cachedir -- the net effect is pacman never downloads anything,
ever, because it believes it already has :-)  slightly odd perhaps,
but working well for quite some time.

any ideas?  i can't find anything out of place, or any significant
differences, and i'm not sure what to try next -- nothing unusual in
dmesg or logs, on the VMs or the host.  host is completely current as
of Dec 14 00:00 CST.  reduce strace follows, limited to files and
signals.  thanks for your time so far, if you made it to this point
legitimately :-)

C Anthony

# LANG=C strace -ff -s256 -etrace=file,signal ldconfig

execve("/sbin/ldconfig", ["ldconfig"], [/* 29 vars */]) = 0
open("/etc/ld.so.conf", O_RDONLY)       = 3
open("/etc/ld.so.conf.d", O_RDONLY|O_NONBLOCK|O_DIRECTORY|O_CLOEXEC) = 4
open("/etc/ld.so.conf.d/fakeroot.conf", O_RDONLY) = 4
stat("/usr/lib/libfakeroot", {st_mode=S_IFDIR|0755, st_size=4096, ...}) = 0
open("/etc/ld.so.conf.d/perl.conf", O_RDONLY) = 4
stat("/usr/lib/perl5/core_perl/CORE", {st_mode=S_IFDIR|0755,
st_size=4096, ...}) = 0
stat("/lib", {st_mode=S_IFDIR|0755, st_size=4096, ...}) = 0
stat("/lib64", {st_mode=S_IFDIR|0755, st_size=4096, ...}) = 0
stat("/usr/lib", {st_mode=S_IFDIR|0755, st_size=36864, ...}) = 0
stat("/usr/lib64", 0x7fff85a41d90)      = -1 ENOENT (No such file or directory)
open("/var/cache/ldconfig/aux-cache", O_RDONLY) = -1 ENOENT (No such
file or directory)
open("/usr/lib/libfakeroot", O_RDONLY|O_NONBLOCK|O_DIRECTORY|O_CLOEXEC) = 3
lstat("/usr/lib/libfakeroot/libfakeroot.so", {st_mode=S_IFLNK|0777,
st_size=16, ...}) = 0
open("/usr/lib/libfakeroot/libfakeroot.so", O_RDONLY) = 4
lstat("/usr/lib/libfakeroot/libfakeroot-0.so", {st_mode=S_IFREG|0755,
st_size=40400, ...}) = 0
stat("/usr/lib/libfakeroot/libfakeroot-0.so", {st_mode=S_IFREG|0755,
st_size=40400, ...}) = 0
stat("/usr/lib/libfakeroot/libfakeroot.so", {st_mode=S_IFREG|0755,
st_size=40400, ...}) = 0
open("/usr/lib/perl5/core_perl/CORE",
O_RDONLY|O_NONBLOCK|O_DIRECTORY|O_CLOEXEC) = 3
lstat("/usr/lib/perl5/core_perl/CORE/libperl.so",
{st_mode=S_IFREG|0555, st_size=1642088, ...}) = 0
open("/usr/lib/perl5/core_perl/CORE/libperl.so", O_RDONLY) = 4
stat("/usr/lib/perl5/core_perl/CORE/libperl.so",
{st_mode=S_IFREG|0555, st_size=1642088, ...}) = 0
stat("/usr/lib/perl5/core_perl/CORE/libperl.so",
{st_mode=S_IFREG|0555, st_size=1642088, ...}) = 0
open("/lib", O_RDONLY|O_NONBLOCK|O_DIRECTORY|O_CLOEXEC) = 3
lstat("/lib/libpopt.so", {st_mode=S_IFLNK|0777, st_size=12, ...}) = 0
open("/lib/libpopt.so", O_RDONLY)       = 4
lstat("/lib/libudev.so.0.13.0", {st_mode=S_IFREG|0755, st_size=55952, ...}) = 0
open("/lib/libudev.so.0.13.0", O_RDONLY) = 4
lstat("/lib/libutil.so.1", {st_mode=S_IFLNK|0777, st_size=17, ...}) = 0
open("/lib/libutil.so.1", O_RDONLY)     = 4
lstat("/lib/libgcrypt.so", {st_mode=S_IFLNK|0777, st_size=19, ...}) = 0
open("/lib/libgcrypt.so", O_RDONLY)     = 4
lstat("/lib/libpamc.so.0", {st_mode=S_IFLNK|0777, st_size=17, ...}) = 0
open("/lib/libpamc.so.0", O_RDONLY)     = 4
lstat("/lib/libsysfs.so.2.0.1", {st_mode=S_IFREG|0755, st_size=47640, ...}) = 0
open("/lib/libsysfs.so.2.0.1", O_RDONLY) = 4
lstat("/lib/libhandle.so.1.0.3", {st_mode=S_IFREG|0644, st_size=14400, ...}) = 0
open("/lib/libhandle.so.1.0.3", O_RDONLY) = 4
lstat("/lib/libBrokenLocale.so.1", {st_mode=S_IFLNK|0777, st_size=25, ...}) = 0
open("/lib/libBrokenLocale.so.1", O_RDONLY) = 4
lstat("/lib/libBrokenLocale-2.14.1.so", {st_mode=S_IFREG|0755,
st_size=6264, ...}) = 0
lstat("/lib/libnss_mdns_minimal.so.2", {st_mode=S_IFREG|0755,
st_size=9904, ...}) = 0
open("/lib/libnss_mdns_minimal.so.2", O_RDONLY) = 4
lstat("/lib/libpam.so.0", {st_mode=S_IFLNK|0777, st_size=16, ...}) = 0
open("/lib/libpam.so.0", O_RDONLY)      = 4
lstat("/lib/liblvm2app.so.2.2", {st_mode=S_IFREG|0555, st_size=667916, ...}) = 0
open("/lib/liblvm2app.so.2.2", O_RDONLY) = 4
lstat("/lib/libutil-2.14.1.so", {st_mode=S_IFREG|0755, st_size=10656, ...}) = 0
lstat("/lib/libbz2.so.1.0", {st_mode=S_IFLNK|0777, st_size=15, ...}) = 0
open("/lib/libbz2.so.1.0", O_RDONLY)    = 4
lstat("/lib/libsystemd-login.so.0", {st_mode=S_IFLNK|0777, st_size=25, ...}) = 0
open("/lib/libsystemd-login.so.0", O_RDONLY) = 4
lstat("/lib/libanl-2.14.1.so", {st_mode=S_IFREG|0755, st_size=14928, ...}) = 0
open("/lib/libanl-2.14.1.so", O_RDONLY) = 4
lstat("/lib/libgpg-error.so", {st_mode=S_IFLNK|0777, st_size=21, ...}) = 0
open("/lib/libgpg-error.so", O_RDONLY)  = 4
lstat("/lib/libacl.so", {st_mode=S_IFLNK|0777, st_size=11, ...}) = 0
open("/lib/libacl.so", O_RDONLY)        = 4
lstat("/lib/libpam.so.0.83.1", {st_mode=S_IFREG|0755, st_size=55856, ...}) = 0
lstat("/lib/libgcrypt.so.11", {st_mode=S_IFLNK|0777, st_size=19, ...}) = 0
open("/lib/libgcrypt.so.11", O_RDONLY)  = 4
rt_sigprocmask(SIG_UNBLOCK, [ABRT], NULL, 8) = 0
tgkill(2559, 2559, SIGABRT)             = 0
--- {si_signo=SIGABRT, si_code=SI_TKILL, si_pid=2559, si_uid=0,
si_value={int=2164749013, ptr=0xffffffff810772d5}} (Aborted) ---
+++ killed by SIGABRT +++
Aborted

