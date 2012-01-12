Path: news.gmane.org!not-for-mail
From: Eric Fernandez <zeb-KWsKkhpdK3gDXYZnReoRVg@public.gmane.org>
Newsgroups: gmane.linux.arch.releng
Subject: grub install not listing partitions
Date: Thu, 15 Dec 2011 22:27:24 +0000
Lines: 18
Approved: news@gmane.org
Message-ID: <CA+aUsagoBk=1cur_bbCxcuW4JwW9mWqX1d7gaNitAMP7Ro-how@mail.gmail.com>
Reply-To: Arch Linux Release Engineering <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-Trace: dough.gmane.org 1323988051 13904 80.91.229.12 (15 Dec 2011 22:27:31 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Thu, 15 Dec 2011 22:27:31 +0000 (UTC)
To: arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-X-From: arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Thu Dec 15 23:27:28 2011
Return-path: <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glar-arch-releng@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1RbJlv-0004nb-LW
	for glar-arch-releng@m.gmane.org; Thu, 15 Dec 2011 23:27:27 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 4573390049;
	Thu, 15 Dec 2011 17:26:52 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id CCDAE8615B
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Thu, 15 Dec 2011 17:26:50 -0500 (EST)
Received-SPF: pass (googlemail.com ... _spf.google.com: 209.85.161.172 is
 authorized to use 'zebulonorguk-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org' in 'mfrom' identity
 (mechanism 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="zebulonorguk-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org";
 helo=mail-gx0-f172.google.com; client-ip=209.85.161.172
Original-Received: from mail-gx0-f172.google.com (mail-gx0-f172.google.com
 [209.85.161.172])
 by gerolde.archlinux.org (Postfix) with ESMTPS id AB48590046
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Thu, 15 Dec 2011 17:26:50 -0500 (EST)
Original-Received: by ggnk5 with SMTP id k5so2114496ggn.3
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Thu, 15 Dec 2011 14:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=gamma;
 h=mime-version:sender:date:x-google-sender-auth:message-id:subject
 :from:to:content-type;
 bh=DQ1NqvIm2r3hajfvQZtU3xD1lB4SUhiWYLce1LbS19k=;
 b=iLbyjrRpVQ0DPh4QGKzvr6IGkDRv8K+v+VNQ6RMaxzqzihM5tOQqCjO8oNvXuTOdQ2
 GqCovovkbjQWKIHRN6JQ6WuNjC8xLV79niIcDHX/ZpBNLJPEvigkmDYC4A9TeiRl0kcN
 HejYb7I+pWtjgprBGS6EIhpm8Tgawza2XtFMQ=
Original-Received: by 10.182.144.69 with SMTP id sk5mr2301852obb.27.1323988044511; Thu,
 15 Dec 2011 14:27:24 -0800 (PST)
Original-Received: by 10.182.5.194 with HTTP; Thu, 15 Dec 2011 14:27:24 -0800 (PST)
X-Google-Sender-Auth: VLppM-miDkB7QXHSUBKxWbS_9jI
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
Xref: news.gmane.org gmane.linux.arch.releng:936
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.releng/936>

Hi,

I am the original reporter of https://bugs.archlinux.org/task/25726
and as Desmond Cox explained, it is more practical to use chainloading
than having one grub. Maintenance is more difficult when having
several kernels from different distribution in one grub, and increases
risks of having one distribution wrongly editing entries when updating
their own kernel options.

Like Desmond, I never experienced any problem installing grub in a
partition. Removing the possibility to install grub in a partition is
in my opinion contrary to KISS, especially if there are no stable
alternatives (I shall try syslinux, as you recommend, but other posts
make me wonder if this would work for me). Is it possible to allow
installing grub on partitions as an "advanced" option?

Thanks a lot in advance.

