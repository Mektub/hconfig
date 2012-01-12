Path: news.gmane.org!not-for-mail
From: Paul Gideon Dann <pdgiddie@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
	of Pulseaudio?
Date: Fri, 23 Dec 2011 10:17:20 +0000
Lines: 27
Approved: news@gmane.org
Message-ID: <4837414.sDXcEBn3Pa@leto>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <1324633877.9930.65.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7Bit
X-Trace: dough.gmane.org 1324635462 26576 80.91.229.12 (23 Dec 2011 10:17:42 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 10:17:42 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 11:17:36 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re2Bw-00028V-DL
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 11:17:32 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 2EBE6900E4;
	Fri, 23 Dec 2011 05:17:29 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id B307986163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:17:27 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 74.125.82.172 is authorized
 to use 'pdgiddie@gmail.com' in 'mfrom' identity (mechanism
 'ip4:74.125.0.0/16' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="pdgiddie@gmail.com";
 helo=mail-we0-f172.google.com; client-ip=74.125.82.172
Original-Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
 [74.125.82.172])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 856FC900E4
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:17:27 -0500 (EST)
Original-Received: by werb14 with SMTP id b14so4071320wer.3
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 02:17:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=from:to:subject:date:message-id:user-agent:in-reply-to:references
 :mime-version:content-transfer-encoding:content-type;
 bh=T2Tg3QBWg3mM7W8CTMmHSpjyPdENef19Tt35zlSdIvI=;
 b=Nt3Um29J7cYChwMJfYDy5AW1fjYJObugPf9//Xj3dPNTMWURgdfduP8X547r8hy/rQ
 RiCpLbZjoJo7VFxsX/A9tU8igc4QxLSV7GiBqmjOGuTP6Y2UvFvpbBatMfc/6x6ExYBZ
 3gQSNC7c4dT5CbaAx9Nf9yBGvNlkk4ICYv3TM=
Original-Received: by 10.216.131.72 with SMTP id l50mr13135509wei.28.1324635448077;
 Fri, 23 Dec 2011 02:17:28 -0800 (PST)
Original-Received: from leto.localnet ([87.127.209.2])
 by mx.google.com with ESMTPS id z5sm30224350wix.5.2011.12.23.02.17.26
 (version=SSLv3 cipher=OTHER); Fri, 23 Dec 2011 02:17:26 -0800 (PST)
User-Agent: KMail/4.7.4 (Linux/3.1.5-1-ARCH; KDE/4.7.4; x86_64; ; )
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
Xref: news.gmane.org gmane.linux.arch.general:38380
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38380>

On Friday 23 Dec 2011 10:51:17 Ralf Madorf wrote:
> I had GNOME3 installed for Debian and 2 dummy packages solved all
> issues, since GNOME3 doesn't need PA, just some "my computer should be a
> toy, instead of a tool" tasks need PA.
> 
> Okay, if the policy of Arch Linux is to force people to install unneeded
> stuff, than it simply isn't the distro I should use.

I'm sorry to hear you're unhappy with your ArchLinux setup.  Sadly, the 
PulseAudio requirement appears to be imposed by GNOME upstream, and there's 
nothing that ArchLinux can do other than patch GNOME, which would not be in 
keeping with the "Arch Way" (http://bit.ly/eOyYlB).

However, if I understand correctly, you're interested in using ArchLinux for a 
Digital Audio Workstation?  If you only need to use a couple of tools, you may 
find that you don't need a desktop environment, and could get away with a light 
window manager (e.g. OpenBox?) and login manager (SLiM?).

Alternatively, you could consider using KDE, which does not have a hard 
dependency on PulseAudio.  It's had a bad reputation for being resource-heavy, 
but that's not really the case these days, so long as you don't use any of the 
heavier features (e.g. Kontact); especially if you disable the "Semantic 
Desktop" in System Settings.

I hope this helps,
Paul

