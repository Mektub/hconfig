Path: news.gmane.org!not-for-mail
From: Matthias Lederhofer <matled@gmx.net>
Newsgroups: gmane.comp.terminal-emulators.tmux.user
Subject: BUG: double width characters cause previous character to be lost
Date: Sun, 11 Dec 2011 22:15:52 +0100
Lines: 21
Approved: news@gmane.org
Message-ID: <20111211211552.GA2720@moooo.ath.cx>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Trace: dough.gmane.org 1323638183 8084 80.91.229.12 (11 Dec 2011 21:16:23 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sun, 11 Dec 2011 21:16:23 +0000 (UTC)
To: tmux-users@lists.sourceforge.net
Original-X-From: tmux-users-bounces@lists.sourceforge.net Sun Dec 11 22:16:18 2011
Return-path: <tmux-users-bounces@lists.sourceforge.net>
Envelope-to: gcttu-tmux-users@m.gmane.org
Original-Received: from lists.sourceforge.net ([216.34.181.88])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <tmux-users-bounces@lists.sourceforge.net>)
	id 1RZqkr-0000JL-B7
	for gcttu-tmux-users@m.gmane.org; Sun, 11 Dec 2011 22:16:17 +0100
Original-Received: from localhost ([127.0.0.1] helo=sfs-ml-4.v29.ch3.sourceforge.com)
	by sfs-ml-4.v29.ch3.sourceforge.com with esmtp (Exim 4.76)
	(envelope-from <tmux-users-bounces@lists.sourceforge.net>)
	id 1RZqkZ-0006QY-WB; Sun, 11 Dec 2011 21:15:59 +0000
Original-Received: from sog-mx-4.v43.ch3.sourceforge.com ([172.29.43.194]
	helo=mx.sourceforge.net)
	by sfs-ml-4.v29.ch3.sourceforge.com with esmtp (Exim 4.76)
	(envelope-from <matled@gmx.net>) id 1RZqkZ-0006QT-Kg
	for tmux-users@lists.sourceforge.net; Sun, 11 Dec 2011 21:15:59 +0000
Received-SPF: pass (sog-mx-4.v43.ch3.sourceforge.com: domain of gmx.net
	designates 213.165.64.22 as permitted sender)
	client-ip=213.165.64.22; envelope-from=matled@gmx.net;
	helo=mailout-de.gmx.net; 
Original-Received: from mailout-de.gmx.net ([213.165.64.22])
	by sog-mx-4.v43.ch3.sourceforge.com with smtp (Exim 4.76)
	id 1RZqkY-0004n2-O0
	for tmux-users@lists.sourceforge.net; Sun, 11 Dec 2011 21:15:59 +0000
Original-Received: (qmail invoked by alias); 11 Dec 2011 21:15:52 -0000
Original-Received: from f050094255.adsl.alicedsl.de (EHLO strunx.moooo.ath.cx)
	[78.50.94.255]
	by mail.gmx.net (mp052) with SMTP; 11 Dec 2011 22:15:52 +0100
X-Authenticated: #5358227
X-Provags-ID: V01U2FsdGVkX18ZpN5bB+kZHGWlE1hBYWLYv7psD92ywlog28u1rH
	DSgyguMTsjGPyz
Original-Received: by strunx.moooo.ath.cx (Postfix, from userid 1000)
	id 12424100416; Sun, 11 Dec 2011 22:15:52 +0100 (CET)
Content-Disposition: inline
X-Y-GMX-Trusted: 0
X-Spam-Score: -2.8 (--)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
	See http://spamassassin.org/tag/ for more details.
	-1.5 SPF_CHECK_PASS SPF reports sender host as permitted sender for
	sender-domain
	0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	(matled[at]gmx.net)
	-0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no trust [213.165.64.22 listed in list.dnswl.org]
	-0.0 SPF_PASS               SPF: sender matches SPF record
	-1.5 RP_MATCHES_RCVD Envelope sender domain matches handover relay
	domain 0.1 AWL AWL: From: address is in the auto white-list
