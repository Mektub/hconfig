Path: news.gmane.org!not-for-mail
From: Ionut Biru <ibiru@archlinux.org>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Fri, 23 Dec 2011 11:27:28 +0200
Lines: 46
Approved: news@gmane.org
Message-ID: <4EF44980.8060609@archlinux.org>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig941DD03896CC055C4B8C4A4F"
X-Trace: dough.gmane.org 1324632458 6897 80.91.229.12 (23 Dec 2011 09:27:38 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 09:27:38 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 10:27:34 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re1PZ-0003YC-AB
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 10:27:33 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 5C71D90081;
	Fri, 23 Dec 2011 04:27:30 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id D06E586163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:27:28 -0500 (EST)
Original-Received: from [192.168.1.2] (unknown [81.196.77.121])
 by gerolde.archlinux.org (Postfix) with ESMTPSA id 99BBF9007B
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:27:28 -0500 (EST)
User-Agent: Mozilla/5.0 (X11; Linux i686;
 rv:9.0) Gecko/20111221 Thunderbird/9.0
In-Reply-To: <1324632316.9930.45.camel@localhost.localdomain>
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
Xref: news.gmane.org gmane.linux.arch.general:38360
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38360>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig941DD03896CC055C4B8C4A4F
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 12/23/2011 11:25 AM, Ralf Madorf wrote:
> On Fri, 2011-12-23 at 11:17 +0200, Ionut Biru wrote:
>> can you clarify that you are talking about pulseaudio and not about
>> libpulse?
>=20
> # pacman -Rss pulseaudio
> checking dependencies...
> error: failed to prepare transaction (could not satisfy dependencies)
> :: gnome-settings-daemon: requires pulseaudio
> :: pulseaudio-alsa: requires pulseaudio
>=20
>=20
>=20

ok then, gnome requires pulseaudio. The only way to get rid of
pulseaudio is to get rid of gnome.

--=20
Ionu=C8=9B


--------------enig941DD03896CC055C4B8C4A4F
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJO9EmBAAoJEOjxi6FhUTe8FhgIAL04YuO5Uy2fHpqrlO+LfLFd
kRopik6/0wi6ypFvW+2bnzib3zZLWxwyDV/CCZwi5ap+TL58jVUMrJIuTOMZar0J
x8+cQV/szuF9pQYgk44kRmkrCDXE0IjqMxNgrZqzp6Fad6e5d3z+ntSDww6KU0jD
Z5msNXsAUtF18gYKcFx02Vl+aH+3GmGAgFT6CAPvzgD2JcQjIIz/HhkpIRcUEARh
sSXBfcqixHBJ8QwNV5Rs/FeudYDCFg3Z9etRrWAMTtm+JRsUQwQt1y1oD33FLDNT
fFZMLt1L0d53mRdK7t/WlG2rHDp8xUTkFWdvKQOsUW9b+t2NXZt+zGPLQ5OKU4E=
=lIee
-----END PGP SIGNATURE-----

--------------enig941DD03896CC055C4B8C4A4F--

