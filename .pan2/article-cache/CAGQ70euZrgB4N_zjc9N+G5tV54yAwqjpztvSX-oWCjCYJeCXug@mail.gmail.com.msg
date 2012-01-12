Path: news.gmane.org!not-for-mail
From: Oon-Ee Ng <ngoonee.talk@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
	of Pulseaudio?
Date: Fri, 30 Dec 2011 07:52:36 +0800
Lines: 25
Approved: news@gmane.org
Message-ID: <CAGQ70euZrgB4N_zjc9N+G5tV54yAwqjpztvSX-oWCjCYJeCXug@mail.gmail.com>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <1324637340.10606.124.camel@localhost.localdomain>
 <CAMw+j7Lt_scVbwj7BfW6uQVfM6=a5R01vaGsLsvyGhZ0SiH1nA@mail.gmail.com>
 <10860676.TolBvm7Dii@leto>
 <20111229053635.GA2806@linlap.wavecable.com>
 <CAGQ70ev-Ek66X9ygkDfcD_N8XD++bO4NfjR1fenYOGk4ioDmNg@mail.gmail.com>
 <4EFCB80A.10000@gmail.com> <4EFCC02B.1020209@krinchan.com>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-Trace: dough.gmane.org 1325202769 8400 80.91.229.12 (29 Dec 2011 23:52:49 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Thu, 29 Dec 2011 23:52:49 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 30 00:52:46 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1RgPm8-0002F4-Fn
	for glag-arch@m.gmane.org; Fri, 30 Dec 2011 00:52:44 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id C0E69900FB;
	Thu, 29 Dec 2011 18:52:36 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id CCCBF86179
 for <arch-general@archlinux.org>; Thu, 29 Dec 2011 18:52:35 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.215.172 is
 authorized to use 'ngoonee.talk@gmail.com' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="ngoonee.talk@gmail.com";
 helo=mail-ey0-f172.google.com; client-ip=209.85.215.172
Original-Received: from mail-ey0-f172.google.com (mail-ey0-f172.google.com
 [209.85.215.172])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 847ED900FA
 for <arch-general@archlinux.org>; Thu, 29 Dec 2011 18:52:34 -0500 (EST)
Original-Received: by eaak10 with SMTP id k10so5206063eaa.3
 for <arch-general@archlinux.org>; Thu, 29 Dec 2011 15:52:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :content-type; bh=iwVI3DPAGpc8zbRacF7wRoo9nWBzmHZfP1TokIs7he8=;
 b=H12/nbaRib63FyKD5CHR/Ztf7GUL4dhYVSElv2Cr3YDHWlmRBQMHEXqbSs4Y6bJH0/
 Rh4IwvVEX/HEiR/MbLr082GbVofmyhmJvb80HuuI6gB+4KLA+mfH8h31EXg57CX8ESza
 yQdwIeo9SQXOV2AyHbpaQh+Z49dx3Es2bTzoY=
Original-Received: by 10.204.38.16 with SMTP id z16mr9354060bkd.66.1325202757413; Thu,
 29 Dec 2011 15:52:37 -0800 (PST)
Original-Received: by 10.204.41.199 with HTTP; Thu, 29 Dec 2011 15:52:36 -0800 (PST)
Original-Received: by 10.204.41.199 with HTTP; Thu, 29 Dec 2011 15:52:36 -0800 (PST)
In-Reply-To: <4EFCC02B.1020209@krinchan.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.14
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
Xref: news.gmane.org gmane.linux.arch.general:38474
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38474>

On Dec 30, 2011 3:32 AM, "David Kolb" <david.kolb@krinchan.com> wrote:
>
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> On 12/29/2011 1:57 PM, Don Juan wrote:
> > If its a repeated question why not either no one respond which
> > would force the person to research on their own or just send one
> > message to check the wiki and or other pertinent place where the
> > info has been said numerous times. I am on gumstix board as well
> > and thats how they roll, stupid question or one thats commonly
> > asked and answered tons of times just get ignored or someone takes
> > 2 seconds to say hey read the wiki or search the archives of this
> > board question has been answered.
> >
> > Just my .02 from a recent Arch convert.
>
> I was wondering why the same thing didn't happen here.  The last time
> I asked a silly question on a mailing list, I woke up the next morning
> to over 200 messages to me, not the mailing list, with various links
> to LMGTFY.com.  The lesson was learned without too much embarrassment
> on my part and barely a blip of mailing list traffic.
>
It's because the word "pulseaudio" generates emotional reactions =)

