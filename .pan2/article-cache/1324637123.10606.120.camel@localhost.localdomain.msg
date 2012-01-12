Path: news.gmane.org!not-for-mail
From: Ralf Madorf <ralf.mardorf@alice-dsl.net>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Fri, 23 Dec 2011 11:45:23 +0100
Lines: 53
Approved: news@gmane.org
Message-ID: <1324637123.10606.120.camel@localhost.localdomain>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <CAD+HWv-4PO5jEXYXSOU_1zN76s0HOnBQsupVonaNHPiYsMC21Q@mail.gmail.com>
 <1324634036.9930.67.camel@localhost.localdomain>
 <20111223111305.4c5bb493@darkstar>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324637142 5188 80.91.229.12 (23 Dec 2011 10:45:42 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 10:45:42 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 11:45:37 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re2d6-0007mJ-TC
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 11:45:37 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id BF2289018F;
	Fri, 23 Dec 2011 05:45:31 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 2898A86163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:45:30 -0500 (EST)
Received-SPF: none (alice-dsl.net: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="ralf.mardorf@alice-dsl.net"; helo=smtp-out02.alice-dsl.net;
 client-ip=88.44.60.12
Original-Received: from smtp-out02.alice-dsl.net (smtp-out02.alice-dsl.net
 [88.44.60.12])
 by gerolde.archlinux.org (Postfix) with ESMTP id DF85E9018C
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:45:29 -0500 (EST)
Original-Received: from out.alice-dsl.de ([192.168.125.59]) by smtp-out02.alice-dsl.net
 with Microsoft SMTPSVC(6.0.3790.3959); 
 Fri, 23 Dec 2011 11:45:30 +0100
Original-Received: from [85.182.18.151] ([85.182.18.151]) by out.alice-dsl.de over TLS
 secured channel with Microsoft SMTPSVC(6.0.3790.3959); 
 Fri, 23 Dec 2011 11:45:23 +0100
In-Reply-To: <20111223111305.4c5bb493@darkstar>
X-Mailer: Evolution 3.2.2 
X-OriginalArrivalTime: 23 Dec 2011 10:45:23.0750 (UTC)
 FILETIME=[F96B1460:01CCC15F]
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
Xref: news.gmane.org gmane.linux.arch.general:38391
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38391>

On Fri, 2011-12-23 at 11:13 +0100, Heiko Baums wrote:
> Am Fri, 23 Dec 2011 10:53:56 +0100
> schrieb Ralf Madorf <ralf.mardorf@alice-dsl.net>:
> 
> > I know this command, but this won't solve the issue, that PA on Arch
> > Linux is a dependency for software that don't need PA.
> > I want a clean solution.
> 
> Run pacman -Qi pulseaudio to see what package(s) forces you to install
> PA.

I run this before I posted my request [1]. I also know that I can
compile gnome-settings-daemon, see the links of my first mail.
But at another time, when I e.g. install GNOME, then other packages will
install PA.
GNOME doesn't need PA, if you use it the way I will use all DEs, since
I'll use jack, no desktop sound, no Skype etc., just pro and consumer
multimedia apps, flashplayer.
There hopefully is a way to fake that PA is installed.

- Ralf

[1]
# pacman -Qi pulseaudio
Name           : pulseaudio
Version        : 1.1-1
URL            : http://pulseaudio.org/
Licenses       : GPL  LGPL
Groups         : None
Provides       : None
Depends On     : libpulse=1.1-1  rtkit  libtool  speex  tdb  udev  fftw
orc  libsamplerate
Optional Deps  : avahi: zeroconf support
                 bluez: bluetooth support
                 gconf: configuration through gconf (paprefs)
                 jack: jack support
                 lirc-utils: infra-red support
                 openssl: RAOP support
                 python2-pyqt: Equalizer GUI (qpaeq)
Required By    : gnome-settings-daemon  pulseaudio-alsa
Conflicts With : None
Replaces       : None
Installed Size : 5456.00 K
Packager       : Jan Alexander Steffens (heftig)
<jan.steffens@gmail.com>
Architecture   : x86_64
Build Date     : Thu 20 Oct 2011 05:26:48 PM CEST
Install Date   : Sat 10 Dec 2011 04:13:41 PM CET
Install Reason : Installed as a dependency for another package
Install Script : Yes
Description    : A featureful, general-purpose sound server


