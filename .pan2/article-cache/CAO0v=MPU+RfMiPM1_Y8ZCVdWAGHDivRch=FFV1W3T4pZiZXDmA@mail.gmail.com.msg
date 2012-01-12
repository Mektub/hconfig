Path: news.gmane.org!not-for-mail
From: Karol Blazewicz <karol.blazewicz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Newsgroups: gmane.linux.arch.releng
Subject: Re: Arch Linux Official Installation Guide in git
Date: Mon, 26 Dec 2011 17:14:36 +0100
Lines: 21
Approved: news@gmane.org
Message-ID: <CAO0v=MPU+RfMiPM1_Y8ZCVdWAGHDivRch=FFV1W3T4pZiZXDmA@mail.gmail.com>
References: <CAO0v=MPT2VmKej3AQdNcqkGUzb_vAdSVaKt_kzH-8SNqJbxXZw@mail.gmail.com>
 <20111226170020.42c2d4d5@plaetinck.be>
Reply-To: Arch Linux Release Engineering <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Trace: dough.gmane.org 1324916087 29145 80.91.229.12 (26 Dec 2011 16:14:47 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Mon, 26 Dec 2011 16:14:47 +0000 (UTC)
To: Arch Linux Release Engineering <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Original-X-From: arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Mon Dec 26 17:14:43 2011
Return-path: <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glar-arch-releng@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1RfDCE-0003sw-3e
	for glar-arch-releng@m.gmane.org; Mon, 26 Dec 2011 17:14:42 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id A1D1690211;
	Mon, 26 Dec 2011 11:14:37 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id ABAD486171
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Mon, 26 Dec 2011 11:14:35 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.212.172 is
 authorized to use 'karol.blazewicz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="karol.blazewicz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org";
 helo=mail-wi0-f172.google.com; client-ip=209.85.212.172
Original-Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
 [209.85.212.172])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 6851B9020E
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Mon, 26 Dec 2011 11:14:34 -0500 (EST)
Original-Received: by wibhj6 with SMTP id hj6so4762119wib.3
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Mon, 26 Dec 2011 08:14:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :content-type; bh=Fp+kNCeAmiK3Wr0jry9JWUU7XbimOVRxaPZ23P9Q5bY=;
 b=g9dykRDEPVzJf67dgwWc0FVkrEsWpp5x0UczoqjdXhy3eek7IO1YuN1G0qndP2Y2n9
 tv4bL1VzWFlMqdhAfzl2VOLLxtUE6FcsS+zYYYOnbmXH4jR2swfdjscgsAjSVSSbcnKn
 BPqwD8doMOIKLsaC1mvXhdNSwl36CY+tMoRZA=
Original-Received: by 10.180.85.4 with SMTP id d4mr54532773wiz.0.1324916076366; Mon, 26
 Dec 2011 08:14:36 -0800 (PST)
Original-Received: by 10.223.91.66 with HTTP; Mon, 26 Dec 2011 08:14:36 -0800 (PST)
In-Reply-To: <20111226170020.42c2d4d5-7FYLOmueu/EUehRvb1n7cg@public.gmane.org>
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
Xref: news.gmane.org gmane.linux.arch.releng:961
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.releng/961>

On Mon, Dec 26, 2011 at 5:00 PM, Dieter Plaetinck <dieter-7FYLOmueu/EUehRvb1n7cg@public.gmane.org> wrote:
> On Mon, 26 Dec 2011 16:41:37 +0100
> Karol Blazewicz <karol.blazewicz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
>> Is
>> http://projects.archlinux.org/aif.git/plain/doc/official_installation_guide_en
>> the latest version? It says so on
>> https://wiki.archlinux.org/index.php/Official_Installation_Guide.
>> Will the Official Installation Guide that's in the wiki be updated?
>
> the "latest" is the one in the development branch.
> the "latest official" is the one in the master branch.
>
> yes, I'll update it as soon as there's a new release version.
>
> Dieter

Where can I view the updated one?
http://projects.archlinux.org/aif.git/tree/doc/official_installation_guide_en?h=develop
is not it.

