Path: news.gmane.org!not-for-mail
From: C Anthony Risinger <anthony@xtfx.me>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
	of Pulseaudio?
Date: Sat, 24 Dec 2011 01:49:38 -0600
Lines: 49
Approved: news@gmane.org
Message-ID: <CAGAVQTGtuB3Xz1HEpZWbR3QwK_ASMyP10TCq6xvUtH5vb+=qFg@mail.gmail.com>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <CA+4o_oGk94pCMKLAfTy8Eagz3ty=qf3+tJ==AhvzSwuUMWg_Eg@mail.gmail.com>
 <1324634614.9930.75.camel@localhost.localdomain>
 <4EF54857.4010008@brendanlong.com>
 <1324710528.1216.44.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Trace: dough.gmane.org 1324713011 24924 80.91.229.12 (24 Dec 2011 07:50:11 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sat, 24 Dec 2011 07:50:11 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Sat Dec 24 08:50:07 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1ReMMo-0001VM-13
	for glag-arch@m.gmane.org; Sat, 24 Dec 2011 08:50:06 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 907AD90174;
	Sat, 24 Dec 2011 02:50:00 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 97B5286164
 for <arch-general@archlinux.org>; Sat, 24 Dec 2011 02:49:58 -0500 (EST)
Received-SPF: pass (xtfx.me: Sender is authorized to use 'anthony@xtfx.me' in
 'mfrom' identity (mechanism 'include:_spf.google.com' matched))
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="anthony@xtfx.me"; helo=mail-qy0-f172.google.com;
 client-ip=209.85.216.172
Original-Received: from mail-qy0-f172.google.com (mail-qy0-f172.google.com
 [209.85.216.172])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 78B1090169
 for <arch-general@archlinux.org>; Sat, 24 Dec 2011 02:49:57 -0500 (EST)
Original-Received: by qcsf15 with SMTP id f15so5978946qcs.3
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 23:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xtfx.me; s=google;
 h=mime-version:x-originating-ip:in-reply-to:references:from:date
 :message-id:subject:to:content-type;
 bh=mJC+rHjJJw6ElBwlp+gIQHu/3Cqsm8r90SMvscKftJw=;
 b=ZnLEq4uqfTCkOg0CFpZBBVbKdNeSpZjOkWnj4rRLIIiQQk/4RJbEhohoMXJuusTDA+
 vRg0klD1jfK7rgw045eeK2zKIf5Vn66hsQGp7NmqCdvF6iQOBwswpab2B7bX8NtmvbAO
 EniCP6J4FR7tpy3GsaOuP9r72tL5CQttK2ZtY=
Original-Received: by 10.224.42.68 with SMTP id r4mr21527001qae.97.1324712999186; Fri,
 23 Dec 2011 23:49:59 -0800 (PST)
Original-Received: by 10.229.20.193 with HTTP; Fri, 23 Dec 2011 23:49:38 -0800 (PST)
X-Originating-IP: [67.233.230.34]
In-Reply-To: <1324710528.1216.44.camel@localhost.localdomain>
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
Xref: news.gmane.org gmane.linux.arch.general:38452
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38452>

On Sat, Dec 24, 2011 at 1:08 AM, Ralf Madorf <ralf.mardorf@alice-dsl.net> wrote:
>
> [...] what would be the difference [...] For Debian I [...]

Ralf ...

your thread has managed to generate 65+ responses in 24 hours -- yet
you have not actually encountered a problem, nor produced anything
concrete to work with -- and thus far you've only provided conjectures
regarding PulseAudio, and vagaries surrounding your vision of an
ideal/niche setup.

last night i would have been the first to reply to your message, as i
was attempting to curtail the resultant flood i knew would undoubtedly
ensue, (alas, writing a page of text on a mobile takes forever) ... i
provided all the details needed to understand the decisions made, as
many others subsequently did ... one way or another.

to reiterate, packages that *can* use PA will pull in libpulse to
satisfy those of us that *want* to use what has become a fine sound
server.  if a package *needs* PA to function _as intended upstream_,
it will pull pulseaudio.  GDM is the latter.  if you do not like this,
simply use a different login manager -- problem solved -- or take to
fight to the next level, which is far from here.

you're comments RE:PA appear to be from 3rd party information,
possibly years outdated, as you have not provided any indication
suggesting you've encountered an issue, first-hand, ascribable to
PulseAudio .  methinks if you scan your system, you will likely find
oodles of "stuff" you "don't need" ... package managers are limited in
flexibility, and thus can only provide coarse/best-guess dependency
resolutions.  the decisions made by Arch developers provide you
maximum flexibility, within said limits, and are likely beyond what
several other distros would afford you.

i thoroughly recommend immediately and permanently terminating this
line of conversation, and returning when you have encountered a
_concrete_ problem by which PulseAudio is [seemingly] causing an
immediate, and diagnosable, issue, and you are unable to solve it via
the usuals (eg. wiki, bbs, GOOG) ... else, i suspect your ability to
procure future solutions from this list, and your peers, will be
hampered by the impression being formed right now.

take it or leave it :-)

-- 

C Anthony

