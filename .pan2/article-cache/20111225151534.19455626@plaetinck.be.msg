Path: news.gmane.org!not-for-mail
From: Dieter Plaetinck <dieter-7FYLOmueu/EUehRvb1n7cg@public.gmane.org>
Newsgroups: gmane.linux.arch.releng,gmane.linux.arch.projects
Subject: rc.conf documentation
Date: Sun, 25 Dec 2011 15:15:34 +0100
Lines: 12
Approved: news@gmane.org
Message-ID: <20111225151534.19455626@plaetinck.be>
Reply-To: Arch Linux Release Engineering <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324822608 10050 80.91.229.12 (25 Dec 2011 14:16:48 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sun, 25 Dec 2011 14:16:48 +0000 (UTC)
To: arch-projects-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org, arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-X-From: arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Sun Dec 25 15:16:44 2011
Return-path: <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glar-arch-releng@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1ReosV-0007eu-Ns
	for glar-arch-releng@m.gmane.org; Sun, 25 Dec 2011 15:16:43 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 7FEB3901F6;
	Sun, 25 Dec 2011 09:16:39 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 8931186165;
 Sun, 25 Dec 2011 09:16:37 -0500 (EST)
Received-SPF: none (plaetinck.be: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="dieter-7FYLOmueu/EUehRvb1n7cg@public.gmane.org"; helo=smtp.priorweb.be;
 client-ip=62.182.61.111
Original-Received: from smtp.priorweb.be (smtp01.priorweb.be [62.182.61.111])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 5FD5B901F3;
 Sun, 25 Dec 2011 09:16:36 -0500 (EST)
Original-Received: from [77.109.97.224] (port=55527 helo=localhost.localdomain)
 by smtp.priorweb.be with esmtps (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
 (Exim 4.72) (envelope-from <dieter-7FYLOmueu/EUehRvb1n7cg@public.gmane.org>)
 id 1ReosN-0007XZ-9c; Sun, 25 Dec 2011 15:16:35 +0100
X-Mailer: Claws Mail 3.8.0 (GTK+ 2.24.8; x86_64-unknown-linux-gnu)
X-BeenThere: arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
X-Mailman-Version: 2.1.14
Precedence: list
List-Id: Arch Linux Release Engineering <arch-releng.archlinux.org>
List-Unsubscribe: <http://mailman.archlinux.org/mailman/options/arch-releng>, 
 <mailto:arch-releng-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=unsubscribe>
List-Archive: <http://mailman.archlinux.org/pipermail/arch-releng>
List-Post: <mailto:arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
List-Help: <mailto:arch-releng-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=help>
List-Subscribe: <http://mailman.archlinux.org/mailman/listinfo/arch-releng>,
 <mailto:arch-releng-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=subscribe>
Errors-To: arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-Sender: arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Xref: news.gmane.org gmane.linux.arch.releng:956 gmane.linux.arch.projects:1772
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.releng/956>

Hi,
rc.conf is a bit documented in several places:
1) in rc.conf itself, although documentation there is a bit limited (not always explaining what things are for exactly) but it does contain stuff like examples for networking.
2) in the official installation guide, which has historically been more extensive in describing what things are for and how to make your choice, although it lags behind because it is not tightly coupled to rc.conf, usually I update it when I notice (or somebody tells me) it's out of date.
3) https://wiki.archlinux.org/index.php/Rc.conf which is similar to (2) but with a few more tips, it seems to be maintained by the community.

Also I notice there is no manpage for rc.conf.
How can we improve this situation?  Maybe by maintaining a man page for rc.conf which is as extensive as what currently in the official install guide?
then, in the official installation guide, I can just refer to the rc.conf manpage, meaning the documentation is always in sync, at the same time it would also allow to make the documentation in rc.conf a bit more minimal.

Dieter

