Path: news.gmane.org!not-for-mail
From: Artifex Maximus <artifexor@gmail.com>
Newsgroups: gmane.network.bit-torrent.rtorrent.devel
Subject: script for building git version
Date: Wed, 7 Dec 2011 11:58:19 +0100
Lines: 98
Approved: news@gmane.org
Message-ID: <CAPkuXvEavJ31BkzsbBBHXby0+QSJJSc52DWhk+rsS+3kFE72AQ@mail.gmail.com>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary=f46d0447850b04ce7204b37e6e00
X-Trace: dough.gmane.org 1323255513 31697 80.91.229.12 (7 Dec 2011 10:58:33 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Wed, 7 Dec 2011 10:58:33 +0000 (UTC)
To: Libtorrent-devel mailing list <libtorrent-devel@rakshasa.no>
Original-X-From: libtorrent-devel-bounces@rakshasa.no Wed Dec 07 11:58:29 2011
Return-path: <libtorrent-devel-bounces@rakshasa.no>
Envelope-to: gnbrd-libtorrent-devel@m.gmane.org
Original-Received: from li4-220.members.linode.com ([66.220.1.220] helo=rakshasa.no)
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <libtorrent-devel-bounces@rakshasa.no>)
	id 1RYFCm-0002kf-8x
	for gnbrd-libtorrent-devel@m.gmane.org; Wed, 07 Dec 2011 11:58:28 +0100
Original-Received: from li4-220.members.linode.com (localhost.localdomain [127.0.0.1])
	by rakshasa.no (Postfix) with ESMTP id 30134478D0;
	Wed,  7 Dec 2011 05:58:24 -0500 (EST)
X-Original-To: libtorrent-devel@rakshasa.no
Delivered-To: libtorrent-devel@rakshasa.no
Original-Received: from mail-gx0-f173.google.com (mail-gx0-f173.google.com
	[209.85.161.173]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by rakshasa.no (Postfix) with ESMTPS id B6D44478B2
	for <libtorrent-devel@rakshasa.no>;
	Wed,  7 Dec 2011 05:58:21 -0500 (EST)
Original-Received: by ggnk1 with SMTP id k1so663763ggn.18
	for <libtorrent-devel@rakshasa.no>;
	Wed, 07 Dec 2011 02:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Wh6zODr4oM0gpA1xWkIeOrshl2gj3NLGhiXhuec9n7A=;
	b=oAN/hFBQ0qh45TUenXJi1XDunq57H5hwSimHlnzacF16HslEz3aitySSU5bAskXAm2
	x7HG56WF+efufhWYIgkKgg8lxsh+9aF92HITNKdZHvznLHv2fQccQeczr27DCN+UyE1w
	RdOQGJSOMqVVXmFfFbMVY5jCzxUk2Y4DDXotY=
Original-Received: by 10.182.49.1 with SMTP id q1mr3504896obn.48.1323255499902; Wed, 07
	Dec 2011 02:58:19 -0800 (PST)
Original-Received: by 10.182.76.137 with HTTP; Wed, 7 Dec 2011 02:58:19 -0800 (PST)
X-BeenThere: libtorrent-devel@rakshasa.no
X-Mailman-Version: 2.1.13
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
Xref: news.gmane.org gmane.network.bit-torrent.rtorrent.devel:2517
Archived-At: <http://permalink.gmane.org/gmane.network.bit-torrent.rtorrent.devel/2517>

--f46d0447850b04ce7204b37e6e00
Content-Type: text/plain; charset=ISO-8859-1

Hello!

I wrote a little script for helping on compile git version under
FreeBSD. Need some changes to run on Linux I think. libtorrent is
linked statically so you have to move or symlink only one executable
(rtorrent-git) to the place you want from folder
rtorrent-bin/<timestamp>-git/bin. Useful for using stable and git
branch together. The script written mainly to myself so the code might
fail and looks ugly which I do not care but you might do. You have
been warned. :-)

Bye,
a

