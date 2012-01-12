Path: news.gmane.org!not-for-mail
From: Kristen Eisenberg <kristen.eisenberg@yahoo.com>
Newsgroups: gmane.network.bit-torrent.rtorrent.devel
Subject: How to execute commands from within rtorrent?
Date: Sun, 9 Oct 2011 13:44:14 -0700 (PDT)
Lines: 96
Approved: news@gmane.org
Message-ID: <1318193054.56258.YahooMailNeo@web122303.mail.ne1.yahoo.com>
Reply-To: Kristen Eisenberg <kristen.eisenberg@yahoo.com>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0669647153=="
X-Trace: dough.gmane.org 1318193078 10960 80.91.229.12 (9 Oct 2011 20:44:38 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sun, 9 Oct 2011 20:44:38 +0000 (UTC)
To: "libtorrent-devel@rakshasa.no" <libtorrent-devel@rakshasa.no>
Original-X-From: libtorrent-devel-bounces@rakshasa.no Sun Oct 09 22:44:34 2011
Return-path: <libtorrent-devel-bounces@rakshasa.no>
Envelope-to: gnbrd-libtorrent-devel@m.gmane.org
Original-Received: from li4-220.members.linode.com ([66.220.1.220] helo=rakshasa.no)
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <libtorrent-devel-bounces@rakshasa.no>)
	id 1RD0Eb-0002SK-9p
	for gnbrd-libtorrent-devel@m.gmane.org; Sun, 09 Oct 2011 22:44:33 +0200
Original-Received: from rakshasa.no (rakshasa [66.220.1.220])
	by rakshasa.no (Postfix) with ESMTP id BA140106FC;
	Sun,  9 Oct 2011 20:44:18 +0000 (UTC)
X-Original-To: libtorrent-devel@rakshasa.no
Delivered-To: libtorrent-devel@rakshasa.no
Original-Received: from nm17-vm1.bullet.mail.ne1.yahoo.com
	(nm17-vm1.bullet.mail.ne1.yahoo.com [98.138.91.34])
	by rakshasa.no (Postfix) with SMTP id 840EB106EF
	for <libtorrent-devel@rakshasa.no>;
	Sun,  9 Oct 2011 20:44:15 +0000 (UTC)
Original-Received: from [98.138.90.56] by nm17.bullet.mail.ne1.yahoo.com with NNFMP;
	09 Oct 2011 20:44:15 -0000
Original-Received: from [98.138.88.239] by tm9.bullet.mail.ne1.yahoo.com with NNFMP;
	09 Oct 2011 20:44:15 -0000
Original-Received: from [127.0.0.1] by omp1039.mail.ne1.yahoo.com with NNFMP;
	09 Oct 2011 20:44:15 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 122833.36625.bm@omp1039.mail.ne1.yahoo.com
Original-Received: (qmail 60073 invoked by uid 60001); 9 Oct 2011 20:44:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1318193054; bh=OdMQl32K8i3ztSZV81r/J2BfNABWfYx5kRJXZVXLVRw=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=qG1dzTmxej9nI1QPgyHZzujsCxrBUtyeAX2r7+0iz7JAaJoNUzTZeozeFAs/3W0BpEDCtA972BP/Tz8PVPfk14mVj/weZWVHl+kQukjy6fFyfx1sCsuTOUm5K4fWkygdkINbUO3INccw42Outd20rji+qk2C2ur4O7iRbmh7RjI=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=hKLKdXELRw+8/BdYsUI4PPV5OO/ndI137ioSPE44Ftlg058CxwI1msH9K80Onmp6n11m43CmiR8mYkfRF2atU7D6e9qGkZwL8K1FsaNjNe5nwH8fxSQgbcT/Fl990Xbgt4iZ6yK1cYMotG/Xm87sHm8v9v7r/cBBOUzl4p7zMbg=;
X-YMail-OSG: x00jBN4VM1nmTUmFWMBw8S6WpVR1NRqs.W5NQmj3HtbozQJ
	W2kfmA57.JW4xsJqF6EetYb5W7o3xDjfPvLdxIowSszSxoweq1ZuYPNYtVTa
	UJhY9H4F3_3ugKxaX_kVYLUeQ6G0RueLbMTpQgnCWw0DgvlPjkmAxa0pl.ts
	kkc__XPfUotmt2nIWpiYbvGpFd4bwZK3a9Pv7.E7o6dCXJP84148RAEi1yCy
	jo5OYGWsQ_B1gubD4mf3_xqaDT35HxMBJCw8vmgJxuaNPdpmLPTUh.Qh_XDW
	jjBb0euzF98VQteBZgccq40WctOVAjQGgYtqcvPLNHbV0jSAnsMG.vjK47dc
	d1mYemM5x4hWoEf6fZECuq2teSSmM2icd53zSKKKzwiYA4OhLlfSS4.ck7sG
	fgXC7Tznkuu6ebzYf5HW9_FvGqVZmrfhl2NH6BNhXA_2L52uvlNpSmsbeI.u
	aWE79Bh4vkFHK7zqB2Ws9wuHeom28A_SdZWzI
Original-Received: from [109.126.141.158] by web122303.mail.ne1.yahoo.com via HTTP;
	Sun, 09 Oct 2011 13:44:14 PDT
X-Mailer: YahooMailWebService/0.8.114.317681
X-BeenThere: libtorrent-devel@rakshasa.no
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: libTorrent development <libtorrent-devel.rakshasa.no>
List-Unsubscribe: <http://rakshasa.no/mailman/options/libtorrent-devel>,
	<mailto:libtorrent-devel-request@rakshasa.no?subject=unsubscribe>
