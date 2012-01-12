Path: news.gmane.org!not-for-mail
From: Ricardo Catalinas =?iso-8859-1?Q?Jim=E9nez?= <jimenezrick@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: umount fails with `mount disagrees with the fstab'
 after updated to filesystem 2011.12-2 on NFS
Date: Tue, 20 Dec 2011 22:34:00 +0100
Lines: 28
Approved: news@gmane.org
Message-ID: <20111220213400.GA7138@viper.server01.org>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
X-Trace: dough.gmane.org 1324416861 22623 80.91.229.12 (20 Dec 2011 21:34:21 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Tue, 20 Dec 2011 21:34:21 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Tue Dec 20 22:34:17 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Rd7KC-0002q1-TV
	for glag-arch@m.gmane.org; Tue, 20 Dec 2011 22:34:17 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id C44289005A;
	Tue, 20 Dec 2011 16:34:10 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 751FA8615F
 for <arch-general@archlinux.org>; Tue, 20 Dec 2011 16:34:09 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 74.125.82.46 is authorized
 to use 'jimenezrick@gmail.com' in 'mfrom' identity (mechanism
 'ip4:74.125.0.0/16' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="jimenezrick@gmail.com";
 helo=mail-ww0-f46.google.com; client-ip=74.125.82.46
Original-Received: from mail-ww0-f46.google.com (mail-ww0-f46.google.com [74.125.82.46])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 2D87190059
 for <arch-general@archlinux.org>; Tue, 20 Dec 2011 16:34:08 -0500 (EST)
Original-Received: by wgbdq10 with SMTP id dq10so8643251wgb.27
 for <arch-general@archlinux.org>; Tue, 20 Dec 2011 13:34:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=date:from:to:subject:message-id:mail-followup-to:mime-version
 :content-type:content-disposition;
 bh=R4nuDBZhNQWZh8SQ74purfPl35TLTrC9/vYujzikbyw=;
 b=ELxVh+mzaLGRlS3mUg0OL2BCleYongONRC6Ar0L+xZSbmxcRiio/G7Xy/4T05oEsIL
 4fiUwwcrelwpAOVYxKLAxx4TgNwbrYfNoIxf+mkY9McIm8on04v4C1MVyIuzqwO/pmGr
 WVdveIh11ypz8O1O878je7JFYA2Og/SMuKQPU=
Original-Received: by 10.227.205.14 with SMTP id fo14mr3680690wbb.22.1324416847539;
 Tue, 20 Dec 2011 13:34:07 -0800 (PST)
Original-Received: from localhost (109.Red-83-40-16.dynamicIP.rima-tde.net.
 [83.40.16.109])
 by mx.google.com with ESMTPS id fi6sm941454wib.2.2011.12.20.13.34.05
 (version=TLSv1/SSLv3 cipher=OTHER);
 Tue, 20 Dec 2011 13:34:06 -0800 (PST)
Mail-Followup-To: arch-general@archlinux.org
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
Xref: news.gmane.org gmane.linux.arch.general:38330
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38330>

Following the instructions from arch-announce I did:

	$ sudo pacman -S filesystem --force

Everything works fine except when umounting a NFS volume:

	$ mount /mnt/anubis
	$ umount /mnt/anubis
	umount: /mnt/anubis mount disagrees with the fstab

The relevant line from fstab:

anubis:/home/ricardo   /mnt/anubis   nfs       user,noauto    0 0

And from mtab:

anubis:/home/ricardo/ /mnt/anubis nfs rw,nosuid,nodev,noexec,relatime,
vers=3,rsize=32768,wsize=32768,namlen=255,hard,proto=tcp,timeo=600,
retrans=2,sec=sys,mountaddr=192.168.1.1,mountvers=3,mountport=33441,
mountproto=udp,local_lock=none,addr=192.168.1.1 0 0

Anyone having troubles with NFS and the new mtab?


Regards
-- 
Ricardo (http://r.untroubled.be/)

