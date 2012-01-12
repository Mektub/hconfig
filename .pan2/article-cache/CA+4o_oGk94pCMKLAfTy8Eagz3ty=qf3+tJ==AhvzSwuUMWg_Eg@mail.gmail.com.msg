Path: news.gmane.org!not-for-mail
From: Stefan Wilkens <stefanwilkens@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
	of Pulseaudio?
Date: Fri, 23 Dec 2011 10:38:07 +0100
Lines: 45
Approved: news@gmane.org
Message-ID: <CA+4o_oGk94pCMKLAfTy8Eagz3ty=qf3+tJ==AhvzSwuUMWg_Eg@mail.gmail.com>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Trace: dough.gmane.org 1324633100 10843 80.91.229.12 (23 Dec 2011 09:38:20 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 09:38:20 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 10:38:17 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re1Zv-0008RU-38
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 10:38:15 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 8BB499007D;
	Fri, 23 Dec 2011 04:38:10 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 00C6F86163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:38:09 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 74.125.83.44 is authorized
 to use 'stefanwilkens@gmail.com' in 'mfrom' identity (mechanism
 'ip4:74.125.0.0/16' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="stefanwilkens@gmail.com";
 helo=mail-ee0-f44.google.com; client-ip=74.125.83.44
Original-Received: from mail-ee0-f44.google.com (mail-ee0-f44.google.com [74.125.83.44])
 by gerolde.archlinux.org (Postfix) with ESMTPS id B541B9007C
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:38:07 -0500 (EST)
Original-Received: by eekc14 with SMTP id c14so8985791eek.3
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 01:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :content-type:content-transfer-encoding;
 bh=vOqLpAdwOPXoT+eaDtdNNragyaZ2SsuCeRBrWs+lvbE=;
 b=CZKqFoWvLsILYuWQOEdYz1DYyxI7Ji3bswIpB90c33Poq7IxtG778o56I06ikmcYrP
 g2We5pMu4UmpKclNqbiTmHShxDQAj5RLPKMA2nshOV4bBVt1wiMyXx5iADILtSxi7USr
 ZQQEk41jnQPoBpsLNQg2AgpEiIky9P6UesWQU=
Original-Received: by 10.14.99.78 with SMTP id w54mr5628224eef.33.1324633087900; Fri,
 23 Dec 2011 01:38:07 -0800 (PST)
Original-Received: by 10.213.10.2 with HTTP; Fri, 23 Dec 2011 01:38:07 -0800 (PST)
In-Reply-To: <4EF44980.8060609@archlinux.org>
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
Xref: news.gmane.org gmane.linux.arch.general:38363
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38363>

Pulse recently replaced esound as the dependent sound server for
gnome[1], esound has been marked dead.

You might have some relative success if you drop pulse and do some
per-application configuration to redirect their default output to alsa
or OSS. While this would work for applications such as gstreamer
(gstreamer-properties), pidgin, vlc, mplayer.. you will find yourself
with a broken gnome. You'll need a new mixer application, setup
software mixing (or hardware if your card privides) etc.

You may find life simpler by disabling [2] pulse, rather than removing it.

[1] http://live.gnome.org/PulseAudio
[2] https://bbs.archlinux.org/viewtopic.php?pid=3D928817#p928817

2011/12/23 Ionut Biru <ibiru@archlinux.org>:
> On 12/23/2011 11:25 AM, Ralf Madorf wrote:
>> On Fri, 2011-12-23 at 11:17 +0200, Ionut Biru wrote:
>>> can you clarify that you are talking about pulseaudio and not about
>>> libpulse?
>>
>> # pacman -Rss pulseaudio
>> checking dependencies...
>> error: failed to prepare transaction (could not satisfy dependencies)
>> :: gnome-settings-daemon: requires pulseaudio
>> :: pulseaudio-alsa: requires pulseaudio
>>
>>
>>
>
> ok then, gnome requires pulseaudio. The only way to get rid of
> pulseaudio is to get rid of gnome.
>
> --
> Ionu=C8=9B
>



--=20
msn: stefan_wilkens@hotmail.com
e-mail: stefanwilkens@gmail.com
blog: http://www.stefanwilkens.eu/
adres: Lipperkerkstraat 14 7511 DA Enschede

