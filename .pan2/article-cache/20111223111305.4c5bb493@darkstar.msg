Path: news.gmane.org!not-for-mail
From: Heiko Baums <lists@baums-on-web.de>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Fri, 23 Dec 2011 11:13:05 +0100
Lines: 22
Approved: news@gmane.org
Message-ID: <20111223111305.4c5bb493@darkstar>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <CAD+HWv-4PO5jEXYXSOU_1zN76s0HOnBQsupVonaNHPiYsMC21Q@mail.gmail.com>
 <1324634036.9930.67.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324635322 25451 80.91.229.12 (23 Dec 2011 10:15:22 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 10:15:22 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 11:15:18 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re29m-00013W-2A
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 11:15:18 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 8E4B6900BE;
	Fri, 23 Dec 2011 05:15:12 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id DB9A286163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:15:10 -0500 (EST)
Received-SPF: pass (baums-on-web.de: Sender is authorized to use
 'lists@baums-on-web.de' in 'mfrom' identity (mechanism
 'include:ispgateway.de' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="lists@baums-on-web.de";
 helo=smtprelay06.ispgateway.de; client-ip=80.67.31.104
Original-Received: from smtprelay06.ispgateway.de (smtprelay06.ispgateway.de
 [80.67.31.104])
 by gerolde.archlinux.org (Postfix) with ESMTP id A395C900AA
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:15:09 -0500 (EST)
Original-Received: from [109.91.84.208] (helo=darkstar)
 by smtprelay06.ispgateway.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.68) (envelope-from <lists@baums-on-web.de>)
 id 1Re29e-0007GX-Qe
 for arch-general@archlinux.org; Fri, 23 Dec 2011 11:15:10 +0100
In-Reply-To: <1324634036.9930.67.camel@localhost.localdomain>
X-Mailer: Claws Mail 3.8.0 (GTK+ 2.24.8; x86_64-unknown-linux-gnu)
X-Df-Sender: NTM3MzY2
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
Xref: news.gmane.org gmane.linux.arch.general:38377
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38377>

Am Fri, 23 Dec 2011 10:53:56 +0100
schrieb Ralf Madorf <ralf.mardorf@alice-dsl.net>:

> I know this command, but this won't solve the issue, that PA on Arch
> Linux is a dependency for software that don't need PA.
> I want a clean solution.

Run pacman -Qi pulseaudio to see what package(s) forces you to install
PA. As far as I know it's actually common policy in Arch Linux that PA
is only optional and nobody is at least forced to use it.

If there are applications which depend on PA and can't work without PA
then you have, of course, the choice between installing and using PA
or uninstalling the reverse dependency. But in such a case you have to
blame upstream, but not Arch Linux.

And it probably can happen that the package maintainer made a mistake
by adding pulseaudio to depends instead of optdepends. In this case you
should file a bug report or write a comment to AUR.

Heiko

