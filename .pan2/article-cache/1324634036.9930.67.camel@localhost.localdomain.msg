Path: news.gmane.org!not-for-mail
From: Ralf Madorf <ralf.mardorf@alice-dsl.net>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Fri, 23 Dec 2011 10:53:56 +0100
Lines: 12
Approved: news@gmane.org
Message-ID: <1324634036.9930.67.camel@localhost.localdomain>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <CAD+HWv-4PO5jEXYXSOU_1zN76s0HOnBQsupVonaNHPiYsMC21Q@mail.gmail.com>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324634071 17309 80.91.229.12 (23 Dec 2011 09:54:31 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 09:54:31 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 10:54:26 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re1pY-0007ba-Kh
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 10:54:24 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 70A749008D;
	Fri, 23 Dec 2011 04:54:19 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id D9BA486163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:54:17 -0500 (EST)
Received-SPF: none (alice-dsl.net: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="ralf.mardorf@alice-dsl.net"; helo=smtp-out02.alice-dsl.net;
 client-ip=88.44.60.12
Original-Received: from smtp-out02.alice-dsl.net (smtp-out02.alice-dsl.net
 [88.44.60.12])
 by gerolde.archlinux.org (Postfix) with ESMTP id 7C98390089
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:54:16 -0500 (EST)
Original-Received: from out.alice-dsl.de ([192.168.125.60]) by smtp-out02.alice-dsl.net
 with Microsoft SMTPSVC(6.0.3790.3959); 
 Fri, 23 Dec 2011 10:54:17 +0100
Original-Received: from [85.182.18.151] ([85.182.18.151]) by out.alice-dsl.de over TLS
 secured channel with Microsoft SMTPSVC(6.0.3790.3959); 
 Fri, 23 Dec 2011 10:53:56 +0100
In-Reply-To: <CAD+HWv-4PO5jEXYXSOU_1zN76s0HOnBQsupVonaNHPiYsMC21Q@mail.gmail.com>
X-Mailer: Evolution 3.2.2 
X-OriginalArrivalTime: 23 Dec 2011 09:53:56.0937 (UTC)
 FILETIME=[C988CB90:01CCC158]
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
Xref: news.gmane.org gmane.linux.arch.general:38367
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38367>

On Fri, 2011-12-23 at 04:29 -0500, Jonathan Vasquez wrote:
> You could do that by doing pacman -Rsc pulseaudio .. but be extremely
> careful with that command. It deletes everything recursively down
> (cascading as man pacman puts it).

I know this command, but this won't solve the issue, that PA on Arch
Linux is a dependency for software that don't need PA.
I want a clean solution.

- Ralf


