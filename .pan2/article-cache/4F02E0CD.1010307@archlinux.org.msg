Path: news.gmane.org!not-for-mail
From: =?ISO-8859-15?Q?Thomas_B=E4chler?= <thomas@archlinux.org>
Newsgroups: gmane.linux.arch.general
Subject: Re: unionfs or aufs, available somewhere?
Date: Tue, 03 Jan 2012 12:04:45 +0100
Lines: 53
Approved: news@gmane.org
Message-ID: <4F02E0CD.1010307@archlinux.org>
References: <CAAExw5ugL-Xb4tbdp29VhLbXMcUB7G0nWSw=FH+icuK3-R9w4g@mail.gmail.com>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------enig625AB17773E98709F462AD04"
X-Trace: dough.gmane.org 1325588702 27121 80.91.229.12 (3 Jan 2012 11:05:02 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Tue, 3 Jan 2012 11:05:02 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Tue Jan 03 12:04:58 2012
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Ri2Ar-000369-TC
	for glag-arch@m.gmane.org; Tue, 03 Jan 2012 12:04:58 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id CE208900FF;
	Tue,  3 Jan 2012 06:04:47 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 7B19B86180
 for <arch-general@archlinux.org>; Tue,  3 Jan 2012 06:04:46 -0500 (EST)
Original-Received: from [134.61.84.47] (84-047.eduroam.RWTH-Aachen.DE [134.61.84.47])
 by gerolde.archlinux.org (Postfix) with ESMTPSA id 2AD92900F6
 for <arch-general@archlinux.org>; Tue,  3 Jan 2012 06:04:45 -0500 (EST)
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:8.0) Gecko/20111108 Thunderbird/8.0
In-Reply-To: <CAAExw5ugL-Xb4tbdp29VhLbXMcUB7G0nWSw=FH+icuK3-R9w4g@mail.gmail.com>
X-Enigmail-Version: 1.3.4
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
Xref: news.gmane.org gmane.linux.arch.general:38520
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38520>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig625AB17773E98709F462AD04
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: quoted-printable

Am 03.01.2012 11:26, schrieb Magnus Therning:
> Is either of them easily available somewhere?
>=20
> I'd like to use the `union-type=3D` option of `schroot`, but so far it
> looks like I'll have to get a new kernel from AUR and compile aufs3
> myself to set it up.  Is neither of these rather useful filesystems
> available pre-built somewhere?

None of these filesystems work with an unpatched kernel. None of these
are particularly fast or stable. None of these keep up well with current
Linux development.

The new and shiny overlayfs has still not been merged into 3.2 and union
mounts development has stalled for a long time.

It is 2012 now and the whole situation still sucks. We switched to
(block-based) device mapper snapshots in archiso, which is stable, but
far from optimal. This does not completely replace unioning and is
likely not a good solution to use with schroot.



--------------enig625AB17773E98709F462AD04
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQIcBAEBCAAGBQJPAuDQAAoJEChPw0yOSxolcXgP/RAOtIPnqN2pSMSNLTXPb9Rr
eesX73E7skJHjLZxaPpSk9lmxXEKNyw2e2rh6S34omUsWLfWHnwLOPxe0bRdr6t0
uTCYeucNPDWgr/INF30pMB2o1DfRjVLgnrPJLDpKDkxZZc69v7s5pYLfyCMVZDNz
CFhxcJK0/PpY9pZF8h2cUqSjR8WpgQH7eJi9RzezOh6wMMta+mh749e2C5IR2yPz
5rDKPNsGB7z9FhH3sJjE1vYb61acVmHPjrJsZa5dumlVj9w0cqCq58tueXDjzzKI
y3cF7kvtTBBtH1De/CYXO19sKzFmcZOJ1pkq0vuECFEYE1ai2G2opWz5Uol7LyC+
pvxVeWldUADKwtT2T41YmSTXFI1+ydGliB8IAEppMVuCxFNn/pAVKDzEdC2LZ+xu
5pE+uEmwS3GsSiCvsAI0OdfEgaAncJKBe/q4RkauSVdiO2bxFKMR0Oq6F4pYpzue
Oaqx18JvSAdvHQ7pQBEWCCGnHT8vrZogX0TaZfw6h/nPLGIQ6hVvhLHWVGh5q+4/
CsSGmXJ6zrvsPpTHxDGmp5GWTKIRbzi8+pSwY9g/Ydxa7qFsfXf1Nymdovxs04es
WnxReGAUSoBe0AseuhYVta59pEArzJhTsvwHhxwJ6cet5++tCiPtr40HjcxMEwq3
URBnP6NCZxsimxaDWKqT
=F/fN
-----END PGP SIGNATURE-----

--------------enig625AB17773E98709F462AD04--

