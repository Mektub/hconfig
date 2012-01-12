Path: news.gmane.org!not-for-mail
From: Felix Rosencrantz <f.rosencrantz@gmail.com>
Newsgroups: gmane.comp.terminal-emulators.tmux.user
Subject: Re: Confusion about window names and pane titles
Date: Fri, 30 Dec 2011 08:36:06 -0800
Lines: 186
Approved: news@gmane.org
Message-ID: <CANGpWceUwqJuX+VkK9PT8y-1zXeX3cm7Gj-32W_XuPHPK_Aaag@mail.gmail.com>
References: <CANGpWcdvwqqxnDHDkV3qHdPjYd-yHY2UXgViU5RCfzgCy6kTsA@mail.gmail.com>
	<20111104001945.GA3628@yelena.nicm.ath.cx>
	<CANGpWcfoAfpcfURPxypFDnywufjL=dE5hgN_CEZDDcqcmy3hhw@mail.gmail.com>
	<20111219203534.GI29570@yelena.nicm.ath.cx>
	<CANGpWcd+pf=VY0TaQBcOD+gCyhajZQoKpGquit05Q2kHARBxcA@mail.gmail.com>
	<20111224082326.GE2201@yelena.nicm.ath.cx>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Trace: dough.gmane.org 1325262994 18681 80.91.229.12 (30 Dec 2011 16:36:34 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 30 Dec 2011 16:36:34 +0000 (UTC)
Cc: tmux-users@lists.sourceforge.net
To: Nicholas Marriott <nicholas.marriott@gmail.com>
Original-X-From: tmux-users-bounces@lists.sourceforge.net Fri Dec 30 17:36:30 2011
Return-path: <tmux-users-bounces@lists.sourceforge.net>
Envelope-to: gcttu-tmux-users@m.gmane.org
Original-Received: from lists.sourceforge.net ([216.34.181.88])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <tmux-users-bounces@lists.sourceforge.net>)
	id 1RgfRV-0006I7-Ex
	for gcttu-tmux-users@m.gmane.org; Fri, 30 Dec 2011 17:36:29 +0100
Original-Received: from localhost ([127.0.0.1] helo=sfs-ml-3.v29.ch3.sourceforge.com)
	by sfs-ml-3.v29.ch3.sourceforge.com with esmtp (Exim 4.76)
	(envelope-from <tmux-users-bounces@lists.sourceforge.net>)
	id 1RgfRF-0003tB-W0; Fri, 30 Dec 2011 16:36:13 +0000
Original-Received: from sog-mx-3.v43.ch3.sourceforge.com ([172.29.43.193]
	helo=mx.sourceforge.net)
	by sfs-ml-3.v29.ch3.sourceforge.com with esmtp (Exim 4.76)
	(envelope-from <f.rosencrantz@gmail.com>) id 1RgfRE-0003t4-Gm
	for tmux-users@lists.sourceforge.net; Fri, 30 Dec 2011 16:36:12 +0000
Received-SPF: pass (sog-mx-3.v43.ch3.sourceforge.com: domain of gmail.com
	designates 209.85.213.47 as permitted sender)
	client-ip=209.85.213.47; envelope-from=f.rosencrantz@gmail.com;
	helo=mail-yw0-f47.google.com; 
Original-Received: from mail-yw0-f47.google.com ([209.85.213.47])
	by sog-mx-3.v43.ch3.sourceforge.com with esmtps (TLSv1:RC4-MD5:128)
	(Exim 4.76) id 1RgfRD-0006qK-Kb
	for tmux-users@lists.sourceforge.net; Fri, 30 Dec 2011 16:36:12 +0000
Original-Received: by yhoo47 with SMTP id o47so9192089yho.34
	for <tmux-users@lists.sourceforge.net>;
	Fri, 30 Dec 2011 08:36:06 -0800 (PST)
Original-Received: by 10.236.183.138 with SMTP id q10mr51397265yhm.128.1325262966099;
	Fri, 30 Dec 2011 08:36:06 -0800 (PST)
Original-Received: by 10.236.203.70 with HTTP; Fri, 30 Dec 2011 08:36:06 -0800 (PST)
In-Reply-To: <20111224082326.GE2201@yelena.nicm.ath.cx>
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
	See http://spamassassin.org/tag/ for more details.
	-1.5 SPF_CHECK_PASS SPF reports sender host as permitted sender for
	sender-domain
	0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	(f.rosencrantz[at]gmail.com)
	-0.0 SPF_PASS               SPF: sender matches SPF record
	-0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's domain
	0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
	not necessarily valid
	-0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	0.0 AWL AWL: From: address is in the auto white-list
X-Headers-End: 1RgfRD-0006qK-Kb
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
Xref: news.gmane.org gmane.comp.terminal-emulators.tmux.user:2358
Archived-At: <http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/2358>

The final draft seems correct to me and addresses the issues.

-FR.

