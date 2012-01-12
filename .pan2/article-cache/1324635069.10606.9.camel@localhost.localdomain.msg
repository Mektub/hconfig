Path: news.gmane.org!not-for-mail
From: Ralf Madorf <ralf.mardorf@alice-dsl.net>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Fri, 23 Dec 2011 11:11:09 +0100
Lines: 52
Approved: news@gmane.org
Message-ID: <1324635069.10606.9.camel@localhost.localdomain>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <CAGAVQTFKQxo4a2Bjg8nBPyjE+Ue5QKNdB1y8A8WjOXbMBjX49w@mail.gmail.com>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324635089 23980 80.91.229.12 (23 Dec 2011 10:11:29 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 10:11:29 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 11:11:26 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re261-0007eo-Ek
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 11:11:25 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 8B68A900A3;
	Fri, 23 Dec 2011 05:11:20 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 5367D86163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:11:18 -0500 (EST)
Received-SPF: none (alice-dsl.net: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="ralf.mardorf@alice-dsl.net"; helo=smtp-out02.alice-dsl.net;
 client-ip=88.44.60.12
Original-Received: from smtp-out02.alice-dsl.net (smtp-out02.alice-dsl.net
 [88.44.60.12])
 by gerolde.archlinux.org (Postfix) with ESMTP id 0969B9009D
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:11:17 -0500 (EST)
Original-Received: from out.alice-dsl.de ([192.168.125.62]) by smtp-out02.alice-dsl.net
 with Microsoft SMTPSVC(6.0.3790.3959); 
 Fri, 23 Dec 2011 11:11:18 +0100
Original-Received: from [85.182.18.151] ([85.182.18.151]) by out.alice-dsl.de over TLS
 secured channel with Microsoft SMTPSVC(6.0.3790.3959); 
 Fri, 23 Dec 2011 11:11:16 +0100
In-Reply-To: <CAGAVQTFKQxo4a2Bjg8nBPyjE+Ue5QKNdB1y8A8WjOXbMBjX49w@mail.gmail.com>
X-Mailer: Evolution 3.2.2 
X-OriginalArrivalTime: 23 Dec 2011 10:11:17.0046 (UTC)
 FILETIME=[357CD560:01CCC15B]
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
Xref: news.gmane.org gmane.linux.arch.general:38375
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38375>

On Fri, 2011-12-23 at 03:39 -0600, C Anthony Risinger wrote:
> Do not install an application requiring it?

Why does GDM require it?
Why does GNOME3 require it?

> You'll need to provide context about what you're trying to accomplish
> (clear and simple goals) and what you've already done (eg. I ran command
> xyz, I installed gnome, etc ...)

The goal is a DAW with a professional audio card from RME. Since PA
isn't needed, but it's always good to cause trouble, I won't have it
installed.

I wish to have the libre to use GNOME3, even if I now use Xfce only.

> So far we've only learned PA probably sux, you don't want it on you system,
> and some random bits about Debian ;-) ... best to assume nothing of the
> solution since that's what you are here requesting.  Simply state your
> end-goals, the issue(s), and the path taken thus far.

I installed ArchLinux, upgraded it by the basic repositories and only
installed Xfce, GDM, some mailers, NVIDIA driver, nothing else until
now.

I'm going to set up a DAW and graphic machine with a kernel-rt, Ardour3
with video timeline, GIMP etc..

I like to install GNOME3 too.

> IIRC PA is split into a library package, among others. Many pkgs will dep
> libpulse, but it cannot be loaded (or possibly will not) without the
> accompanying support packages.
> 
> Audio is not my thing, but I absorb passively often as possible.  PA will
> play nicely with other impls by suspending itself and releasing the
> hardware when requested, allowing (JACK and ?) others to assume control.
> My guess is there is not an issue here ... I suggest moving forward until a
> concrete problem is encountered, or running headless.
> 
> While I'm not into pro audio, I do use PA successfully on several machines
> daily with great satisfaction and zero issue; be sure you understand the
> difference between ALSA, alsa-lib, and PA.

It already is an issue. I don't need PA for my work. Even if it should
cause no issue, I don't need it.

- Ralf




