Path: news.gmane.org!not-for-mail
From: Ralf Madorf <ralf.mardorf@alice-dsl.net>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Sat, 24 Dec 2011 08:34:04 +0100
Lines: 16
Approved: news@gmane.org
Message-ID: <1324712044.1216.60.camel@localhost.localdomain>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <CA+4o_oGk94pCMKLAfTy8Eagz3ty=qf3+tJ==AhvzSwuUMWg_Eg@mail.gmail.com>
 <1324634614.9930.75.camel@localhost.localdomain>
 <4EF54857.4010008@brendanlong.com>
 <1324710528.1216.44.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324712056 20510 80.91.229.12 (24 Dec 2011 07:34:16 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sat, 24 Dec 2011 07:34:16 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Sat Dec 24 08:34:12 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1ReM7Q-00055N-2a
	for glag-arch@m.gmane.org; Sat, 24 Dec 2011 08:34:12 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 66C5490168;
	Sat, 24 Dec 2011 02:34:07 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id F0DC686164
 for <arch-general@archlinux.org>; Sat, 24 Dec 2011 02:34:04 -0500 (EST)
Received-SPF: none (alice-dsl.net: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="ralf.mardorf@alice-dsl.net"; helo=smtp-out01.alice-dsl.net;
 client-ip=88.44.60.11
Original-Received: from smtp-out01.alice-dsl.net (smtp-out01.alice-dsl.net
 [88.44.60.11])
 by gerolde.archlinux.org (Postfix) with ESMTP id 9EA9290165
 for <arch-general@archlinux.org>; Sat, 24 Dec 2011 02:34:04 -0500 (EST)
Original-Received: from out.alice-dsl.de ([192.168.124.116]) by
 smtp-out01.alice-dsl.net with Microsoft SMTPSVC(6.0.3790.3959); 
 Sat, 24 Dec 2011 08:34:05 +0100
Original-Received: from [92.231.5.64] ([92.231.5.64]) by out.alice-dsl.de over TLS
 secured channel with Microsoft SMTPSVC(6.0.3790.3959); 
 Sat, 24 Dec 2011 08:34:05 +0100
In-Reply-To: <1324710528.1216.44.camel@localhost.localdomain>
X-Mailer: Evolution 3.2.2 
X-OriginalArrivalTime: 24 Dec 2011 07:34:05.0466 (UTC)
 FILETIME=[6A3DAFA0:01CCC20E]
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
Xref: news.gmane.org gmane.linux.arch.general:38451
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38451>

On Sat, 2011-12-24 at 08:08 +0100, Ralf Madorf wrote:
> [snip]
> IIUC https://wiki.archlinux.org/index.php/PKGBUILD#provides [snip]
>  
> provides=('pulseaudio
>            pulseaudio-alsa')
> ?!

provides=('pulseaudio'
          'pulseaudio-alsa')

?!

> - Ralf


