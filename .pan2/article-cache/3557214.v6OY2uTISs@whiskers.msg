Path: news.gmane.org!not-for-mail
From: Peter Lewis <plewis@aur.archlinux.org>
Newsgroups: gmane.linux.arch.general
Subject: python-urwid and python2-urwid contain .pyo files,
	didn't used to.
Date: Fri, 23 Dec 2011 10:32:44 +0000
Lines: 10
Approved: news@gmane.org
Message-ID: <3557214.v6OY2uTISs@whiskers>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
X-Trace: dough.gmane.org 1324636375 32344 80.91.229.12 (23 Dec 2011 10:32:55 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 10:32:55 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 11:32:51 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re2Ql-0001QL-JU
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 11:32:51 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id C84A5900F1;
	Fri, 23 Dec 2011 05:32:47 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 8DCF186163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:32:44 -0500 (EST)
Received-SPF: neutral (aur.archlinux.org: Domain does not state whether sender
 is authorized to use 'plewis@aur.archlinux.org' in 'mfrom' identity
 (mechanism '?all' matched)) receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="plewis@aur.archlinux.org"; helo=polymath.muddygoat.org;
 client-ip=109.74.200.35
Original-Received: from polymath.muddygoat.org (li147-35.members.linode.com
 [109.74.200.35])
 by gerolde.archlinux.org (Postfix) with ESMTP id 7C4DE90111
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:32:43 -0500 (EST)
Original-Received: from whiskers.localnet
 (cpc1-king8-0-0-cust853.perr.cable.virginmedia.com [92.236.155.86])
 by polymath.muddygoat.org (Postfix) with ESMTPA id EE2E27E536
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 10:33:11 +0000 (GMT)
User-Agent: KMail/4.7.4 (Linux/3.1.5-1-ARCH; KDE/4.7.4; x86_64; ; )
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
Xref: news.gmane.org gmane.linux.arch.general:38384
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38384>

Hi,

python-urwid and python2-urwid now seem to contain .pyo files, but they didn't 
before. Just thought I'd check that this was intentional.

Caveat: I know nothing about python packaging, but pacman just gave me a bunch 
of file conflicts for .pyo files not previously owned by anything.

Pete.

