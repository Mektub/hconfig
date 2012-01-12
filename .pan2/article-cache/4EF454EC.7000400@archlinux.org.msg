Path: news.gmane.org!not-for-mail
From: Ionut Biru <ibiru@archlinux.org>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Fri, 23 Dec 2011 12:16:12 +0200
Lines: 110
Approved: news@gmane.org
Message-ID: <4EF454EC.7000400@archlinux.org>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <CAGAVQTFKQxo4a2Bjg8nBPyjE+Ue5QKNdB1y8A8WjOXbMBjX49w@mail.gmail.com>
 <1324635069.10606.9.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig88D011121436B52A82186C16"
X-Trace: dough.gmane.org 1324635382 26091 80.91.229.12 (23 Dec 2011 10:16:22 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 10:16:22 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 11:16:18 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re2Aj-0001bb-ET
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 11:16:17 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 7C8A3900C5;
	Fri, 23 Dec 2011 05:16:14 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 7861686163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:16:12 -0500 (EST)
Original-Received: from [192.168.1.2] (unknown [81.196.77.121])
 by gerolde.archlinux.org (Postfix) with ESMTPSA id 41848900BE
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:16:12 -0500 (EST)
User-Agent: Mozilla/5.0 (X11; Linux i686;
 rv:9.0) Gecko/20111221 Thunderbird/9.0
In-Reply-To: <1324635069.10606.9.camel@localhost.localdomain>
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
Xref: news.gmane.org gmane.linux.arch.general:38378
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38378>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig88D011121436B52A82186C16
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 12/23/2011 12:11 PM, Ralf Madorf wrote:
> On Fri, 2011-12-23 at 03:39 -0600, C Anthony Risinger wrote:
>> Do not install an application requiring it?
>=20
> Why does GDM require it?
> Why does GNOME3 require it?
>=20

why are you talking about it here? We are not GNOME.

but to answer your question, gdm always was a instance of a user
session(gdm) modified.

To work everything in the login manager, the way it looks, the way it
works, as in power manager, suspend, video, everything! is done by
gnome-settings-daemon.


>> You'll need to provide context about what you're trying to accomplish
>> (clear and simple goals) and what you've already done (eg. I ran comma=
nd
>> xyz, I installed gnome, etc ...)
>=20
> The goal is a DAW with a professional audio card from RME. Since PA
> isn't needed, but it's always good to cause trouble, I won't have it
> installed.
>=20
> I wish to have the libre to use GNOME3, even if I now use Xfce only.
>=20
>> So far we've only learned PA probably sux, you don't want it on you sy=
stem,
>> and some random bits about Debian ;-) ... best to assume nothing of th=
e
>> solution since that's what you are here requesting.  Simply state your=

>> end-goals, the issue(s), and the path taken thus far.
>=20
> I installed ArchLinux, upgraded it by the basic repositories and only
> installed Xfce, GDM, some mailers, NVIDIA driver, nothing else until
> now.

if you don't like gdm, remove it and replace it with lxdm,lightdm or
other crap out there.


>=20
> I'm going to set up a DAW and graphic machine with a kernel-rt, Ardour3=

> with video timeline, GIMP etc..
>=20
> I like to install GNOME3 too.
>=20
>> IIRC PA is split into a library package, among others. Many pkgs will =
dep
>> libpulse, but it cannot be loaded (or possibly will not) without the
>> accompanying support packages.
>>
>> Audio is not my thing, but I absorb passively often as possible.  PA w=
ill
>> play nicely with other impls by suspending itself and releasing the
>> hardware when requested, allowing (JACK and ?) others to assume contro=
l.
>> My guess is there is not an issue here ... I suggest moving forward un=
til a
>> concrete problem is encountered, or running headless.
>>
>> While I'm not into pro audio, I do use PA successfully on several mach=
ines
>> daily with great satisfaction and zero issue; be sure you understand t=
he
>> difference between ALSA, alsa-lib, and PA.
>=20
> It already is an issue. I don't need PA for my work. Even if it should
> cause no issue, I don't need it.
>=20
> - Ralf
>=20
>=20
>=20


--=20
Ionu=C8=9B


--------------enig88D011121436B52A82186C16
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJO9FTsAAoJEOjxi6FhUTe8g/YIAMUGPATLXGr/Kd5wFf7qoTPj
pMTaTAfgW32QE+BioiHB+gzoy7wWjQ+jg1suqA3+Lh04HCGKrU9FIAD77+wwNfmA
jYOknDHb/luOFbd4TIAtXFo+VtTRmvvfXCvImcOxhMF6pRSIHmnbm7bWe8qLxtdE
3urT+ImHe1RT/SzWz1jMw/WqtxbPbv5ehP1npRa4q0ZAeP1V42GYEeIwjJ+0jGw4
QEbzyDOTEvf6TlX70klpe09vgpZykE334kv+nUrQUW1NefRflr12Nj5itbIcBVrd
gbBaq2b9hCEQP6iQp/DQGDkK/j4G/RZek24RN88ujbtvcvv2zx/yz5ogNYiWlBw=
=Iti4
-----END PGP SIGNATURE-----

--------------enig88D011121436B52A82186C16--

