Path: news.gmane.org!not-for-mail
From: fredbezies <fredbezies@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
	of Pulseaudio?
Date: Fri, 23 Dec 2011 10:57:06 +0100
Lines: 47
Approved: news@gmane.org
Message-ID: <CAG8iRG0hCokHqscLoHz4seNoOd2mqAp4r0ga7AAn7cCeqeYT2Q@mail.gmail.com>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <1324633877.9930.65.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-Trace: dough.gmane.org 1324634255 18495 80.91.229.12 (23 Dec 2011 09:57:35 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 09:57:35 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 10:57:31 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re1sZ-0000h6-KD
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 10:57:31 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 429019009B;
	Fri, 23 Dec 2011 04:57:28 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 3DF8486163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:57:26 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.216.44 is authorized
 to use 'fredbezies@gmail.com' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="fredbezies@gmail.com";
 helo=mail-qw0-f44.google.com; client-ip=209.85.216.44
Original-Received: from mail-qw0-f44.google.com (mail-qw0-f44.google.com
 [209.85.216.44])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 3066B9008F
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:57:25 -0500 (EST)
Original-Received: by qadb15 with SMTP id b15so5160273qad.3
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 01:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :content-type; bh=CZWyMG8v2y0nOhHqS2789/Xexwhw4rvJYL7b4/vk8dY=;
 b=ISsUJ5sPZ9+o7BjDtD+hgxCf7BR+cBTEr96dN12UZ188iCnV/IcxJBgeStTuQINzio
 SblRqfaJQlBF0VgJJXij4QNGYLc0/1mULjWkl5iHV752ASC3HOn0dSD7heLXRe4h0YRM
 N4Kix57VqhV0yb6gVGsu625Wga+SVgAVzJWo4=
Original-Received: by 10.224.197.131 with SMTP id ek3mr17776954qab.6.1324634247317;
 Fri, 23 Dec 2011 01:57:27 -0800 (PST)
Original-Received: by 10.229.79.78 with HTTP; Fri, 23 Dec 2011 01:57:06 -0800 (PST)
In-Reply-To: <1324633877.9930.65.camel@localhost.localdomain>
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
Xref: news.gmane.org gmane.linux.arch.general:38369
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38369>

2011/12/23 Ralf Madorf <ralf.mardorf@alice-dsl.net>:
> On Fri, 2011-12-23 at 11:27 +0200, Ionut Biru wrote:
>> On 12/23/2011 11:25 AM, Ralf Madorf wrote:
>> > On Fri, 2011-12-23 at 11:17 +0200, Ionut Biru wrote:
>> >> can you clarify that you are talking about pulseaudio and not about
>> >> libpulse?
>> >
>> > # pacman -Rss pulseaudio
>> > checking dependencies...
>> > error: failed to prepare transaction (could not satisfy dependencies)
>> > :: gnome-settings-daemon: requires pulseaudio
>> > :: pulseaudio-alsa: requires pulseaudio
>> >
>> >
>> >
>>
>> ok then, gnome requires pulseaudio. The only way to get rid of
>> pulseaudio is to get rid of gnome.
>
> 1.
>
> At the moment only GDM is installed, not GNOME.
>
> 2.
>
> I had GNOME3 installed for Debian and 2 dummy packages solved all
> issues, since GNOME3 doesn't need PA, just some "my computer should be a
> toy, instead of a tool" tasks need PA.
>
> Okay, if the policy of Arch Linux is to force people to install unneeded
> stuff, than it simply isn't the distro I should use.
>
> Thanks,
>
> Ralf
>

No. The policy of Archlinux is to provide software which are as closed
as possible from upstream. Fill free to use a distribution which
tweaks to death software.

Have a good day.

-- 
Frederic Bezies
fredbezies@gmail.com