List-Archive: <http://rakshasa.no/pipermail/libtorrent-devel>
List-Post: <mailto:libtorrent-devel@rakshasa.no>
List-Help: <mailto:libtorrent-devel-request@rakshasa.no?subject=help>
List-Subscribe: <http://rakshasa.no/mailman/listinfo/libtorrent-devel>,
	<mailto:libtorrent-devel-request@rakshasa.no?subject=subscribe>
Original-Sender: libtorrent-devel-bounces@rakshasa.no
Errors-To: libtorrent-devel-bounces@rakshasa.no
Xref: news.gmane.org gmane.network.bit-torrent.rtorrent.devel:2496
Archived-At: <http://permalink.gmane.org/gmane.network.bit-torrent.rtorrent.devel/2496>

--===============0669647153==
Content-Type: multipart/alternative;
	boundary="-1062763926-372412773-1318193054=:56258"

---1062763926-372412773-1318193054=:56258
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

I'm obviously getting the syntax wrong because every time I try to=0Aexecut=
e a command from within rtorrent (^X) I get en error of "Command=0Axxxxx no=
t found", or "Can't find the '=3D'".=0A=0ACan someone give me an example of=
 how to properly issue a command, like=0Ahow to set the max_peers for a spe=
cific torrent.=0A=0A=0AP.S. The reason that I want to set max_peers manuall=
y is that rtorrent=0Acrashes whenever I try to change the max_peers for any=
 specific torrent=0Aincrementally with the number keys. The error says some=
thing like=0A"number must be between 1 and ^24", but I'm simply trying to i=
ncrease=0Athe number from 1 to 6.=0A=0AI'm using 0.8.6 from the Ubuntu repo=
s, so the problem may have been=0Afixed in 8.7 (which isn't in the repos ye=
t), but I'm just curious what=0Athe deal is.=0A=0A=0AKristen Eisenberg=0ABi=
llige Fl=FCge=0AMarketing GmbH=0AEmanuelstr. 3,=0A10317 Berlin=0ADeutschlan=
d=0ATelefon: +49 (33)=0A5310967=0AEmail:=0Autebachmeier at=0Agmail.com=0ASi=
te:=0Ahttp://flug.airego.de
- Billige Fl=FCge vergleichen
---1062763926-372412773-1318193054=:56258
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div>I'm obviously ge=
tting the syntax wrong because every time I try to<br>execute a command fro=
m within rtorrent (^X) I get en error of "Command<br>xxxxx not found", or "=
Can't find the '=3D'".<br><br>Can someone give me an example of how to prop=
erly issue a command, like<br>how to set the max_peers for a specific torre=
nt.<br><br><br>P.S. The reason that I want to set max_peers manually is tha=
t rtorrent<br>crashes whenever I try to change the max_peers for any specif=
ic torrent<br>incrementally with the number keys. The error says something =
like<br>"number must be between 1 and ^24", but I'm simply trying to increa=
se<br>the number from 1 to 6.<br><br>I'm using 0.8.6 from the Ubuntu repos,=
 so the problem may have been<br>fixed in 8.7 (which isn't in the repos yet=
), but I'm just curious what<br>the deal is.</div><div><br></div><div>


<div class=3D"MsoNormal"><span lang=3D"DE" style=3D"mso-ansi-language:DE">K=
risten Eisenberg</span></div>

<div class=3D"MsoNormal"><span lang=3D"DE" style=3D"mso-ansi-language:DE">B=
illige Fl=FCge</span></div>

<div class=3D"MsoNormal"><span lang=3D"DE" style=3D"mso-ansi-language:DE">M=
arketing GmbH</span></div>

<div class=3D"MsoNormal"><span lang=3D"DE" style=3D"mso-ansi-language:DE">E=
manuelstr. 3,</span></div>

<div class=3D"MsoNormal"><span lang=3D"DE" style=3D"mso-ansi-language:DE">1=
0317 Berlin</span></div>

<div class=3D"MsoNormal"><span lang=3D"DE" style=3D"mso-ansi-language:DE">D=
eutschland</span></div>

<div class=3D"MsoNormal"><span lang=3D"DE" style=3D"mso-ansi-language:DE">T=
elefon: +49 (33)</span></div>

<div class=3D"MsoNormal"><span lang=3D"DE" style=3D"mso-ansi-language:DE">5=
310967</span></div>

<div class=3D"MsoNormal"><span lang=3D"DE" style=3D"mso-ansi-language:DE">E=
mail:</span></div>

<div class=3D"MsoNormal"><span lang=3D"DE" style=3D"mso-ansi-language:DE">u=
tebachmeier at</span></div>

<div class=3D"MsoNormal"><span lang=3D"DE" style=3D"mso-ansi-language:DE">g=
mail.com</span></div>

<div class=3D"MsoNormal"><span lang=3D"DE" style=3D"mso-ansi-language:DE">S=
ite:</span></div>

<div class=3D"MsoNormal"><span lang=3D"DE" style=3D"mso-ansi-language:DE">h=
ttp://flug.airego.de
- Billige Fl=FCge vergleichen</span></div></div></div></body></html>
---1062763926-372412773-1318193054=:56258--

--===============0669647153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Libtorrent-devel mailing list
Libtorrent-devel@rakshasa.no
http://rakshasa.no/mailman/listinfo/libtorrent-devel

--===============0669647153==--

