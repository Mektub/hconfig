Path: news.gmane.org!not-for-mail
From: Nicholas Marriott <nicholas.marriott@gmail.com>
Newsgroups: gmane.comp.terminal-emulators.tmux.user
Subject: Re: [PATCH] Ignore status line clicks for mouse-select-pane
Date: Sat, 24 Dec 2011 08:27:11 +0000
Lines: 34
Approved: news@gmane.org
Message-ID: <20111224082711.GG2201@yelena.nicm.ath.cx>
References: <874nwvytq4.fsf@silenus.orebokech.com>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324715262 3632 80.91.229.12 (24 Dec 2011 08:27:42 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sat, 24 Dec 2011 08:27:42 +0000 (UTC)
Cc: tmux-users@lists.sourceforge.net
To: Romain Francoise <romain@orebokech.com>
Original-X-From: tmux-users-bounces@lists.sourceforge.net Sat Dec 24 09:27:38 2011
Return-path: <tmux-users-bounces@lists.sourceforge.net>
Envelope-to: gcttu-tmux-users@m.gmane.org
Original-Received: from lists.sourceforge.net ([216.34.181.88])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <tmux-users-bounces@lists.sourceforge.net>)
	id 1ReMx6-0005s3-QN
	for gcttu-tmux-users@m.gmane.org; Sat, 24 Dec 2011 09:27:37 +0100
Original-Received: from localhost ([127.0.0.1] helo=sfs-ml-1.v29.ch3.sourceforge.com)
	by sfs-ml-1.v29.ch3.sourceforge.com with esmtp (Exim 4.76)
	(envelope-from <tmux-users-bounces@lists.sourceforge.net>)
	id 1ReMws-00069g-U4; Sat, 24 Dec 2011 08:27:22 +0000
Original-Received: from sog-mx-1.v43.ch3.sourceforge.com ([172.29.43.191]
	helo=mx.sourceforge.net)
	by sfs-ml-1.v29.ch3.sourceforge.com with esmtp (Exim 4.76)
	(envelope-from <nicholas.marriott@gmail.com>) id 1ReMwr-00069B-08
	for tmux-users@lists.sourceforge.net; Sat, 24 Dec 2011 08:27:21 +0000
Received-SPF: neutral (sog-mx-1.v43.ch3.sourceforge.com: 81.103.221.47 is
	neither permitted nor denied by domain of gmail.com)
	client-ip=81.103.221.47;
	envelope-from=nicholas.marriott@gmail.com;
	helo=mtaout01-winn.ispmail.ntl.com; 
Original-Received: from mtaout01-winn.ispmail.ntl.com ([81.103.221.47])
	by sog-mx-1.v43.ch3.sourceforge.com with esmtp (Exim 4.76)
	id 1ReMwp-0000XM-V7
	for tmux-users@lists.sourceforge.net; Sat, 24 Dec 2011 08:27:20 +0000
Original-Received: from aamtaout02-winn.ispmail.ntl.com ([81.103.221.35])
	by mtaout01-winn.ispmail.ntl.com
	(InterMail vM.7.08.04.00 201-2186-134-20080326) with ESMTP id
	<20111224082714.FZHU3962.mtaout01-winn.ispmail.ntl.com@aamtaout02-winn.ispmail.ntl.com>
	for <tmux-users@lists.sourceforge.net>;
	Sat, 24 Dec 2011 08:27:14 +0000
Original-Received: from yelena ([82.7.122.161]) by aamtaout02-winn.ispmail.ntl.com
	(InterMail vG.3.00.04.00 201-2196-133-20080908) with ESMTP
	id <20111224082714.DLSK5924.aamtaout02-winn.ispmail.ntl.com@yelena>
	for <tmux-users@lists.sourceforge.net>;
	Sat, 24 Dec 2011 08:27:14 +0000
Original-Received: from localhost (1000@localhost [IPv6:::1])
	by yelena (OpenSMTPD) with ESMTP id 16cb7e2f;
	Sat, 24 Dec 2011 08:27:11 +0000 (GMT)
Content-Disposition: inline
In-Reply-To: <874nwvytq4.fsf@silenus.orebokech.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
X-Cloudmark-Analysis: v=1.1 cv=JvdXmxIgLJv2/GthKqHpGJEEHukvLcvELVXUanXFreg=
	c=1 sm=0 a=XYJHFtupD_QA:10 a=hfIs-GUQ7VwA:10 a=nDghuxUhq_wA:10
	a=NHtgBMXTRqwA:10 a=wPDyFdB5xvgA:10 a=kj9zAlcOel0A:10
	a=xqWC_Br6kY4A:10 a=zS2J4MQ2x8A5U61ceW4A:9
	a=QmO6s3AoUD-hn3AJKzAA:7 a=CjuIK1q_8ugA:10
	a=b8Gt08BVSR1NZBrf:21 a=k9UbglhmfNkMKoKt:21
	a=HpAAvcLHHh0Zw7uRqdWCyQ==:117
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
	See http://spamassassin.org/tag/ for more details.
	0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	(nicholas.marriott[at]gmail.com)
	-0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no trust [81.103.221.47 listed in list.dnswl.org]
	0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
	CUSTOM_MED
	0.7 SPF_NEUTRAL SPF: sender does not match SPF record (neutral)
	1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit,
	and not from a mailing list
	-0.0 AWL AWL: From: address is in the auto white-list
X-Headers-End: 1ReMwp-0000XM-V7
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
Xref: news.gmane.org gmane.comp.terminal-emulators.tmux.user:2335
Archived-At: <http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/2335>

Yes, not intended. Fix applied, thanks!



On Tue, Dec 20, 2011 at 07:37:55PM +0100, Romain Francoise wrote:
> Hi,
> 
> When mouse-select-pane and mouse-select-window are both enabled, clicking
> on the status line to select another window also changes the current pane
> of the active window to the one adjacent to the status line.
> 
> This is probably not what was intended, so make mouse-select-pane ignore
> clicks in the status line.
> 
> diff --git a/server-client.c b/server-client.c
> index 6ed53b8..4065574 100644
> --- a/server-client.c
> +++ b/server-client.c
> @@ -319,6 +319,8 @@ server_client_handle_key(int key, struct mouse_event *mouse, void *data)
>  		if (c->flags & CLIENT_READONLY)
>  			return;
>  		if (options_get_number(oo, "mouse-select-pane") &&
> +		    (!(options_get_number(oo, "status") &&
> +		       mouse->y + 1 == c->tty.sy)) &&
>  		    ((!(mouse->b & MOUSE_DRAG) && mouse->b != MOUSE_UP) ||
>  		    wp->mode != &window_copy_mode)) {
>  			/*

------------------------------------------------------------------------------
Write once. Port to many.
Get the SDK and tools to simplify cross-platform app development. Create 
new or port existing apps to sell to consumers worldwide. Explore the 
Intel AppUpSM program developer opportunity. appdeveloper.intel.com/join
http://p.sf.net/sfu/intel-appdev
