Path: news.gmane.org!not-for-mail
From: Tom Gundersen <teg@jklm.no>
Newsgroups: gmane.linux.arch.general
Subject: Re: [arch-dev-public] [RFC] new manpages
Date: Sun, 1 Jan 2012 01:10:09 +0100
Lines: 27
Approved: news@gmane.org
Message-ID: <CAG-2HqU+FCUmy1DOo4v4O6Bwq_DVk0KW3+toZgvZ0t6pYi88xA@mail.gmail.com>
References: <CAG-2HqV+ecbwu+_KJ15N_uc+V3S_ewYizrd8YTgm=vQM1mMtBw@mail.gmail.com>
 <20111231145300.45a93de2@bluemoon.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Trace: dough.gmane.org 1325376641 15069 80.91.229.12 (1 Jan 2012 00:10:41 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sun, 1 Jan 2012 00:10:41 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Sun Jan 01 01:10:38 2012
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Rh90X-0003ok-O0
	for glag-arch@m.gmane.org; Sun, 01 Jan 2012 01:10:37 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id C962C901B1;
	Sat, 31 Dec 2011 19:10:29 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 3EE8F8617F
 for <arch-general@archlinux.org>; Sat, 31 Dec 2011 19:10:28 -0500 (EST)
Received-SPF: pass (jklm.no: Sender is authorized to use 'teg@jklm.no' in
 'mfrom' identity (mechanism 'include:_spf.google.com' matched))
 receiver=gerolde.archlinux.org; identity=mailfrom; envelope-from="teg@jklm.no";
 helo=mail-wi0-f172.google.com; client-ip=209.85.212.172
Original-Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
 [209.85.212.172])
 by gerolde.archlinux.org (Postfix) with ESMTPS id F1A3F90179
 for <arch-general@archlinux.org>; Sat, 31 Dec 2011 19:10:27 -0500 (EST)
Original-Received: by wibhj6 with SMTP id hj6so8445573wib.3
 for <arch-general@archlinux.org>; Sat, 31 Dec 2011 16:10:30 -0800 (PST)
Original-Received: by 10.180.107.134 with SMTP id hc6mr93465653wib.21.1325376630386;
 Sat, 31 Dec 2011 16:10:30 -0800 (PST)
Original-Received: by 10.180.77.231 with HTTP; Sat, 31 Dec 2011 16:10:09 -0800 (PST)
X-Originating-IP: [84.212.224.43]
In-Reply-To: <20111231145300.45a93de2@bluemoon.localdomain>
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
Xref: news.gmane.org gmane.linux.arch.general:38500
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38500>

On Sat, Dec 31, 2011 at 9:53 PM, Leonid Isaev <lisaev@umail.iu.edu> wrote:
> A problem though: I get a failure while setting timezone on a ro root
> with /etc/localtime symlinked to /usr/share/zoneinfo/America/Chicago, whi=
ch
> seems to be caused by this:
> $ grep zoneinfo /etc/rc.d/functions -m1
> =C2=A0 =C2=A0 =C2=A0 =C2=A0local tz=3D$1 zonefile=3D/usr/share/zoneinfo/$=
tz
>
> so $zonefile is only /usr/share/zoneinfo instead
> of /usr/share/zoneinfo/America/Chicago. Later set_timezone() attempts to
> force-symlink /etc/localtime and fails of course. The fix is to replace t=
he
> above stanza with:
> local tz=3D$1
> local zonefile=3D/usr/share/zoneinfo/$tz

You are absolutely right. Fixed in git. Thanks for reporting!

> Happy New Year!

Happy New Year!

Cheers,

Tom

