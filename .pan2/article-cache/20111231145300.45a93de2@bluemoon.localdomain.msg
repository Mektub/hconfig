Path: news.gmane.org!not-for-mail
From: Leonid Isaev <lisaev@umail.iu.edu>
Newsgroups: gmane.linux.arch.general
Subject: Re: [arch-dev-public] [RFC] new manpages
Date: Sat, 31 Dec 2011 14:53:00 -0600
Lines: 60
Approved: news@gmane.org
Message-ID: <20111231145300.45a93de2@bluemoon.localdomain>
References: <CAG-2HqV+ecbwu+_KJ15N_uc+V3S_ewYizrd8YTgm=vQM1mMtBw@mail.gmail.com>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=PGP-SHA1;
 boundary="Sig_/EeNc+WM3tJuDQjf.yQQbmj2"; protocol="application/pgp-signature"
X-Trace: dough.gmane.org 1325364800 21869 80.91.229.12 (31 Dec 2011 20:53:20 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sat, 31 Dec 2011 20:53:20 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Sat Dec 31 21:53:16 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Rh5vY-000523-A8
	for glag-arch@m.gmane.org; Sat, 31 Dec 2011 21:53:16 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id A6E0D900E2;
	Sat, 31 Dec 2011 15:53:08 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 4921E8617F
 for <arch-general@archlinux.org>; Sat, 31 Dec 2011 15:53:07 -0500 (EST)
Received-SPF: none (umail.iu.edu: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="lisaev@umail.iu.edu"; helo=mail-qw0-f44.google.com;
 client-ip=209.85.216.44
Original-Received: from mail-qw0-f44.google.com (mail-qw0-f44.google.com
 [209.85.216.44])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 2EBEB900E0
 for <arch-general@archlinux.org>; Sat, 31 Dec 2011 15:53:06 -0500 (EST)
Original-Received: by qadb15 with SMTP id b15so8973060qad.3
 for <arch-general@archlinux.org>; Sat, 31 Dec 2011 12:53:10 -0800 (PST)
Original-Received: by 10.224.182.10 with SMTP id ca10mr46693856qab.1.1325364789975;
 Sat, 31 Dec 2011 12:53:09 -0800 (PST)
Original-Received: from bluemoon.localdomain (c-68-82-171-61.hsd1.pa.comcast.net.
 [68.82.171.61])
 by mx.google.com with ESMTPS id el3sm17649286qab.8.2011.12.31.12.53.08
 (version=TLSv1/SSLv3 cipher=OTHER);
 Sat, 31 Dec 2011 12:53:08 -0800 (PST)
In-Reply-To: <CAG-2HqV+ecbwu+_KJ15N_uc+V3S_ewYizrd8YTgm=vQM1mMtBw@mail.gmail.com>
X-Mailer: Claws Mail 3.8.0 (GTK+ 2.24.8; x86_64-unknown-linux-gnu)
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
Xref: news.gmane.org gmane.linux.arch.general:38494
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38494>

--Sig_/EeNc+WM3tJuDQjf.yQQbmj2
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Sat, 31 Dec 2011 20:38:31 +0100
Tom Gundersen <teg@jklm.no> wrote:

> Hi guys,
>=20
> Initscripts in [testing] contain some new man pages documenting
> /etc/{rc.conf,locale.conf,vconsole.conf,hostname}, intended for the
> next iso release.
>=20
> Corrections and comments welcome (preferably in the form of patches to
> arch-projects...).
>=20
> Cheers,
>=20
> Tom

Thank you for this release!

A problem though: I get a failure while setting timezone on a ro root
with /etc/localtime symlinked to /usr/share/zoneinfo/America/Chicago, which
seems to be caused by this:
$ grep zoneinfo /etc/rc.d/functions -m1
	local tz=3D$1 zonefile=3D/usr/share/zoneinfo/$tz

so $zonefile is only /usr/share/zoneinfo instead
of /usr/share/zoneinfo/America/Chicago. Later set_timezone() attempts to
force-symlink /etc/localtime and fails of course. The fix is to replace the
above stanza with:
local tz=3D$1
local zonefile=3D/usr/share/zoneinfo/$tz

Happy New Year!

--=20
Leonid Isaev
GnuPG key ID: 164B5A6D
Key fingerprint: C0DF 20D0 C075 C3F1 E1BE  775A A7AE F6CB 164B 5A6D

--Sig_/EeNc+WM3tJuDQjf.yQQbmj2
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAEBAgAGBQJO/3YsAAoJEKeu9ssWS1pt4XAIAKzZ4czR9Ud5GpvxaS9Nc6Df
FBlB2ecNsgj5alqoKJQCyFaLtwq1+z/0ig7T0H2bbqm/RaGPe5+d/+R77Wy4lR3r
G8ANzyrJqeVcEHVF64fiAJGSViVhWBwwI2aEgq/2ORdmz0+LL2mmPxfpYUDLcTcI
Oy57GSi3MftJBEihXZJ5ExzLieC0Spgm3JnEfZWsmW0LQrOXPfbQdWlU7Hd3GuSs
GITrRfQZ/xp40jN1nU0hI5PO6jMnQIRB2A4GUFEcmB2S+UYRF1CGweN30eAiPGbO
GrloFWfF8ea2iXgOAUFerHPMS0ls5sSU8KgKylvxMXmsdfvOifo5dMewQU81s2Y=
=IcwF
-----END PGP SIGNATURE-----

--Sig_/EeNc+WM3tJuDQjf.yQQbmj2--