On Sat, Dec 24, 2011 at 12:23 AM, Nicholas Marriott
<nicholas.marriott@gmail.com> wrote:
> On Mon, Dec 19, 2011 at 04:00:28PM -0800, Felix Rosencrantz wrote:
>> Looks pretty good, I have four small issues:
>>
>> 1) automatic-rename is also turned off by setting window name via
>> escape sequence, which is not spelled out, anywhere in the man page,
>> and this is what actually was biting me originally. (or I missed it in
>> the patched version or forgot to add that in the patch I sent.)
>>
>> 2) =A0"A window's title is the title of it's active pane." This might be
>> a little unclear, since just before there it says only panes have
>> titles.
>
> Yes, maybe this is clearer below. Also fixed to mention tsl, fsl in
> set-titles bit.
>
>>
>> 3) =A0"in target" seems awkward to me in this "Windows and sessions have
>> names, which may be used to specify them in target and...", but that
>> may be correct way to say it.
>
> It should be "in targets".
>
>
> Index: tmux.1
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> RCS file: /cvs/src/usr.bin/tmux/tmux.1,v
> retrieving revision 1.257
> diff -u -p -r1.257 tmux.1
> --- tmux.1 =A0 =A0 =A09 Dec 2011 16:28:18 -0000 =A0 =A0 =A0 1.257
> +++ tmux.1 =A0 =A0 =A024 Dec 2011 08:22:49 -0000
> @@ -2044,7 +2044,14 @@ command to destroy it.
> =A0.It Xo Ic set-titles
> =A0.Op Ic on | off
> =A0.Xc
> -Attempt to set the window title using the \ee]2;...\e007 xterm code if
> +Attempt to set the client terminal title using the
> +.Em tsl
> +and
> +.Em fsl
> +.Xr terminfo 5
> +entries if they exist.
> +.Nm
> +automatically sets these to the \ee]2;...\e007 sequence if
> =A0the terminal appears to be an xterm.
> =A0This option is off by default.
> =A0Note that elinks
> @@ -2110,7 +2117,7 @@ may contain any of the following special
> =A0.It Li "#I" Ta "Current window index"
> =A0.It Li "#P" Ta "Current pane index"
> =A0.It Li "#S" Ta "Session name"
> -.It Li "#T" Ta "Current window title"
> +.It Li "#T" Ta "Current pane title"
> =A0.It Li "#W" Ta "Current window name"
> =A0.It Li "##" Ta "A literal" Ql #
> =A0.El
> @@ -2129,13 +2136,9 @@ global environment set (see the
> =A0.Sx ENVIRONMENT
> =A0section).
> =A0.Pp
> -The window title (#T) is the title set by the program running within the=
 window
> -using the OSC title setting sequence, for example:
> -.Bd -literal -offset indent
> -$ printf '\e033]2;My Title\e033\e\e'
> -.Ed
> -.Pp
> -When a window is first created, its title is the hostname.
> +For details on how the names and titles can be set see the
> +.Sx "NAMES AND TITLES"
> +section.
> =A0.Pp
> =A0#[attributes] allows a comma-separated list of attributes to be specif=
ied,
> =A0these may be
> @@ -2359,7 +2362,8 @@ is specified at creation with
> =A0or
> =A0.Ic new-session ,
> =A0or later with
> -.Ic rename-window .
> +.Ic rename-window ,
> +or with a terminal escape sequence.
> =A0It may be switched off globally with:
> =A0.Bd -literal -offset indent
> =A0set-window-option -g automatic-rename off
> @@ -2654,6 +2658,62 @@ The following variables are available, w
> =A0.It Li "window_name" Ta "Name of window"
> =A0.It Li "window_width" Ta "Width of window"
> =A0.El
> +.Sh NAMES AND TITLES
> +.Nm
> +distinguishes between names and titles.
> +Windows and sessions have names, which may be used to specify them in ta=
rgets
> +and are displayed in the status line and various lists: the name is the
> +.Nm
> +identifier for a window or session.
> +Only panes have titles.
> +A pane's title is typically set by the program running inside the pane a=
nd
> +is not modified by
> +.Nm .
> +It is the same mechanism used to set for example the
> +.Xr xterm 1
> +window title in an
> +.Xr X 7
> +window manager.
> +Windows themselves do not have titles - a window's title is the title of=
 it's
> +active pane.
> +.Nm
> +itself may set the title of the terminal in which the client is running,=
 see
> +the
> +.Ic set-titles
> +option.
> +.Pp
> +A session's name is set with the
> +.Ic new-session
> +and
> +.Ic rename-session
> +commands.
> +A window's name is set with one of:
> +.Bl -enum -width Ds
> +.It
> +A command argument (such as
> +.Fl n
> +for
> +.Ic new-window
> +or
> +.Ic new-session ) .
> +.It
> +An escape sequence:
> +.Bd -literal -offset indent
> +$ printf '\e033kWINDOW_NAME\e033\e\e'
> +.Ed
> +.It
> +Automatic renaming, which sets the name to the active command in the win=
dow's
> +active pane.
> +See the
> +.Ic automatic-rename
> +option.
> +.El
> +.Pp
> +When a pane is first created, its title is the hostname.
> +A pane's title can be set via the OSC title setting sequence, for exampl=
e:
> +.Bd -literal -offset indent
> +$ printf '\e033]2;My Title\e033\e\e'
> +.Ed
> =A0.Sh ENVIRONMENT
> =A0When the server is started,
> =A0.Nm
> @@ -2717,8 +2777,8 @@ terminal.
> =A0By default, the status line is enabled (it may be disabled with the
> =A0.Ic status
> =A0session option) and contains, from left-to-right: the name of the curr=
ent
> -session in square brackets; the window list; the current window title in=
 double
> -quotes; and the time and date.
> +session in square brackets; the window list; the title of the active pane
> +in double quotes; and the time and date.
> =A0.Pp
> =A0The status line is made of three parts: configurable left and right se=
ctions
> =A0(which may contain dynamic content such as the time or output from a s=
hell

---------------------------------------------------------------------------=
---
Ridiculously easy VDI. With Citrix VDI-in-a-Box, you don't need a complex
infrastructure or vast IT resources to deliver seamless, secure access to
virtual desktops. With this all-in-one solution, easily deploy virtual =

desktops for less than the cost of PCs and save 60% on VDI infrastructure =

costs. Try it free! http://p.sf.net/sfu/Citrix-VDIinabox
