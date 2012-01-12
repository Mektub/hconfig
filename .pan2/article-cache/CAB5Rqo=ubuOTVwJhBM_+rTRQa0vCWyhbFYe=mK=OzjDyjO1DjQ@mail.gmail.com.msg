Path: news.gmane.org!not-for-mail
From: George Nachman <gnachman@llamas.org>
Newsgroups: gmane.comp.terminal-emulators.tmux.user
Subject: Try the iTerm2/tmux integration
Date: Tue, 20 Dec 2011 22:52:23 -0800
Lines: 26
Approved: news@gmane.org
Message-ID: <CAB5Rqo=ubuOTVwJhBM_+rTRQa0vCWyhbFYe=mK=OzjDyjO1DjQ@mail.gmail.com>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324450394 15137 80.91.229.12 (21 Dec 2011 06:53:14 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Wed, 21 Dec 2011 06:53:14 +0000 (UTC)
To: tmux-users@lists.sourceforge.net
Original-X-From: tmux-users-bounces@lists.sourceforge.net Wed Dec 21 07:53:10 2011
Return-path: <tmux-users-bounces@lists.sourceforge.net>
Envelope-to: gcttu-tmux-users@m.gmane.org
Original-Received: from lists.sourceforge.net ([216.34.181.88])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <tmux-users-bounces@lists.sourceforge.net>)
	id 1RdG33-00043y-Iq
	for gcttu-tmux-users@m.gmane.org; Wed, 21 Dec 2011 07:53:09 +0100
Original-Received: from localhost ([127.0.0.1] helo=sfs-ml-1.v29.ch3.sourceforge.com)
	by sfs-ml-1.v29.ch3.sourceforge.com with esmtp (Exim 4.76)
	(envelope-from <tmux-users-bounces@lists.sourceforge.net>)
	id 1RdG2k-0007Gs-Pc; Wed, 21 Dec 2011 06:52:50 +0000
Original-Received: from sog-mx-4.v43.ch3.sourceforge.com ([172.29.43.194]
	helo=mx.sourceforge.net)
	by sfs-ml-1.v29.ch3.sourceforge.com with esmtp (Exim 4.76)
	(envelope-from <gnachman@gmail.com>) id 1RdG2k-0007Gn-7j
	for tmux-users@lists.sourceforge.net; Wed, 21 Dec 2011 06:52:50 +0000
Received-SPF: pass (sog-mx-4.v43.ch3.sourceforge.com: domain of gmail.com
	designates 209.85.210.175 as permitted sender)
	client-ip=209.85.210.175; envelope-from=gnachman@gmail.com;
	helo=mail-iy0-f175.google.com; 
Original-Received: from mail-iy0-f175.google.com ([209.85.210.175])
	by sog-mx-4.v43.ch3.sourceforge.com with esmtps (TLSv1:RC4-SHA:128)
	(Exim 4.76) id 1RdG2j-0007Gr-CF
	for tmux-users@lists.sourceforge.net; Wed, 21 Dec 2011 06:52:50 +0000
Original-Received: by iakh37 with SMTP id h37so9963786iak.34
	for <tmux-users@lists.sourceforge.net>;
	Tue, 20 Dec 2011 22:52:44 -0800 (PST)
Original-Received: by 10.50.195.135 with SMTP id ie7mr1538218igc.6.1324450364136; Tue,
	20 Dec 2011 22:52:44 -0800 (PST)
Original-Received: by 10.42.175.131 with HTTP; Tue, 20 Dec 2011 22:52:23 -0800 (PST)
X-Google-Sender-Auth: 15XLE9xMt0f_ZSFjjDEAiYVNxik
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
	See http://spamassassin.org/tag/ for more details.
	-1.5 SPF_CHECK_PASS SPF reports sender host as permitted sender for
	sender-domain
	0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	(gnachman[at]gmail.com)
	-0.0 SPF_PASS               SPF: sender matches SPF record
	0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
	not necessarily valid
	-0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	0.2 AWL AWL: From: address is in the auto white-list
X-Headers-End: 1RdG2j-0007Gr-CF
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
Xref: news.gmane.org gmane.comp.terminal-emulators.tmux.user:2328
Archived-At: <http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/2328>

If you use a Mac, you might be interested to know that a new test
build of iTerm2 includes tmux integration. By running tmux with a new
argument, tmux windows are rendered as native windows or tabs. There's
no more need for a prefix key. Interacting with windows and split
panes becomes easier, and you get access to a host of terminal
features that were previously unavailable or limited because of the
opacity of multiplexed terminals.

You can download iTerm2 here:
http://code.google.com/p/iterm2/downloads/detail?name=iTerm2-1_0_0_20111219.zip
And you can get the source for my modified tmux here:
http://code.google.com/p/iterm2/downloads/detail?name=tmux-for-iTerm2-20111219.tar.gz

More info on the integration can be found here:
http://code.google.com/p/iterm2/wiki/TmuxIntegration

I'll submit a patch a few weeks into the new year so there's time to
find any fix any issues that come up. Many thanks for Nicholas for his
help so far!

------------------------------------------------------------------------------
Write once. Port to many.
Get the SDK and tools to simplify cross-platform app development. Create 
new or port existing apps to sell to consumers worldwide. Explore the 
Intel AppUpSM program developer opportunity. appdeveloper.intel.com/join
http://p.sf.net/sfu/intel-appdev
