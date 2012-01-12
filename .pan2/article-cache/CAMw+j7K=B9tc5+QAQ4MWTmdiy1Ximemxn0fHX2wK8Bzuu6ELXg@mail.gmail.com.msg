Path: news.gmane.org!not-for-mail
From: Kwpolska <kwpolska@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
	of Pulseaudio?
Date: Fri, 23 Dec 2011 10:57:03 +0100
Lines: 59
Approved: news@gmane.org
Message-ID: <CAMw+j7K=B9tc5+QAQ4MWTmdiy1Ximemxn0fHX2wK8Bzuu6ELXg@mail.gmail.com>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <1324633877.9930.65.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Trace: dough.gmane.org 1324634234 18364 80.91.229.12 (23 Dec 2011 09:57:14 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 09:57:14 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 10:57:10 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re1sE-0000WK-74
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 10:57:10 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 0046B9008D;
	Fri, 23 Dec 2011 04:57:05 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 4743086163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:57:04 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.215.44 is authorized
 to use 'kwpolska@gmail.com' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="kwpolska@gmail.com";
 helo=mail-lpp01m010-f44.google.com; client-ip=209.85.215.44
Original-Received: from mail-lpp01m010-f44.google.com (mail-lpp01m010-f44.google.com
 [209.85.215.44])
 by gerolde.archlinux.org (Postfix) with ESMTPS id DFC6190089
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:57:03 -0500 (EST)
Original-Received: by laah2 with SMTP id h2so3497242laa.3
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 01:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :content-type:content-transfer-encoding;
 bh=dNzSXIngw3OXqaz3r0vhFLkNZNBKw+4295vztfZeTEc=;
 b=HKTA0awinJWP5XqlhN6KKecRFut2vCGvob27yuM/RDo5tlaC4ZOcC4QFz29WYDlTrS
 JT0zuieawyKZOvwjeO89aLb4iajLNzgvJaDCfTChqaE2bSTrzJ9kV509lJQb+RHNmw9k
 0Li1uk+xHS2Vq4iyOvcblcxG6/UCtPjF96Usg=
Original-Received: by 10.152.135.179 with SMTP id pt19mr11117679lab.47.1324634223323;
 Fri, 23 Dec 2011 01:57:03 -0800 (PST)
Original-Received: by 10.152.145.234 with HTTP; Fri, 23 Dec 2011 01:57:03 -0800 (PST)
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
Xref: news.gmane.org gmane.linux.arch.general:38368
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38368>

On Fri, Dec 23, 2011 at 10:51 AM, Ralf Madorf
<ralf.mardorf@alice-dsl.net> wrote:
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

GDM is a part of GNOME, it pulls one bazillion GNOME dependencies, and
one of them is, in fact, PulseAudio.

>
> 2.
>
> I had GNOME3 installed for Debian and 2 dummy packages solved all
> issues, since GNOME3 doesn't need PA, just some "my computer should be a
> toy, instead of a tool" tasks need PA.
>
> Okay, if the policy of Arch Linux is to force people to install unneeded
> stuff, than it simply isn't the distro I should use.

Don't blame Arch.  It is GNOME's fault, because they are too lazy to
use something more universal rather than sticking with Pulse.

On the other thought, you are an idiot anyways, and it would be better
to get you out of there.  Arch IS NOT a distro for idiots that can't
read the pacman output.

>
> Thanks,
>
> Ralf
>



--=20
Kwpolska <http://kwpolska.tk>
stop html mail =C2=A0 =C2=A0 =C2=A0| always bottom-post
www.asciiribbon.org | www.netmeister.org/news/learn2quote.html
GPG KEY: 5EAAEA16 =C2=A0 | Arch Linux x86_64, zsh, mutt, vim.
# vim:set textwidth=3D70:

