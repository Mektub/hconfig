Path: news.gmane.org!not-for-mail
From: Ralf Madorf <ralf.mardorf@alice-dsl.net>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Fri, 23 Dec 2011 11:03:34 +0100
Lines: 26
Approved: news@gmane.org
Message-ID: <1324634614.9930.75.camel@localhost.localdomain>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <CA+4o_oGk94pCMKLAfTy8Eagz3ty=qf3+tJ==AhvzSwuUMWg_Eg@mail.gmail.com>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324634638 20901 80.91.229.12 (23 Dec 2011 10:03:58 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 10:03:58 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 11:03:55 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re1yi-0003tg-Sh
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 11:03:53 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id C01F690099;
	Fri, 23 Dec 2011 05:03:47 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id B3F4B86163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:03:46 -0500 (EST)
Received-SPF: none (alice-dsl.net: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="ralf.mardorf@alice-dsl.net"; helo=smtp-out03.alice-dsl.net;
 client-ip=88.44.63.5
Original-Received: from smtp-out03.alice-dsl.net (smtp-out03.alice-dsl.net [88.44.63.5])
 by gerolde.archlinux.org (Postfix) with ESMTP id 6354E90093
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:03:45 -0500 (EST)
Original-Received: from out.alice-dsl.de ([192.168.125.60]) by smtp-out03.alice-dsl.net
 with Microsoft SMTPSVC(6.0.3790.3959); 
 Fri, 23 Dec 2011 11:03:46 +0100
Original-Received: from [85.182.18.151] ([85.182.18.151]) by out.alice-dsl.de over TLS
 secured channel with Microsoft SMTPSVC(6.0.3790.3959); 
 Fri, 23 Dec 2011 11:03:35 +0100
In-Reply-To: <CA+4o_oGk94pCMKLAfTy8Eagz3ty=qf3+tJ==AhvzSwuUMWg_Eg@mail.gmail.com>
X-Mailer: Evolution 3.2.2 
X-OriginalArrivalTime: 23 Dec 2011 10:03:35.0152 (UTC)
 FILETIME=[222D6700:01CCC15A]
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
Xref: news.gmane.org gmane.linux.arch.general:38372
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38372>

On Fri, 2011-12-23 at 10:38 +0100, Stefan Wilkens wrote:
> Pulse recently replaced esound as the dependent sound server for
> gnome[1], esound has been marked dead.
> 
> You might have some relative success if you drop pulse and do some
> per-application configuration to redirect their default output to alsa
> or OSS. While this would work for applications such as gstreamer
> (gstreamer-properties), pidgin, vlc, mplayer.. you will find yourself
> with a broken gnome. You'll need a new mixer application, setup
> software mixing (or hardware if your card privides) etc.
> 
> You may find life simpler by disabling [2] pulse, rather than removing it.
> 
> [1] http://live.gnome.org/PulseAudio
> [2] https://bbs.archlinux.org/viewtopic.php?pid=928817#p928817

So I should install PA, while not using it? Is this the interpretation
of KISS by Arch Linux?

I already have written that I'll use a HDSP card = HDSP mixer, a desktop
mixer thingy won't be able to handle such an audio card and my sound
server will be Jack with ALSA backend.

- Ralf