--f46d0447850b04ce7204b37e6e00
Content-Type: application/octet-stream; name=build-rtorrent
Content-Disposition: attachment; filename=build-rtorrent
Content-Transfer-Encoding: base64
X-Attachment-Id: f_gvw7u32e0

IyEvYmluL3NoCgpUTVBfUFdEPSJgcHdkYCIKVE1QX0RBVEU9ImBkYXRlICslc2AiCigKc2V0IC14
ZQoKWyAhIC1kICIke1RNUF9QV0R9L2xpYnRvcnJlbnQiIF0gXAogJiYgZWNobyAibGlidG9ycmVu
dCBkaXJlY3RvcnkgZG9lcyBub3QgZXhpc3RzLCBjbG9uaW5nIGdpdCByZXBvc2l0b3J5IiBcCiAm
JiAoIGdpdCBjbG9uZSBnaXQ6Ly9naXRodWIuY29tL3Jha3NoYXNhL2xpYnRvcnJlbnQuZ2l0IGxp
YnRvcnJlbnQgfHwgZXhpdCAxICkKClsgISAtZCAiJHtUTVBfUFdEfS9ydG9ycmVudCIgXSBcCiAm
JiBlY2hvICJydG9ycmVudCBkaXJlY3RvcnkgZG9lcyBub3QgZXhpc3RzLCBjbG9uaW5nIGdpdCBy
ZXBvc2l0b3J5IiBcCiAmJiAoIGdpdCBjbG9uZSBnaXQ6Ly9naXRodWIuY29tL3Jha3NoYXNhL3J0
b3JyZW50LmdpdCBydG9ycmVudCB8fCBleGl0IDEgKQoKVE1QX0lOU1RBTExfUEFUSD0iJHtUTVBf
UFdEfS9ydG9ycmVudC1iaW4vJHtUTVBfREFURX0tZ2l0IgpUTVBfQ0ZMQUdTX0xJQlRPUlJFTlQ9
Ii1waXBlIC1PMiAtcHRocmVhZCAtbWFyY2g9aTY4NiIKVE1QX0NGTEFHU19SVE9SUkVOVD0iLXBp
cGUgLU8yIC1JJHtUTVBfSU5TVEFMTF9QQVRIfS9pbmNsdWRlIC1ETFRfU0xJTV9WRVJTSU9OPTAg
LURVU0VfQlVJTFRJTl9QT1BDT1VOVD0xIC1wdGhyZWFkIC1tYXJjaD1pNjg2IgpUTVBfTERGTEFH
Uz0iLXMgLWxwdGhyZWFkIgpUTVBfQ09ORl9MSUJUT1JSRU5UPSItLXByZWZpeD0ke1RNUF9JTlNU
QUxMX1BBVEh9IC0td2l0aC1rcXVldWUgLS1lbmFibGUtc3RhdGljIC0tZGlzYWJsZS1zaGFyZWQg
LS1kaXNhYmxlLWRlYnVnIC0tZGlzYWJsZS1leHRyYS1kZWJ1ZyAtLWRpc2FibGUtd2Vycm9yIgpU
TVBfQ09ORl9SVE9SUkVOVD0iLS1wcmVmaXg9JHtUTVBfSU5TVEFMTF9QQVRIfSAtLXByb2dyYW0t
c3VmZml4PS1naXQgLS13aXRoLXhtbHJwYy1jIC0tZW5hYmxlLXN0YXRpYyAtLWRpc2FibGUtc2hh
cmVkIC0tZGlzYWJsZS1kZWJ1ZyAtLWRpc2FibGUtZXh0cmEtZGVidWcgLS1kaXNhYmxlLXdlcnJv
ciIKCgojIz09PSBzdGFydCB3aXRoIGxpYnRvcnJlbnQKY2QgJHtUTVBfUFdEfS9saWJ0b3JyZW50
ICYmIGVjaG8gIj09PT0gbGlidG9ycmVudCIKCiM9PT0gY2xlYW4gdXAKaWYgWyAtZiBNYWtlZmls
ZSBdIDsgdGhlbgoJbWFrZSBkaXN0Y2xlYW4KZmkKWyAtZCBhdXRvbTR0ZS5jYWNoZSBdICYmIHJt
IC1yZiBhdXRvbTR0ZS5jYWNoZQpybSAtZiBhY2xvY2FsLm00IGNvbmZpZy5oLmluIGNvbmZpZy5n
dWVzcyBjb25maWcuc3ViIGRlcGNvbXAgaW5zdGFsbC1zaCBtaXNzaW5nIGNvbmZpZ3VyZSBsdG1h
aW4uc2gKZmluZCBgcHdkYC8gLW5hbWUgTWFrZWZpbGUgLWRlbGV0ZSAtcHJpbnQKZmluZCBgcHdk
YC8gLW5hbWUgTWFrZWZpbGUuaW4gLWRlbGV0ZSAtcHJpbnQKCiM9PT0gZ2V0IGxhdGVzdAplY2hv
ICI9PT0gR2V0dGluZyBsYXRlc3Qgc291cmNlcyIKZ2l0IHB1bGw7IGVjaG8gJD8gfHwgZXhpdCAy
CgojPT09IG1ha2UgYXV0b2NvbmYgZmlsZXMKYWNsb2NhbCAtSSBgcHdkYC9zY3JpcHRzIC1JIGBw
d2RgICR7QUNMT0NBTF9GTEFHU30KYXV0b2hlYWRlcgpsaWJ0b29saXplIC0tYXV0b21ha2UgLS1j
b3B5IC0tZm9yY2UKYXV0b21ha2UgLS1hZGQtbWlzc2luZyAtLWNvcHkgLS1nbnUKYXV0b2NvbmYK
CiM9PT0gY29uZmlndXJlCiNDQz0nY2xhbmcnIFwKI0NYWD0nY2xhbmcrKycgXApDRkxBR1M9IiR7
VE1QX0NGTEFHU19MSUJUT1JSRU5UfSIgXApDWFhGTEFHUz0iJHtUTVBfQ0ZMQUdTX0xJQlRPUlJF
TlR9IiBcCkxERkxBR1M9IiR7VE1QX0xERkxBR1N9IiBcCi4vY29uZmlndXJlICR7VE1QX0NPTkZf
TElCVE9SUkVOVH0KCiM9PT0gbWFrZQplY2hvICI9PT0gQ29tcGlsaW5nIHNvdXJjZSBjb2RlIgpt
YWtlIHx8IGV4aXQgMQoKIz09PSBpbnN0YWxsCmVjaG8gIj09PSBJbnN0YWxsaW5nIGxpYnRvcnJl
bnQgbGlicmFyeSIKbWFrZSBpbnN0YWxsIHx8IGV4aXQgMgoKIz09PSBjbGVhbiB1cAplY2hvICI9
PT0gQ2xlYW4gdXAgbGlidG9ycmVudCBkaXJlY3RvcnkiCm1ha2UgZGlzdGNsZWFuCgoKIyM9PT0g
YWZ0ZXIgbGlidG9ycmVudCBjb250aW51ZSB3aXRoIHJ0b3JyZW50CmNkICR7VE1QX1BXRH0vcnRv
cnJlbnQgJiYgZWNobyAiPT09PSBydG9ycmVudCIKCiM9PT0gY2xlYW4gdXAKaWYgWyAtZiBNYWtl
ZmlsZSBdIDsgdGhlbgoJbWFrZSBkaXN0Y2xlYW4KZmkKWyAtZCBhdXRvbTR0ZS5jYWNoZSBdICYm
IHJtIC1yZiBhdXRvbTR0ZS5jYWNoZQpybSAtZiBhY2xvY2FsLm00IGNvbmZpZy5oLmluIGNvbmZp
Zy5ndWVzcyBjb25maWcuc3ViIGRlcGNvbXAgaW5zdGFsbC1zaCBtaXNzaW5nIGNvbmZpZ3VyZSBs
dG1haW4uc2gKZmluZCBgcHdkYCAtbmFtZSBNYWtlZmlsZSAtZGVsZXRlIC1wcmludApmaW5kIGBw
d2RgIC1uYW1lIE1ha2VmaWxlLmluIC1kZWxldGUgLXByaW50CgojPT09IGdldCBsYXRlc3QKZWNo
byAiPT09IEdldHRpbmcgbGF0ZXN0IHNvdXJjZXMiCmdpdCBwdWxsOyBlY2hvICQ/IHx8IGV4aXQg
MgoKIz09PSBtYWtlIGF1dG9jb25mIGZpbGVzCmFjbG9jYWwgLUkgYHB3ZGAvc2NyaXB0cyAtSSBg
cHdkYCAke0FDTE9DQUxfRkxBR1N9CmF1dG9oZWFkZXIKbGlidG9vbGl6ZSAtLWF1dG9tYWtlIC0t
Y29weSAtLWZvcmNlCmF1dG9tYWtlIC0tYWRkLW1pc3NpbmcgLS1jb3B5IC0tZ251CmF1dG9jb25m
CgojPT09IGNvbmZpZ3VyZQojQ0M9J2NsYW5nJyBcCiNDWFg9J2NsYW5nKysnIFwKQ0ZMQUdTPSIk
e1RNUF9DRkxBR1NfUlRPUlJFTlR9IiBcCkNYWEZMQUdTPSIke1RNUF9DRkxBR1NfUlRPUlJFTlR9
IiBcCkxERkxBR1M9IiR7VE1QX0xERkxBR1N9IiBcCmxpYnRvcnJlbnRfTElCUz0iJHtUTVBfSU5T
VEFMTF9QQVRIfS9saWIvbGlidG9ycmVudC5hIiBcClBLR19DT05GSUdfUEFUSD0iJHtUTVBfSU5T
VEFMTF9QQVRIfS9saWIvcGtnY29uZmlnIiBcCi4vY29uZmlndXJlICR7VE1QX0NPTkZfUlRPUlJF
TlR9CgojPT09IG1ha2UKZWNobyAiPT09IENvbXBpbGluZyBzb3VyY2UgY29kZSIKbWFrZSB8fCBl
eGl0IDEKCiM9PT0gaW5zdGFsbAplY2hvICI9PT0gSW5zdGFsbGluZyBsaWJ0b3JyZW50IGxpYnJh
cnkiCm1ha2UgaW5zdGFsbCB8fCBleGl0IDIKCiM9PT0gY2xlYW4gdXAKZWNobyAiPT09IENsZWFu
IHVwIGxpYnRvcnJlbnQgZGlyZWN0b3J5IgptYWtlIGRpc3RjbGVhbgoKIz09PSBjb21wYXJlIHdp
dGggaW5zdGFsbGVkIHZlcnNpb24KZWNobyAiPT09IGNvbXBhcmUgd2l0aCBpbnN0YWxsZWQgdmVy
c2lvbiIKVE1QX1JUT1JSRU5UX1BBVEg9ImB3aGljaCBydG9ycmVudC1naXRgIgppZiBbICEgLXog
IiR7VE1QX1JUT1JSRU5UX1BBVEh9IiBdOyB0aGVuCgljbXAgLXpzICIke1RNUF9JTlNUQUxMX1BB
VEh9L2Jpbi9ydG9ycmVudC1naXQiICIke1RNUF9SVE9SUkVOVF9QQVRIfSIgfHwgZWNobyAiTmV3
IGZpbGUhIgpmaQoKZWNobyAiPT09IERvbmUiCgopIDI+JjEgfCB0ZWUgJHtUTVBfUFdEfS96Y18k
e1RNUF9EQVRFfV9sb2cudHh0Cg==
--f46d0447850b04ce7204b37e6e00
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Libtorrent-devel mailing list
Libtorrent-devel@rakshasa.no
http://rakshasa.no/mailman/listinfo/libtorrent-devel

--f46d0447850b04ce7204b37e6e00--