X-Headers-End: 1RZqkY-0004n2-O0
X-BeenThere: tmux-users@lists.sourceforge.net
X-Mailman-Version: 2.1.9
Precedence: list
List-Id: <tmux-users.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/listinfo/tmux-users>,
	<mailto:tmux-users-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tmux-users>
List-Post: <mailto:tmux-users@lists.sourceforge.net>
List-Help: <mailto:tmux-users-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tmux-users>,
	<mailto:tmux-users-request@lists.sourceforge.net?subject=subscribe>
Errors-To: tmux-users-bounces@lists.sourceforge.net
Xref: news.gmane.org gmane.comp.terminal-emulators.tmux.user:2278
Archived-At: <http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/2278>

SGksCgpJIGp1c3Qgbm90aWNlZCB0aGUgZm9sbG93aW5nIGJ1ZyB3aGVuIHBsYXlpbmcgYXJvdW5k
IHdpdGggZG91YmxlIHdpZHRoCmNoYXJhY3RlcnM6CgpXaGVuIHVzaW5nIGFuIHVyeHZ0IHRlcm1p
bmFsIHdpdGggd2lkdGggb2YgODAgdGhlIGZvbGxvd2luZyBjb21tYW5kCnByaW50cyAiYmFyIiBv
biBvbmUgbGluZSBhbmQgdGhlIGRvdWJsZSB3aWR0aCBjaGFyYWN0ZXIgb24gdGhlIG5leHQKbGlu
ZToKICAgIHByaW50ZiAiJTc5c+OAilxuIiBiYXIKCkluIHRtdXggdGhlIHNhbWUgcHJvZHVjZXMg
b25seSAiYmEiIG9uIHRoZSBmaXJzdCBsaW5lIGFuZCB0aGUgZG91YmxlCndpZHRoIGNoYXJhY3Rl
ciBvbiB0aGUgc2Vjb25kIGxpbmUuCgpJJ20gbm90IGFjdHVhbGx5IHVzaW5nIGRvdWJsZSB3aWR0
aCBjaGFyYWN0ZXJzIG11Y2ggYW5kIEknbSBub3QgdG9vCmZhbWlsaWFyIHdpdGggdGhlIHJlbGV2
YW50IGNvZGUgb2YgdG11eCAoeWV0KSwgdGhlcmVmb3JlIEkndmUgbm90CmZ1cnRoZXIgc2VhcmNo
ZWQgZm9yIHRoZSBjb2RlIGNhdXNpbmcgdGhpcyBidWcuCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
TGVhcm4gV2luZG93cyBBenVyZSBMaXZlISAgVHVlc2RheSwgRGVjIDEzLCAyMDExCk1pY3Jvc29m
dCBpcyBob2xkaW5nIGEgc3BlY2lhbCBMZWFybiBXaW5kb3dzIEF6dXJlIHRyYWluaW5nIGV2ZW50
IGZvciAKZGV2ZWxvcGVycy4gSXQgd2lsbCBwcm92aWRlIGEgZ3JlYXQgd2F5IHRvIGxlYXJuIFdp
bmRvd3MgQXp1cmUgYW5kIHdoYXQgaXQgCnByb3ZpZGVzLiBZb3UgY2FuIGF0dGVuZCB0aGUgZXZl
bnQgYnkgd2F0Y2hpbmcgaXQgc3RyZWFtZWQgTElWRSBvbmxpbmUuICAKTGVhcm4gbW9yZSBhdCBo
dHRwOi8vcC5zZi5uZXQvc2Z1L21zLXdpbmRvd3NhenVyZQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwp0bXV4LXVzZXJzIG1haWxpbmcgbGlzdAp0bXV4LXVz
ZXJzQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby90bXV4LXVzZXJzCg==

