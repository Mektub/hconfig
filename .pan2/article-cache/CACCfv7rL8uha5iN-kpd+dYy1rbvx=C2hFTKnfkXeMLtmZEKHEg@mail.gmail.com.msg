Path: news.gmane.org!not-for-mail
From: Jordan Windsor <jordanw2@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: iPod Touch not detected with GtkPod
Date: Sun, 25 Dec 2011 11:01:11 +1030
Lines: 10
Approved: news@gmane.org
Message-ID: <CACCfv7rL8uha5iN-kpd+dYy1rbvx=C2hFTKnfkXeMLtmZEKHEg@mail.gmail.com>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-Trace: dough.gmane.org 1324773090 12298 80.91.229.12 (25 Dec 2011 00:31:30 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sun, 25 Dec 2011 00:31:30 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Sun Dec 25 01:31:26 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Rebzj-0006cB-Ue
	for glag-arch@m.gmane.org; Sun, 25 Dec 2011 01:31:20 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id B5962901D3;
	Sat, 24 Dec 2011 19:31:13 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 0C7CE86164
 for <arch-general@archlinux.org>; Sat, 24 Dec 2011 19:31:11 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.160.44 is authorized
 to use 'jordanw2@gmail.com' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="jordanw2@gmail.com";
 helo=mail-pw0-f44.google.com; client-ip=209.85.160.44
Original-Received: from mail-pw0-f44.google.com (mail-pw0-f44.google.com
 [209.85.160.44])
 by gerolde.archlinux.org (Postfix) with ESMTPS id C607F901D2
 for <arch-general@archlinux.org>; Sat, 24 Dec 2011 19:31:10 -0500 (EST)
Original-Received: by pbdd12 with SMTP id d12so6094033pbd.3
 for <arch-general@archlinux.org>; Sat, 24 Dec 2011 16:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:date:message-id:subject:from:to:content-type;
 bh=DRGspJF5YMSru2gYhtPQ1g4tXElbpbOr7tBOTOvXUug=;
 b=Sn8fKGyNke7k207ghZnLpgNaAERq5SeP7UAklmxR36qCTI1lQoX+G85y1tvkCD4hcH
 6lUKf+cs4wPaXrc05gjpNBO08IUQ8WDaC+zk01SfFrsbYpBrHSrjFVQO0nI0sCTIAhmI
 N2PsBLEYg9enGRapgLEeGMOsoSwnb1KvL7Cz8=
Original-Received: by 10.68.189.137 with SMTP id gi9mr43608895pbc.69.1324773071064;
 Sat, 24 Dec 2011 16:31:11 -0800 (PST)
Original-Received: by 10.142.211.17 with HTTP; Sat, 24 Dec 2011 16:31:11 -0800 (PST)
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
Xref: news.gmane.org gmane.linux.arch.general:38455
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38455>

Hello,
I've read the wiki page at https://wiki.archlinux.org/index.php/IPod ,
I'm following the part titled "The iFuse Way - iPhone OS 3.x and 4.x",
I've mounted the iPod at /mnt/ipod then I run GtkPod, I then click
"Load all or Selected iPods" and nothing happens at all, no windows or
menus popup.
Where should I go from here?
(I can also read & write to the iPod directory as a user)
Thanks.

