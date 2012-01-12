Path: news.gmane.org!not-for-mail
From: C Anthony Risinger <anthony@xtfx.me>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
	of Pulseaudio?
Date: Fri, 23 Dec 2011 03:39:11 -0600
Lines: 33
Approved: news@gmane.org
Message-ID: <CAGAVQTFKQxo4a2Bjg8nBPyjE+Ue5QKNdB1y8A8WjOXbMBjX49w@mail.gmail.com>
References: <1324629697.9930.38.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Trace: dough.gmane.org 1324633167 11311 80.91.229.12 (23 Dec 2011 09:39:27 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 09:39:27 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 10:39:21 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re1ay-0000Wj-OX
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 10:39:21 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 3F0BA9007D;
	Fri, 23 Dec 2011 04:39:12 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id A2EE386163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:39:10 -0500 (EST)
Received-SPF: pass (xtfx.me: Sender is authorized to use 'anthony@xtfx.me' in
 'mfrom' identity (mechanism 'include:_spf.google.com' matched))
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="anthony@xtfx.me"; helo=mail-qw0-f51.google.com;
 client-ip=209.85.216.51
Original-Received: from mail-qw0-f51.google.com (mail-qw0-f51.google.com
 [209.85.216.51])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 954639007C
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:39:10 -0500 (EST)
Original-Received: by qadz3 with SMTP id z3so6211721qad.3
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 01:39:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xtfx.me; s=google;
 h=mime-version:x-originating-ip:in-reply-to:references:date
 :message-id:subject:from:to:content-type;
 bh=F9YOZTMiElKmuvYEM1c0wb5ubOveHZAZjrZF2i11tyo=;
 b=ZzrHI7KoZEMEDgMiC7j9N3h3y0WjE8Hnfqrmxtm7Nl+b4pdFLtoekW7lMxWoIY5mCe
 Dy2xt97oTa3kNLEAlFx7PbBMpEyPD7gVxTxbiR09jdcwCsfQbA/X08MuD293nkCoyB7o
 rIZ2ElhkKhRxkw/9y8Gdp+e0b/J2ODqmRsXQk=
Original-Received: by 10.224.42.68 with SMTP id r4mr17348585qae.97.1324633151470; Fri,
 23 Dec 2011 01:39:11 -0800 (PST)
Original-Received: by 10.229.20.193 with HTTP; Fri, 23 Dec 2011 01:39:11 -0800 (PST)
X-Originating-IP: [67.233.230.34]
Original-Received: by 10.229.20.193 with HTTP; Fri, 23 Dec 2011 01:39:11 -0800 (PST)
In-Reply-To: <1324629697.9930.38.camel@localhost.localdomain>
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
Xref: news.gmane.org gmane.linux.arch.general:38364
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38364>

On Dec 23, 2011 2:41 AM, "Ralf Madorf" <ralf.mardorf@alice-dsl.net> wrote:
>
> Is there a clean solution to get completely rid of PA?

Do not install an application requiring it?

You'll need to provide context about what you're trying to accomplish
(clear and simple goals) and what you've already done (eg. I ran command
xyz, I installed gnome, etc ...)

So far we've only learned PA probably sux, you don't want it on you system,
and some random bits about Debian ;-) ... best to assume nothing of the
solution since that's what you are here requesting.  Simply state your
end-goals, the issue(s), and the path taken thus far.

IIRC PA is split into a library package, among others. Many pkgs will dep
libpulse, but it cannot be loaded (or possibly will not) without the
accompanying support packages.

Audio is not my thing, but I absorb passively often as possible.  PA will
play nicely with other impls by suspending itself and releasing the
hardware when requested, allowing (JACK and ?) others to assume control.
My guess is there is not an issue here ... I suggest moving forward until a
concrete problem is encountered, or running headless.

While I'm not into pro audio, I do use PA successfully on several machines
daily with great satisfaction and zero issue; be sure you understand the
difference between ALSA, alsa-lib, and PA.

--

C Anthony [mobile]

