Path: news.gmane.org!not-for-mail
From: Benjamin Schweizer <2011@benjamin-schweizer.de>
Newsgroups: gmane.comp.terminal-emulators.tmux.user
Subject: patch for mapping 16 color palettes to 256 colors
Date: Fri, 23 Dec 2011 10:53:21 +0100
Lines: 82
Approved: news@gmane.org
Message-ID: <CA+mMnTz_w+GgP13rmLifL547bi_TTtCYcb0nARuePSJ6Cwby0g@mail.gmail.com>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============5799324044303713969=="
X-Trace: dough.gmane.org 1324634040 17048 80.91.229.12 (23 Dec 2011 09:54:00 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 09:54:00 +0000 (UTC)
To: tmux-users@lists.sourceforge.net
Original-X-From: tmux-users-bounces@lists.sourceforge.net Fri Dec 23 10:53:54 2011
Return-path: <tmux-users-bounces@lists.sourceforge.net>
Envelope-to: gcttu-tmux-users@m.gmane.org
Original-Received: from lists.sourceforge.net ([216.34.181.88])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <tmux-users-bounces@lists.sourceforge.net>)
	id 1Re1p4-0007Mw-1D
	for gcttu-tmux-users@m.gmane.org; Fri, 23 Dec 2011 10:53:54 +0100
Original-Received: from localhost ([127.0.0.1] helo=sfs-ml-2.v29.ch3.sourceforge.com)
	by sfs-ml-2.v29.ch3.sourceforge.com with esmtp (Exim 4.76)
	(envelope-from <tmux-users-bounces@lists.sourceforge.net>)
	id 1Re1oi-0004n8-PM; Fri, 23 Dec 2011 09:53:32 +0000
Original-Received: from sog-mx-2.v43.ch3.sourceforge.com ([172.29.43.192]
	helo=mx.sourceforge.net)
	by sfs-ml-2.v29.ch3.sourceforge.com with esmtp (Exim 4.76)
	(envelope-from <benjamin.schweizer@gmail.com>) id 1Re1oh-0004n3-0L
	for tmux-users@lists.sourceforge.net; Fri, 23 Dec 2011 09:53:31 +0000
Received-SPF: pass (sog-mx-2.v43.ch3.sourceforge.com: domain of gmail.com
	designates 209.85.213.47 as permitted sender)
	client-ip=209.85.213.47;
	envelope-from=benjamin.schweizer@gmail.com;
	helo=mail-yw0-f47.google.com; 
Original-Received: from mail-yw0-f47.google.com ([209.85.213.47])
	by sog-mx-2.v43.ch3.sourceforge.com with esmtps (TLSv1:RC4-MD5:128)
	(Exim 4.76) id 1Re1oc-0006vH-Ht
	for tmux-users@lists.sourceforge.net; Fri, 23 Dec 2011 09:53:30 +0000
Original-Received: by yhoo47 with SMTP id o47so6928895yho.34
	for <tmux-users@lists.sourceforge.net>;
	Fri, 23 Dec 2011 01:53:21 -0800 (PST)
Original-Received: by 10.236.79.137 with SMTP id i9mr19913223yhe.73.1324634001210; Fri,
	23 Dec 2011 01:53:21 -0800 (PST)
Original-Received: by 10.100.253.14 with HTTP; Fri, 23 Dec 2011 01:53:21 -0800 (PST)
X-Google-Sender-Auth: 5JnO9QFc_9J3xBI5y45GLBQuAQ0
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
	See http://spamassassin.org/tag/ for more details.
	-1.5 SPF_CHECK_PASS SPF reports sender host as permitted sender for
	sender-domain
	0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	(benjamin.schweizer[at]gmail.com)
	-0.0 SPF_PASS               SPF: sender matches SPF record
	1.0 HTML_MESSAGE           BODY: HTML included in message
	0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
	not necessarily valid
	-0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1Re1oc-0006vH-Ht
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
Xref: news.gmane.org gmane.comp.terminal-emulators.tmux.user:2330
Archived-At: <http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/2330>

--===============5799324044303713969==
Content-Type: multipart/alternative; boundary=20cf30050ed2197cb504b4bf63a1

--20cf30050ed2197cb504b4bf63a1
Content-Type: text/plain; charset=UTF-8

Hello,

I've created a patch for mapping colors from 16 color palettes to 256
colors.
This is usefull if you want to modernize old software with fixed color
palettes, e.g. irssi or midnight commander.

Here's a blog post with screenshots:
http://benjamin-schweizer.de/colorful-terminals-theme-support-for-tmux.html

Here's a sample theme:
http://benjamin-schweizer.de/files/tmux/tmux-themes/sundevil.tmux.conf

Here's a link to the source code:
http://benjamin-schweizer.de/files/tmux/


What's your opinion on this?
How can I get this included in upstream CVS?



Greetings,

-- 
http://benjamin-schweizer.de/contact

--20cf30050ed2197cb504b4bf63a1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,<br><br>I&#39;ve created a patch for mapping colors from 16 color pal=
ettes to 256 colors.<br>This is usefull if you want to modernize old softwa=
re with fixed color palettes, e.g. irssi or midnight commander.<br><br>Here=
&#39;s a blog post with screenshots:<br>
<a href=3D"http://benjamin-schweizer.de/colorful-terminals-theme-support-fo=
r-tmux.html">http://benjamin-schweizer.de/colorful-terminals-theme-support-=
for-tmux.html</a><br><br>Here&#39;s a sample theme:<br><a href=3D"http://be=
njamin-schweizer.de/files/tmux/tmux-themes/sundevil.tmux.conf">http://benja=
min-schweizer.de/files/tmux/tmux-themes/sundevil.tmux.conf</a><br>
<br>Here&#39;s a link to the source code:<br><a href=3D"http://benjamin-sch=
weizer.de/files/tmux/">http://benjamin-schweizer.de/files/tmux/</a><br><br>=
<br>What&#39;s your opinion on this?<br>How can I get this included in upst=
ream CVS?<br>
<br><br><br>Greetings,<br><br>-- <br><a href=3D"http://benjamin-schweizer.d=
e/contact" target=3D"_blank">http://benjamin-schweizer.de/contact</a><br>

--20cf30050ed2197cb504b4bf63a1--


--===============5799324044303713969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

------------------------------------------------------------------------------
Write once. Port to many.
Get the SDK and tools to simplify cross-platform app development. Create 
new or port existing apps to sell to consumers worldwide. Explore the 
Intel AppUpSM program developer opportunity. appdeveloper.intel.com/join
http://p.sf.net/sfu/intel-appdev
--===============5799324044303713969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tmux-users mailing list
tmux-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tmux-users

--===============5799324044303713969==--


