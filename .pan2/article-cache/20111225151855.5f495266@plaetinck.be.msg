Path: news.gmane.org!not-for-mail
From: Dieter Plaetinck <dieter@plaetinck.be>
Newsgroups: gmane.linux.arch.projects,gmane.linux.arch.releng
Subject: rc.conf documentation
Date: Sun, 25 Dec 2011 15:18:55 +0100
Lines: 12
Approved: news@gmane.org
Message-ID: <20111225151855.5f495266@plaetinck.be>
Reply-To: Arch Linux projects development discussion
 <arch-projects@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324822805 10993 80.91.229.12 (25 Dec 2011 14:20:05 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sun, 25 Dec 2011 14:20:05 +0000 (UTC)
To: arch-projects@archlinux.org, arch-releng@archlinux.org
Original-X-From: arch-projects-bounces@archlinux.org Sun Dec 25 15:20:02 2011
Return-path: <arch-projects-bounces@archlinux.org>
Envelope-to: glap-arch-projects@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-projects-bounces@archlinux.org>)
	id 1Reovh-0003VT-9V
	for glap-arch-projects@m.gmane.org; Sun, 25 Dec 2011 15:20:01 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 279BC901F7;
	Sun, 25 Dec 2011 09:19:58 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 626D886165;
 Sun, 25 Dec 2011 09:19:56 -0500 (EST)
Received-SPF: none (plaetinck.be: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="dieter@plaetinck.be"; helo=smtp.priorweb.be;
 client-ip=62.182.61.111
Original-Received: from smtp.priorweb.be (smtp01.priorweb.be [62.182.61.111])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 4CD9D901F3;
 Sun, 25 Dec 2011 09:19:56 -0500 (EST)
Original-Received: from [77.109.97.224] (port=41219 helo=localhost.localdomain)
 by smtp.priorweb.be with esmtps (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
 (Exim 4.72) (envelope-from <dieter@plaetinck.be>)
 id 1Reovb-0000AJ-Bx; Sun, 25 Dec 2011 15:19:55 +0100
X-Mailer: Claws Mail 3.8.0 (GTK+ 2.24.8; x86_64-unknown-linux-gnu)
X-BeenThere: arch-projects@archlinux.org
X-Mailman-Version: 2.1.14
Precedence: list
List-Id: Arch Linux projects development discussion
 <arch-projects.archlinux.org>
List-Unsubscribe: <http://mailman.archlinux.org/mailman/options/arch-projects>, 
 <mailto:arch-projects-request@archlinux.org?subject=unsubscribe>
List-Archive: <http://mailman.archlinux.org/pipermail/arch-projects>
List-Post: <mailto:arch-projects@archlinux.org>
List-Help: <mailto:arch-projects-request@archlinux.org?subject=help>
List-Subscribe: <http://mailman.archlinux.org/mailman/listinfo/arch-projects>, 
 <mailto:arch-projects-request@archlinux.org?subject=subscribe>
Errors-To: arch-projects-bounces@archlinux.org
Original-Sender: arch-projects-bounces@archlinux.org
Xref: news.gmane.org gmane.linux.arch.projects:1773 gmane.linux.arch.releng:957
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.projects/1773>

Hi,
rc.conf is a bit documented in several places:
1) in rc.conf itself, although documentation there is a bit limited (not always explaining what things are for exactly) but it does contain stuff like examples for networking.
2) in the official installation guide, which has historically been more extensive in describing what things are for and how to make your choice, although it lags behind because it is not tightly coupled to rc.conf, usually I update it when I notice (or somebody tells me) it's out of date.
3) https://wiki.archlinux.org/index.php/Rc.conf which is similar to (2) but with a few more tips, it seems to be maintained by the community.

Also I notice there is no manpage for rc.conf.
How can we improve this situation?  Maybe by maintaining a man page for rc.conf which is as extensive as what currently in the official install guide?
then, in the official installation guide, I can just refer to the rc.conf manpage, meaning the documentation is always in sync, at the same time it would also allow to make the documentation in rc.conf a bit more minimal.

Dieter

