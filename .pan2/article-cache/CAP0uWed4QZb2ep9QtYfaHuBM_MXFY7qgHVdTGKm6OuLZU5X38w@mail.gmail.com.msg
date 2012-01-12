Path: news.gmane.org!not-for-mail
From: Gustavo Genovese <gcesarmza-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Newsgroups: gmane.linux.arch.tur.user
Subject: Merge request: firefox32 and firefox32-i18n to
	bin32-firefox and bin32-firefox-i18n
Date: Sat, 24 Dec 2011 16:38:11 -0300
Lines: 17
Approved: news@gmane.org
Message-ID: <CAP0uWed4QZb2ep9QtYfaHuBM_MXFY7qgHVdTGKm6OuLZU5X38w@mail.gmail.com>
Reply-To: "Discussion about the Arch User Repository \(AUR\)"
 <aur-general-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Trace: dough.gmane.org 1324755523 24381 80.91.229.12 (24 Dec 2011 19:38:43 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sat, 24 Dec 2011 19:38:43 +0000 (UTC)
To: aur-general-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-X-From: aur-general-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Sat Dec 24 20:38:39 2011
Return-path: <aur-general-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glatu-tur-users@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <aur-general-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1ReXQU-0004Vg-Bc
	for glatu-tur-users@m.gmane.org; Sat, 24 Dec 2011 20:38:38 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 8D779901B9;
	Sat, 24 Dec 2011 14:38:34 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 61E8286164
 for <aur-general-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Sat, 24 Dec 2011 14:38:32 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.212.172 is
 authorized to use 'gcesarmza-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="gcesarmza-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org";
 helo=mail-wi0-f172.google.com; client-ip=209.85.212.172
Original-Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
 [209.85.212.172])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 1ED11901B5
 for <aur-general-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Sat, 24 Dec 2011 14:38:31 -0500 (EST)
Original-Received: by wibhj6 with SMTP id hj6so4042439wib.3
 for <aur-general-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Sat, 24 Dec 2011 11:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:from:date:message-id:subject:to:content-type;
 bh=lf1fyKR8/sXGCj+DNnu44jACOAP7BTYT8i9Xb3OE6QE=;
 b=GFH+BdQqKVVhRsBlHGk0+McNHC1Fi2CeYeDGpw7cRWWGe/1zBC2/JflmWe0Qweyknk
 wgsUEjtArs2CFmPnyqJdpYjh2NbR3b/vE4QGYHmd71FOA5BdEmcHBbB49G/+WEI7FHSC
 xZ0BMBpoTOpG+yI6VKLpbkwNLLjpFrLbYM4Ls=
Original-Received: by 10.180.91.201 with SMTP id cg9mr42467466wib.15.1324755512198;
 Sat, 24 Dec 2011 11:38:32 -0800 (PST)
Original-Received: by 10.227.170.199 with HTTP; Sat, 24 Dec 2011 11:38:11 -0800 (PST)
X-BeenThere: aur-general-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
X-Mailman-Version: 2.1.14
Precedence: list
List-Id: "Discussion about the Arch User Repository \(AUR\)"
 <aur-general.archlinux.org>
List-Unsubscribe: <http://mailman.archlinux.org/mailman/options/aur-general>, 
 <mailto:aur-general-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=unsubscribe>
List-Archive: <http://mailman.archlinux.org/pipermail/aur-general>
List-Post: <mailto:aur-general-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
List-Help: <mailto:aur-general-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=help>
List-Subscribe: <http://mailman.archlinux.org/mailman/listinfo/aur-general>,
 <mailto:aur-general-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=subscribe>
Errors-To: aur-general-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-Sender: aur-general-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Xref: news.gmane.org gmane.linux.arch.tur.user:23207
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.tur.user/23207>

Hi

Please remove firefox32 [1] and merge the votes to bin32-firefox [2]

Also please remove firefox32-i18n [3] and merge the votes to bin32-firefox-i18n

Thanks,

[1] https://aur.archlinux.org/packages.php?ID=18644
[2] https://aur.archlinux.org/packages.php?ID=55262
[3] https://aur.archlinux.org/packages.php?ID=18647
[4] https://aur.archlinux.org/packages.php?ID=55263


-- 
Gustavo Genovese

