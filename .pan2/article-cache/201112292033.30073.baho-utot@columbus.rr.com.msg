Path: news.gmane.org!not-for-mail
From: Baho Utot <baho-utot@columbus.rr.com>
Newsgroups: gmane.linux.arch.general
Subject: local repository
Date: Thu, 29 Dec 2011 20:33:30 -0500
Lines: 33
Approved: news@gmane.org
Message-ID: <201112292033.30073.baho-utot@columbus.rr.com>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1325208825 7526 80.91.229.12 (30 Dec 2011 01:33:45 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 30 Dec 2011 01:33:45 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 30 02:33:39 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1RgRLn-0001Dk-3t
	for glag-arch@m.gmane.org; Fri, 30 Dec 2011 02:33:39 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 8ED4C9010C;
	Thu, 29 Dec 2011 20:33:30 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 7A27B86179
 for <arch-general@archlinux.org>; Thu, 29 Dec 2011 20:33:28 -0500 (EST)
Received-SPF: pass (columbus.rr.com ... a._spf.rr.com: 71.74.56.122 is
 authorized to use 'baho-utot@columbus.rr.com' in 'mfrom' identity (mechanism
 'ip4:71.74.56.0/24' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="baho-utot@columbus.rr.com";
 helo=hrndva-omtalb.mail.rr.com; client-ip=71.74.56.122
Original-Received: from hrndva-omtalb.mail.rr.com (hrndva-omtalb.mail.rr.com
 [71.74.56.122])
 by gerolde.archlinux.org (Postfix) with ESMTP id 61CE590105
 for <arch-general@archlinux.org>; Thu, 29 Dec 2011 20:33:27 -0500 (EST)
X-Authority-Analysis: v=2.0 cv=SqgSGYy0 c=1 sm=0 a=WLLLyDcPT5NbRn4xU/4RRg==:17
 a=BeJfjmuleZIA:10 a=kj9zAlcOel0A:10 a=4JgWLocuAAAA:8 a=K1Mw6ppCDd79QfciFVUA:9
 a=CjuIK1q_8ugA:10 a=WLLLyDcPT5NbRn4xU/4RRg==:117
X-Cloudmark-Score: 0
X-Originating-IP: 75.180.8.214
Original-Received: from [75.180.8.214] ([75.180.8.214:53899]
 helo=crazy-horse.bildanet.com)
 by hrndva-oedge01.mail.rr.com (envelope-from <baho-utot@columbus.rr.com>)
 (ecelerity 2.2.3.46 r()) with ESMTP
 id 9C/7F-23543-AE41DFE4; Fri, 30 Dec 2011 01:33:31 +0000
Original-Received: from [192.168.1.42]
 by crazy-horse.bildanet.com with esmtp (Exim 4.73)
 (envelope-from <baho-utot@columbus.rr.com>) id 1RgRLe-0005FF-HW
 for arch-general@archlinux.org; Thu, 29 Dec 2011 20:33:30 -0500
User-Agent: KMail/1.9.10 (enterprise35 0.20100827.1168748)
Content-Disposition: inline
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
Xref: news.gmane.org gmane.linux.arch.general:38477
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38477>

I would like to setup a local repository for my trinity packages

I have a server with apache installed and a virtual host is configured.

I copied all the files to the server and did a repo-add trinity.db.gz *.pkg.*

I put this into the server pacman.conf
[trinity]
Server = file:///srv/http/trinity/i686

Which works as expected.

I then put this in pacman.conf on the client

[trinity]
Server = http:///trinity.bildanet.com/i686

when I do a pacman -Syy I get the following

:: Synchronizing package databases...
 trinity                                                                            
3.6K 1380.8K/s 00:00:00 
[###############################################################] 100%
error: failed retrieving file 'trinity.db' from  : Unknown resolver error
error: failed to update trinity (Unknown resolver error)

ping shows that trinity.bildanet.com is resolvable for the client.

This is browseable from a web browser on the client and shows all the packages 
as well as the trinity.db and trinity.db.tar.gz file.

Is there something else I need to do to get this working or what am I missing?

