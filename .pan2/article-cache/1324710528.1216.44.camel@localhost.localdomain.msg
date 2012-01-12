Path: news.gmane.org!not-for-mail
From: Ralf Madorf <ralf.mardorf@alice-dsl.net>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Sat, 24 Dec 2011 08:08:48 +0100
Lines: 58
Approved: news@gmane.org
Message-ID: <1324710528.1216.44.camel@localhost.localdomain>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <CA+4o_oGk94pCMKLAfTy8Eagz3ty=qf3+tJ==AhvzSwuUMWg_Eg@mail.gmail.com>
 <1324634614.9930.75.camel@localhost.localdomain>
 <4EF54857.4010008@brendanlong.com>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324710551 13626 80.91.229.12 (24 Dec 2011 07:09:11 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sat, 24 Dec 2011 07:09:11 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Sat Dec 24 08:09:07 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1ReLj9-000612-JQ
	for glag-arch@m.gmane.org; Sat, 24 Dec 2011 08:09:07 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id EF9D790165;
	Sat, 24 Dec 2011 02:09:00 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 7CDAE86164
 for <arch-general@archlinux.org>; Sat, 24 Dec 2011 02:08:59 -0500 (EST)
Received-SPF: none (alice-dsl.net: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="ralf.mardorf@alice-dsl.net"; helo=smtp-out02.alice-dsl.net;
 client-ip=88.44.60.12
Original-Received: from smtp-out02.alice-dsl.net (smtp-out02.alice-dsl.net
 [88.44.60.12])
 by gerolde.archlinux.org (Postfix) with ESMTP id 2FDB290164
 for <arch-general@archlinux.org>; Sat, 24 Dec 2011 02:08:58 -0500 (EST)
Original-Received: from out.alice-dsl.de ([192.168.125.60]) by smtp-out02.alice-dsl.net
 with Microsoft SMTPSVC(6.0.3790.3959); 
 Sat, 24 Dec 2011 08:08:59 +0100
Original-Received: from [92.231.5.64] ([92.231.5.64]) by out.alice-dsl.de over TLS
 secured channel with Microsoft SMTPSVC(6.0.3790.3959); 
 Sat, 24 Dec 2011 08:08:49 +0100
In-Reply-To: <4EF54857.4010008@brendanlong.com>
X-Mailer: Evolution 3.2.2 
X-OriginalArrivalTime: 24 Dec 2011 07:08:49.0859 (UTC)
 FILETIME=[E2DE6930:01CCC20A]
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
Xref: news.gmane.org gmane.linux.arch.general:38449
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38449>

On Fri, 2011-12-23 at 22:34 -0500, Brendan Long wrote:
> Is it really worth the effort to save 5 MB of disk space (while having
> random broken packages)?

When the packages pulseaudio and pulseaudio-alsa
(including /etc/asound.conf) are replaced by a dummy package no other
package would be broken.

Assumed the command pulseaudio --kill should work without failure, then
what would be the difference to not directly replacing the two packages
by a dummy package or perhaps two dummy packages?

IIUC https://wiki.archlinux.org/index.php/PKGBUILD#provides ...
        
        "provides
        
        An array of package names that this package provides the
        features of (or a virtual package such as cron or sh). If you
        use this variable, you should add the version (pkgver and
        perhaps the pkgrel) that this package will provide if
        dependencies may be affected by it. For instance, if you are
        providing a modified qt package named qt-foobar version 3.3.8
        which provides qt then the provides array should look like
        provides=('qt=3.3.8'). Putting provides=('qt') will cause to
        fail those dependencies that require a specific version of qt.
        Do not add pkgname to your provides array, this is done
        automatically."

... instead of
        
        $ cat PKGBUILD
        pkgname=pulseaudio-dummy
        pkgver=1.0
        pkgrel=1
        pkgdesc="A dummy package that pretends to provide pulseaudio."
        arch=('any')
        url=""
        license=('BSD')
        provides=('pulseaudio')
        conflicts=('pulseaudio')
        source=()

... provides=('pulseaudio') better should be ('pulseaudio>=1.1-1') OTOH
I can imagine that ">" is an argument that isn't allowed?
And also it's ok to
provides=('pulseaudio
           pulseaudio-alsa')
?!

- Ralf

-- 
For Debian I replaced pulseaudio and libcanberra-pulse by dummy packages
and everything worked. I don't think that there was the need to replace
libcanberra-pulse OTOH it's also not needed.
http://lists.debian.org/debian-user/2011/11/msg00852.html


