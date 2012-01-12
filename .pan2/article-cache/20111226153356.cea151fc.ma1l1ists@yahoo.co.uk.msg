Path: news.gmane.org!not-for-mail
From: Kevin Chadwick <ma1l1ists@yahoo.co.uk>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Mon, 26 Dec 2011 15:33:56 +0000
Lines: 10
Approved: news@gmane.org
Message-ID: <20111226153356.cea151fc.ma1l1ists@yahoo.co.uk>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <1324633877.9930.65.camel@localhost.localdomain>
 <4837414.sDXcEBn3Pa@leto>
 <1324638261.10606.137.camel@localhost.localdomain>
 <CAMbX1M1yd-jjsFtjEG2gpoJKed+AowEpnNS4-r=YdWbeE7JOFg@mail.gmail.com>
 <1324643423.10606.181.camel@localhost.localdomain>
 <20111223130342.GA28632@M50.none>
 <20111223143456.cd097cd2.ma1l1ists@yahoo.co.uk>
 <CAG-2HqVDV5AQSbDir9ha9Y12Uas6VQQA5JPiF1Y7gcNx_=BMwg@mail.gmail.com>
 <20111223193523.d76780fc.ma1l1ists@yahoo.co.uk>
 <20111223143814.6214a620@bluemoon.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324913584 13970 80.91.229.12 (26 Dec 2011 15:33:04 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Mon, 26 Dec 2011 15:33:04 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Mon Dec 26 16:33:00 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1RfCXp-0006F5-JE
	for glag-arch@m.gmane.org; Mon, 26 Dec 2011 16:32:57 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 1B699901F6;
	Mon, 26 Dec 2011 10:32:50 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 8435D86171
 for <arch-general@archlinux.org>; Mon, 26 Dec 2011 10:32:48 -0500 (EST)
Received-SPF: none (yahoo.co.uk: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="ma1l1ists@yahoo.co.uk"; helo=nm2-vm0.bullet.mail.ukl.yahoo.com;
 client-ip=217.146.183.226
Original-Received: from nm2-vm0.bullet.mail.ukl.yahoo.com
 (nm2-vm0.bullet.mail.ukl.yahoo.com [217.146.183.226])
 by gerolde.archlinux.org (Postfix) with SMTP id 2F337901F1
 for <arch-general@archlinux.org>; Mon, 26 Dec 2011 10:32:47 -0500 (EST)
Original-Received: from [217.146.183.184] by nm2.bullet.mail.ukl.yahoo.com with NNFMP;
 26 Dec 2011 15:32:49 -0000
Original-Received: from [77.238.184.71] by tm15.bullet.mail.ukl.yahoo.com with NNFMP;
 26 Dec 2011 15:32:49 -0000
Original-Received: from [127.0.0.1] by smtp140.mail.ukl.yahoo.com with NNFMP;
 26 Dec 2011 15:32:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.uk; s=s1024;
 t=1324913569; bh=qSQC9BCxuGJ1MuKd48FrRakQAroqtBzei7f4ZwslOug=;
 h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Date:From:To:Subject:Message-Id:In-Reply-To:References:X-Mailer:Mime-Version:Content-Type:Content-Transfer-Encoding;
 b=HX6n1S78sDb08bsVN5M4rGaTs+CQMwGbYVcveYKZjru9Kmx5Sx5VlN5ks9/KRKU6q0CsPPWbeCTWTuFP3yWJnn+qTIl0T4mThUVlVIEOQKbS8G8mXfeXe/+WDqYG6NA+eqeo/Is1PBz+PoUBsENdtozzh70dp100Du+IA9AmmlY=
X-Yahoo-Newman-Id: 742811.18216.bm@smtp140.mail.ukl.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: TDYAYk8VM1kEMNoimW5vxmILyLs6dgquKAjnuJDtYNSa1ub
 qez7BxPn2rMkR8vqdwCgQqQjnn9_BX73qu3AXjiBObnV0tYK1TQB7VRyd0JM
 CHpUi.EBmz6lwOliowVBAHgSjg3AvWHCGCzEcuvsP7OgISluW.XZq6EGeTPR
 ZQ0DlkqrzgWB_hBxdJg6ZnacMVRUnFG3povD05Zj9q5dqw2gaVQdJaLYIHC1
 BClJhfcd2FfsXsvfdl5_wjPRBdWtz8.uzw2rAIZmC6lQDGhVv2vh_36VIOml
 kv55zkYYTsu1kl_uJHcKApWavJYWOFU0QPycOlCTbI.j7G2WSyMzC_vI_BQY
 s5y5axzn9g2MLes3B7seHOWn.NyH2Hi3DsMVrbr0y.pi4
X-Yahoo-SMTP: UxXxlhuswBC4wbdewolpwSmT1iJVzQ--
Original-Received: from sparkles.a2s.co.uk (ma1l1ists@92.27.156.6 with plain)
 by smtp140.mail.ukl.yahoo.com with SMTP; 26 Dec 2011 15:32:49 +0000 GMT
In-Reply-To: <20111223143814.6214a620@bluemoon.localdomain>
X-Mailer: Kevs Mailer
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
Xref: news.gmane.org gmane.linux.arch.general:38456
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38456>

On Fri, 23 Dec 2011 14:38:14 -0600
Leonid Isaev wrote:

> Disabling cap_sys_rawio renders
> X unusable with intel drivers (it fails to start with an I/O error).

Depends on the driver, newer ati may have a better KMS method than
framebuffer but adding vga=ask to the kernel bootline and using
xf86-video-fbdev driver works for older cards.

