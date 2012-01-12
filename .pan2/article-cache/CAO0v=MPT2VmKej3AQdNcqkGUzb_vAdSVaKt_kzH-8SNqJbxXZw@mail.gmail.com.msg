Path: news.gmane.org!not-for-mail
From: Karol Blazewicz <karol.blazewicz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Newsgroups: gmane.linux.arch.releng
Subject: Arch Linux Official Installation Guide in git
Date: Mon, 26 Dec 2011 16:41:37 +0100
Lines: 5
Approved: news@gmane.org
Message-ID: <CAO0v=MPT2VmKej3AQdNcqkGUzb_vAdSVaKt_kzH-8SNqJbxXZw@mail.gmail.com>
Reply-To: Arch Linux Release Engineering <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Trace: dough.gmane.org 1324914107 17185 80.91.229.12 (26 Dec 2011 15:41:47 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Mon, 26 Dec 2011 15:41:47 +0000 (UTC)
To: arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-X-From: arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Mon Dec 26 16:41:43 2011
Return-path: <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glar-arch-releng@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1RfCgI-0005Fm-8K
	for glar-arch-releng@m.gmane.org; Mon, 26 Dec 2011 16:41:42 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id A334C9020D;
	Mon, 26 Dec 2011 10:41:38 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 20BF086171
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Mon, 26 Dec 2011 10:41:37 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.212.172 is
 authorized to use 'karol.blazewicz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="karol.blazewicz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org";
 helo=mail-wi0-f172.google.com; client-ip=209.85.212.172
Original-Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
 [209.85.212.172])
 by gerolde.archlinux.org (Postfix) with ESMTPS id E50D690203
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Mon, 26 Dec 2011 10:41:36 -0500 (EST)
Original-Received: by wibhj6 with SMTP id hj6so4746658wib.3
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Mon, 26 Dec 2011 07:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:date:message-id:subject:from:to:content-type;
 bh=q0B9/naJUKNbOHO5ZCP0c2OmUtjIJQeQnXX8JUK0+Ww=;
 b=cIw2A5uQy1syCCOoouQLpSjlq/YKaiRGbhd+WPH59aneKyPJe/CYGtqE0P43AbWfRg
 MgFaf2SWtb+yYXRpcJBdB3eXt9GbxnOdtDujU4dUxGtFEtyLOH9TOZq/GXDk9kR2WyIO
 bnL2tn5kLc27Qy3mGm/1hFdJD8m4myq824c7A=
Original-Received: by 10.180.20.18 with SMTP id j18mr54242850wie.20.1324914097819; Mon,
 26 Dec 2011 07:41:37 -0800 (PST)
Original-Received: by 10.223.91.66 with HTTP; Mon, 26 Dec 2011 07:41:37 -0800 (PST)
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
Xref: news.gmane.org gmane.linux.arch.releng:959
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.releng/959>

Is http://projects.archlinux.org/aif.git/plain/doc/official_installation_guide_en
the latest version? It says so on
https://wiki.archlinux.org/index.php/Official_Installation_Guide. Will
the Official Installation Guide that's in the wiki be updated?

