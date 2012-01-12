Path: news.gmane.org!not-for-mail
From: Jonathan Vasquez <jvasquez1011@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
	of Pulseaudio?
Date: Fri, 23 Dec 2011 05:07:10 -0500
Lines: 39
Approved: news@gmane.org
Message-ID: <CAD+HWv9W02LyGhzdKvz0w6rfZ23Ofxbd0_afuZrNkxGVgPdo8g@mail.gmail.com>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <CA+4o_oGk94pCMKLAfTy8Eagz3ty=qf3+tJ==AhvzSwuUMWg_Eg@mail.gmail.com>
 <1324634614.9930.75.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-Trace: dough.gmane.org 1324634840 22228 80.91.229.12 (23 Dec 2011 10:07:20 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 10:07:20 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 11:07:16 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re220-0005cs-2H
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 11:07:16 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 5DFD99009C;
	Fri, 23 Dec 2011 05:07:11 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id B227986163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:07:09 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.212.44 is authorized
 to use 'jvasquez1011@gmail.com' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="jvasquez1011@gmail.com";
 helo=mail-vw0-f44.google.com; client-ip=209.85.212.44
Original-Received: from mail-vw0-f44.google.com (mail-vw0-f44.google.com
 [209.85.212.44])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 9CE1E9009B
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:07:09 -0500 (EST)
Original-Received: by vbbfo1 with SMTP id fo1so6015637vbb.3
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 02:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :content-type; bh=4c1AGxuzIozRsNWtufepLE6XPVEL5Hf4qWDCoWyBfZQ=;
 b=Or9vQX368ZMZmUKMUm0C7YM+Dz0k17VZdATcV3hHmj5i5iHF05SoyHbign4Jeg9VwO
 NENj49/HH+ApKL9O/omOmerpq1eAhsHJBxysCERjzAp/uB2pq1qHPhoiNgYqOqn3AqZ0
 P3mr65buyL4MeMgU2thtiafthklsaJ41ODC1Y=
Original-Received: by 10.52.26.110 with SMTP id k14mr7358183vdg.75.1324634830727; Fri,
 23 Dec 2011 02:07:10 -0800 (PST)
Original-Received: by 10.52.30.231 with HTTP; Fri, 23 Dec 2011 02:07:10 -0800 (PST)
In-Reply-To: <1324634614.9930.75.camel@localhost.localdomain>
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
Xref: news.gmane.org gmane.linux.arch.general:38374
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38374>

Arch Linux stands by being as close as possible to upstream. If upstream
makes a decision, Arch follows it. Arch hardly patches anything at all. So
basically whatever packages you get when you try to install something, is
the way that upstream wanted those packages to be installed.

On Fri, Dec 23, 2011 at 5:03 AM, Ralf Madorf <ralf.mardorf@alice-dsl.net>wrote:

> On Fri, 2011-12-23 at 10:38 +0100, Stefan Wilkens wrote:
> > Pulse recently replaced esound as the dependent sound server for
> > gnome[1], esound has been marked dead.
> >
> > You might have some relative success if you drop pulse and do some
> > per-application configuration to redirect their default output to alsa
> > or OSS. While this would work for applications such as gstreamer
> > (gstreamer-properties), pidgin, vlc, mplayer.. you will find yourself
> > with a broken gnome. You'll need a new mixer application, setup
> > software mixing (or hardware if your card privides) etc.
> >
> > You may find life simpler by disabling [2] pulse, rather than removing
> it.
> >
> > [1] http://live.gnome.org/PulseAudio
> > [2] https://bbs.archlinux.org/viewtopic.php?pid=928817#p928817
>
> So I should install PA, while not using it? Is this the interpretation
> of KISS by Arch Linux?
>
> I already have written that I'll use a HDSP card = HDSP mixer, a desktop
> mixer thingy won't be able to handle such an audio card and my sound
> server will be Jack with ALSA backend.
>
> - Ralf
>
>


-- 
Jonathan Vasquez

