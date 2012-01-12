Path: news.gmane.org!not-for-mail
From: Ralf Madorf <ralf.mardorf@alice-dsl.net>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Fri, 23 Dec 2011 10:51:17 +0100
Lines: 36
Approved: news@gmane.org
Message-ID: <1324633877.9930.65.camel@localhost.localdomain>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324633911 16177 80.91.229.12 (23 Dec 2011 09:51:51 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 09:51:51 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 10:51:46 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re1mz-0006JD-Dt
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 10:51:45 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 3B11990089;
	Fri, 23 Dec 2011 04:51:40 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 1C9AA86163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:51:38 -0500 (EST)
Received-SPF: none (alice-dsl.net: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="ralf.mardorf@alice-dsl.net"; helo=smtp-out03.alice-dsl.net;
 client-ip=88.44.63.5
Original-Received: from smtp-out03.alice-dsl.net (smtp-out03.alice-dsl.net [88.44.63.5])
 by gerolde.archlinux.org (Postfix) with ESMTP id BA68290088
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:51:37 -0500 (EST)
Original-Received: from out.alice-dsl.de ([192.168.125.59]) by smtp-out03.alice-dsl.net
 with Microsoft SMTPSVC(6.0.3790.3959); 
 Fri, 23 Dec 2011 10:51:38 +0100
Original-Received: from [85.182.18.151] ([85.182.18.151]) by out.alice-dsl.de over TLS
 secured channel with Microsoft SMTPSVC(6.0.3790.3959); 
 Fri, 23 Dec 2011 10:51:17 +0100
In-Reply-To: <4EF44980.8060609@archlinux.org>
X-Mailer: Evolution 3.2.2 
X-OriginalArrivalTime: 23 Dec 2011 09:51:17.0829 (UTC)
 FILETIME=[6AB2D750:01CCC158]
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
Xref: news.gmane.org gmane.linux.arch.general:38366
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38366>

On Fri, 2011-12-23 at 11:27 +0200, Ionut Biru wrote:
> On 12/23/2011 11:25 AM, Ralf Madorf wrote:
> > On Fri, 2011-12-23 at 11:17 +0200, Ionut Biru wrote:
> >> can you clarify that you are talking about pulseaudio and not about
> >> libpulse?
> > 
> > # pacman -Rss pulseaudio
> > checking dependencies...
> > error: failed to prepare transaction (could not satisfy dependencies)
> > :: gnome-settings-daemon: requires pulseaudio
> > :: pulseaudio-alsa: requires pulseaudio
> > 
> > 
> > 
> 
> ok then, gnome requires pulseaudio. The only way to get rid of
> pulseaudio is to get rid of gnome.

1.

At the moment only GDM is installed, not GNOME.

2.

I had GNOME3 installed for Debian and 2 dummy packages solved all
issues, since GNOME3 doesn't need PA, just some "my computer should be a
toy, instead of a tool" tasks need PA.

Okay, if the policy of Arch Linux is to force people to install unneeded
stuff, than it simply isn't the distro I should use.

Thanks,

Ralf


