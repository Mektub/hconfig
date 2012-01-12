Path: news.gmane.org!not-for-mail
From: Ionut Biru <ibiru@archlinux.org>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Fri, 23 Dec 2011 12:03:59 +0200
Lines: 80
Approved: news@gmane.org
Message-ID: <4EF4520F.7080406@archlinux.org>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <1324633877.9930.65.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig4E18E33B6E0466EC9AD3D1EC"
X-Trace: dough.gmane.org 1324634663 21084 80.91.229.12 (23 Dec 2011 10:04:23 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 10:04:23 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 11:04:18 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re1z7-00048U-Pd
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 11:04:18 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id A3DF4900A2;
	Fri, 23 Dec 2011 05:04:14 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 7937786163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:04:12 -0500 (EST)
Original-Received: from [192.168.1.2] (unknown [81.196.77.121])
 by gerolde.archlinux.org (Postfix) with ESMTPSA id 401B19009B
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:04:12 -0500 (EST)
User-Agent: Mozilla/5.0 (X11; Linux i686;
 rv:9.0) Gecko/20111221 Thunderbird/9.0
In-Reply-To: <1324633877.9930.65.camel@localhost.localdomain>
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
Xref: news.gmane.org gmane.linux.arch.general:38373
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38373>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig4E18E33B6E0466EC9AD3D1EC
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 12/23/2011 11:51 AM, Ralf Madorf wrote:
> On Fri, 2011-12-23 at 11:27 +0200, Ionut Biru wrote:
>> On 12/23/2011 11:25 AM, Ralf Madorf wrote:
>>> On Fri, 2011-12-23 at 11:17 +0200, Ionut Biru wrote:
>>>> can you clarify that you are talking about pulseaudio and not about
>>>> libpulse?
>>>
>>> # pacman -Rss pulseaudio
>>> checking dependencies...
>>> error: failed to prepare transaction (could not satisfy dependencies)=

>>> :: gnome-settings-daemon: requires pulseaudio
>>> :: pulseaudio-alsa: requires pulseaudio
>>>
>>>
>>>
>>
>> ok then, gnome requires pulseaudio. The only way to get rid of
>> pulseaudio is to get rid of gnome.
>=20
> 1.
>=20
> At the moment only GDM is installed, not GNOME.
>=20
> 2.
>=20
> I had GNOME3 installed for Debian and 2 dummy packages solved all
> issues, since GNOME3 doesn't need PA, just some "my computer should be =
a
> toy, instead of a tool" tasks need PA.
>=20
> Okay, if the policy of Arch Linux is to force people to install unneede=
d
> stuff, than it simply isn't the distro I should use.
>=20

hey troll, before trowing such arguments i suggest to look at our gdm
version and debian version.

gdm 3.2 requires gnome-settings-daemon and all the crap.

debian has gdm 3.0 which doesn't require.

not to mention that only couples of days ago debian finished gnome 3.2.

> Thanks,
>=20
> Ralf
>=20


--=20
Ionu=C8=9B


--------------enig4E18E33B6E0466EC9AD3D1EC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJO9FIcAAoJEOjxi6FhUTe8llQIAIkFmv+aDNYVyOoPsZUCfdba
2PnCBboWQ7NhwAf86hv98upbYMImQDT4cUTYDSrplyBAo80mAxRLkDH4zJW6VSXb
NS73yFmGslZx+mHQ0pREIrtN+xRHpWbzwhhNIOpIaxrwBAY6vZ4zbDu+SqvuODiC
fCTfrsN2Kcb28XNnpIlnbOUSLi4Y6jJuh4wS5u0ge3ZIa3g2rEUV1ufZ5haq+rLl
iYsoL1ZYuyb02nmBqf4LxXYk27z6nXGra0vMpRL1nJ2D/mrL/plkRNBwJoBcogSD
tc/WnERh48j1HFCtQd3WbIglI5EK+6yaO90QDmjszARUpU9dbsE+ZxF/DO2wmB8=
=K2GZ
-----END PGP SIGNATURE-----

--------------enig4E18E33B6E0466EC9AD3D1EC--

