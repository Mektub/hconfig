Path: news.gmane.org!not-for-mail
From: Ralf Madorf <ralf.mardorf@alice-dsl.net>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Fri, 23 Dec 2011 10:25:16 +0100
Lines: 13
Approved: news@gmane.org
Message-ID: <1324632316.9930.45.camel@localhost.localdomain>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324632331 6236 80.91.229.12 (23 Dec 2011 09:25:31 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 09:25:31 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 10:25:27 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re1NX-0002g2-6P
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 10:25:27 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id D4BA990072;
	Fri, 23 Dec 2011 04:25:22 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 0582A86163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:25:21 -0500 (EST)
Received-SPF: none (alice-dsl.net: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="ralf.mardorf@alice-dsl.net"; helo=smtp-out02.alice-dsl.net;
 client-ip=88.44.60.12
Original-Received: from smtp-out02.alice-dsl.net (smtp-out02.alice-dsl.net
 [88.44.60.12])
 by gerolde.archlinux.org (Postfix) with ESMTP id AFFB79006B
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:25:19 -0500 (EST)
Original-Received: from out.alice-dsl.de ([192.168.125.60]) by smtp-out02.alice-dsl.net
 with Microsoft SMTPSVC(6.0.3790.3959); 
 Fri, 23 Dec 2011 10:25:20 +0100
Original-Received: from [85.182.18.151] ([85.182.18.151]) by out.alice-dsl.de over TLS
 secured channel with Microsoft SMTPSVC(6.0.3790.3959); 
 Fri, 23 Dec 2011 10:25:16 +0100
In-Reply-To: <4EF44735.8050009@archlinux.org>
X-Mailer: Evolution 3.2.2 
X-OriginalArrivalTime: 23 Dec 2011 09:25:16.0873 (UTC)
 FILETIME=[C84BDB90:01CCC154]
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
Xref: news.gmane.org gmane.linux.arch.general:38358
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38358>

On Fri, 2011-12-23 at 11:17 +0200, Ionut Biru wrote:
> can you clarify that you are talking about pulseaudio and not about
> libpulse?

# pacman -Rss pulseaudio
checking dependencies...
error: failed to prepare transaction (could not satisfy dependencies)
:: gnome-settings-daemon: requires pulseaudio
:: pulseaudio-alsa: requires pulseaudio




