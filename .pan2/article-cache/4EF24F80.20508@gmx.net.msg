Path: news.gmane.org!not-for-mail
From: marcel partap <mpartap@gmx.net>
Newsgroups: gmane.comp.terminal-emulators.tmux.user
Subject: [PATCH/RFC] Mouse support reimplementation
Date: Wed, 21 Dec 2011 22:28:32 +0100
Lines: 439
Approved: news@gmane.org
Message-ID: <4EF24F80.20508@gmx.net>
References: <874nwvytq4.fsf@silenus.orebokech.com>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="------------020904030103010200080604"
X-Trace: dough.gmane.org 1324502955 948 80.91.229.12 (21 Dec 2011 21:29:15 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Wed, 21 Dec 2011 21:29:15 +0000 (UTC)
Cc: tmux-users@lists.sourceforge.net
To: Romain Francoise <romain@orebokech.com>
Original-X-From: tmux-users-bounces@lists.sourceforge.net Wed Dec 21 22:29:10 2011
Return-path: <tmux-users-bounces@lists.sourceforge.net>
Envelope-to: gcttu-tmux-users@m.gmane.org
Original-Received: from lists.sourceforge.net ([216.34.181.88])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <tmux-users-bounces@lists.sourceforge.net>)
	id 1RdTin-0006eg-N0
	for gcttu-tmux-users@m.gmane.org; Wed, 21 Dec 2011 22:29:10 +0100
Original-Received: from localhost ([127.0.0.1] helo=sfs-ml-2.v29.ch3.sourceforge.com)
	by sfs-ml-2.v29.ch3.sourceforge.com with esmtp (Exim 4.76)
	(envelope-from <tmux-users-bounces@lists.sourceforge.net>)
	id 1RdTiR-00078L-3o; Wed, 21 Dec 2011 21:28:47 +0000
Original-Received: from sog-mx-4.v43.ch3.sourceforge.com ([172.29.43.194]
	helo=mx.sourceforge.net)
	by sfs-ml-2.v29.ch3.sourceforge.com with esmtp (Exim 4.76)
	(envelope-from <mpartap@gmx.net>) id 1RdTiP-00077W-5f
	for tmux-users@lists.sourceforge.net; Wed, 21 Dec 2011 21:28:45 +0000
Received-SPF: pass (sog-mx-4.v43.ch3.sourceforge.com: domain of gmx.net
	designates 213.165.64.23 as permitted sender)
	client-ip=213.165.64.23; envelope-from=mpartap@gmx.net;
	helo=mailout-de.gmx.net; 
Original-Received: from mailout-de.gmx.net ([213.165.64.23])
	by sog-mx-4.v43.ch3.sourceforge.com with smtp (Exim 4.76)
	id 1RdTiN-0005vp-OP
	for tmux-users@lists.sourceforge.net; Wed, 21 Dec 2011 21:28:45 +0000
Original-Received: (qmail invoked by alias); 21 Dec 2011 21:28:37 -0000
Original-Received: from 149-042.oih.RWTH-Aachen.DE (EHLO [137.226.149.42])
	[137.226.149.42]
	by mail.gmx.net (mp057) with SMTP; 21 Dec 2011 22:28:37 +0100
X-Authenticated: #724076
X-Provags-ID: V01U2FsdGVkX1+t+kR06Aytvi+/G7PbAa+CelURfQ7/63Lw0Toobs
	cwrLeyohxsviNy
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111118 Thunderbird/8.0
In-Reply-To: <874nwvytq4.fsf@silenus.orebokech.com>
X-Y-GMX-Trusted: 0
X-Spam-Score: -3.4 (---)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
	See http://spamassassin.org/tag/ for more details.
	-0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no trust [213.165.64.23 listed in list.dnswl.org]
	-1.5 SPF_CHECK_PASS SPF reports sender host as permitted sender for
	sender-domain
	0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	(mpartap[at]gmx.net)
	-0.0 SPF_PASS               SPF: sender matches SPF record
	-2.6 RP_MATCHES_RCVD Envelope sender domain matches handover relay
	domain 0.7 AWL AWL: From: address is in the auto white-list
X-Headers-End: 1RdTiN-0005vp-OP
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
Xref: news.gmane.org gmane.comp.terminal-emulators.tmux.user:2329
Archived-At: <http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/2329>

This is a multi-part message in MIME format.
--------------020904030103010200080604
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Fellow tmuxers,
at LAAAST! It is completed! ^^
There might be a few touch ups here and there that could be done but all 
in all, my mouse overhauling effort has concluded with attached patch. 
Changes:
- For panes not in xterm mouse tracking mode, 'emulate' wheel scrolling 
by sending cursor up/down sequences like some other terminal emulators 
do. Allows scrolling in less, man, bash history...
- Add bitmasks for mouse + SHIFT, ALT, CTRL
- Store timestamp for each mouse event
- Replace the last_mouse entry in the client structure with a tail queue 
of last 10 mouse events. Allows implementing complex mouse click 
'gestures' like 'kill window on CTRL + triple middle click within 
800ms'. Propositions for syntax needed!
- Fix layout not being recalculated when switching windows via mouse wheel
- Improved debug logging of mouse events
Please review.

Oh and there's a bug with parsing (x,y) mouse coordinates with x>160, 
probably platform specific types... For reference: 
http://david.woodhou.se/mouse.c minimal implementation works, current 
code gives bogus coords on linux/x86_64..

> This is probably not what was intended, so make mouse-select-pane ignore
> clicks in the status line.
Good catch. Fix is incorporated.

#regards|marcel C:

--------------020904030103010200080604
Content-Type: text/x-patch;
 name="tmux-mouse-overhauling-rfc.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="tmux-mouse-overhauling-rfc.patch"

--- input-keys.c.orig	2011-12-21 21:56:08.901056926 +0100
+++ input-keys.c	2011-12-21 21:57:07.553245366 +0100
@@ -203,7 +203,7 @@ input_mouse(struct window_pane *wp, stru
 {
 	char	buf[10];
 	size_t	len;
-	int	value;
+	int	mode, i, lines;
 
 	if (wp->screen->mode & ALL_MOUSE_MODES) {
 		if (wp->screen->mode & MODE_MOUSE_UTF8) {
@@ -220,13 +220,29 @@ input_mouse(struct window_pane *wp, stru
 			buf[len++] = m->y + 33;
 		}
 		bufferevent_write(wp->event, buf, len);
-	} else if ((m->b & MOUSE_BUTTON) != MOUSE_2) {
-		value = options_get_number(&wp->window->options, "mode-mouse");
-		if (value == 1 &&
+		return;
+	}
+	if ((m->b & MOUSE_BUTTON) != MOUSE_2) {
+		mode = options_get_number(&wp->window->options, "mode-mouse");
+		if (mode == 1 &&
 		    window_pane_set_mode(wp, &window_copy_mode) == 0) {
 			window_copy_init_from_pane(wp);
 			if (wp->mode->mouse != NULL)
 				wp->mode->mouse(wp, NULL, m);
+			return;
 		}
 	}
+	/* Emulate mouse wheel scrolling. */
+	if (m->b & MOUSE_45) {
+		/* 
+		 * Wheel + shift: scroll 1 line
+		 * Wheel + ctrl: scroll at triple speed
+		 * */
+		lines = (m->b & MOUSE_SHIFT) ? 1 : MOUSE_SCROLL_EMU_LINES;
+		if (m->b & MOUSE_CTRL)
+			lines *= 3;
+
+		for (i=0; i < lines; i++)
+			input_key(wp, (m->b & MOUSE_BUTTON) == MOUSE_1 ? KEYC_UP : KEYC_DOWN);
+	}
 }
--- server-client.c.orig	2011-12-21 21:56:08.979059839 +0100
+++ server-client.c	2011-12-21 21:57:02.135043206 +0100
@@ -26,6 +26,10 @@
 
 #include "tmux.h"
 
+u_int	server_client_mouse_time_diff(struct mouse_event *, struct mouse_event *);
+char*	server_client_mouse_button_string(int);
+void	server_client_prune_mouse_stack(struct client *);
+void	server_client_handle_mouse_event(struct client *, struct mouse_event *);
 void	server_client_handle_key(int, struct mouse_event *, void *);
 void	server_client_repeat_timer(int, short, void *);
 void	server_client_check_exit(struct client *);
@@ -88,8 +92,7 @@ server_client_create(int fd)
 	c->prompt_buffer = NULL;
 	c->prompt_index = 0;
 
-	c->last_mouse.b = MOUSE_UP;
-	c->last_mouse.x = c->last_mouse.y = -1;
+	TAILQ_INIT(&c->mouse_events);
 
 	evtimer_set(&c->repeat_timer, server_client_repeat_timer, c);
 
@@ -261,6 +264,124 @@ server_client_status_timer(void)
 	}
 }
 
+u_int
+server_client_mouse_time_diff(struct mouse_event *m_first, struct mouse_event *m_second)
+{
+	u_int	diff_usec;
+
+	diff_usec  = m_second->time.tv_usec - m_first->time.tv_usec;
+	diff_usec += (m_second->time.tv_sec - m_first->time.tv_sec) * 1000000;
+	return diff_usec;
+}
+
+char *
+server_client_mouse_button_string(int b) {
+	static char buf[200];
+	buf[0] = '\0';
+	if (b & MOUSE_SHIFT) strcat(buf, "shift ");
+	if (b & MOUSE_ALT) strcat(buf, "alt ");
+	if (b & MOUSE_CTRL) strcat(buf, "ctrl ");
+	if (!(b & MOUSE_45) && ((b & MOUSE_BUTTON) == MOUSE_1)) strcat(buf, "left ");
+	if (!(b & MOUSE_45) && ((b & MOUSE_BUTTON) == MOUSE_2)) strcat(buf, "middle ");
+	if ((b & MOUSE_BUTTON) == MOUSE_3) strcat(buf, "right ");
+	if (!(b & MOUSE_45) && ((b & MOUSE_BUTTON) == MOUSE_BUTTON)) strcat(buf, "buttonup ");
+	if (b & MOUSE_DRAG) strcat(buf, "drag ");
+	if ((b & MOUSE_45) && (b & MOUSE_BUTTON) == MOUSE_1) strcat(buf, "wheelup ");
+	if ((b & MOUSE_45) && (b & MOUSE_BUTTON) == MOUSE_2) strcat(buf, "wheeldown ");
+
+	return buf;
+}
+
+#define MAXMOUSEEVENTS 10
+void
+server_client_prune_mouse_stack(struct client *c)
+{
+	struct mouse_event	*m = TAILQ_FIRST(&c->mouse_events);
+	int			 i = 0;
+
+	while (m) {
+		if(++i == MAXMOUSEEVENTS) {
+			TAILQ_REMOVE(&c->mouse_events, m, entry);
+			xfree(m);
+			break;
+		} else
+			m = TAILQ_NEXT(m, entry); 
+	}
+	log_debug("mouse: %u events in history", i);
+
+}
+
+void
+server_client_handle_mouse_event(struct client *c, struct mouse_event *mouse)
+{
+	struct mouse_event	*m[MAXMOUSEEVENTS];
+	struct session		*s;
+	struct window		*w;
+	struct window_pane	*wp;
+	struct options		*oo;
+	char			*btn_str;
+	u_int			 tdiff, i = 0;
+
+	s = c->session;
+	w = s->curw->window;
+	wp = w->active;
+	oo = &s->options;
+
+	btn_str = server_client_mouse_button_string(mouse->b);
+	tdiff = TAILQ_EMPTY(&c->mouse_events) ? 0 : server_client_mouse_time_diff(TAILQ_FIRST(&c->mouse_events), mouse);
+	log_debug("mouse event: %s(button=%u), (x,y)=(%u,%u) (+%.2fsec)",
+		btn_str, mouse->b, mouse->x, mouse->y, tdiff/1000000.0);
+
+	memset(m, 0, MAXMOUSEEVENTS * sizeof *m);
+	m[0] = xmalloc(sizeof(struct mouse_event));
+	memcpy(m[0], mouse, sizeof(struct mouse_event));
+
+	TAILQ_INSERT_HEAD(&c->mouse_events, m[0], entry);
+	server_client_prune_mouse_stack(c);
+	/* Map the mouse event history tail queue to an array for laziness benefit. */
+	TAILQ_FOREACH(mouse, &c->mouse_events, entry) {
+		m[i] = mouse;
+		i++;
+	}
+
+	/* Allow pane switching in copy mode only by mouse down (click). */
+	if (options_get_number(oo, "mouse-select-pane") &&
+	    !(options_get_number(oo, "status") && m[0]->y + 1 == c->tty.sy) &&
+	    (wp->mode != &window_copy_mode ||
+	     (!(m[0]->b & MOUSE_DRAG) && m[0]->b != MOUSE_UP))) { /* neither mouse drag nor button up */
+		window_set_active_at(w, m[0]->x, m[0]->y);
+		server_redraw_window_borders(w);
+		wp = w->active;
+	}
+	if (m[0]->y + 1 == c->tty.sy &&
+	    options_get_number(oo, "mouse-select-window") &&
+	    options_get_number(oo, "status")) {
+		if (m[0]->b == MOUSE_UP && m[1] && m[1]->b != MOUSE_UP) {
+			status_set_window_at(c, m[0]->x);
+			return;
+		}
+		if (m[0]->b & MOUSE_45) {
+			if ((m[0]->b & MOUSE_BUTTON) == MOUSE_1) {
+				session_previous(c->session, 0);
+			}
+			if ((m[0]->b & MOUSE_BUTTON) == MOUSE_2) {
+				session_next(c->session, 0);
+			}
+			recalculate_sizes();
+			server_redraw_session(s);
+			return;
+		}
+	}
+	if (options_get_number(oo, "mouse-resize-pane"))
+		layout_resize_pane_mouse(c, m[0]);
+	/*
+	 * TODO: Elaborate mouse click gesture matching on
+	 * event history array goes here. Config syntax?
+	 */
+	window_pane_mouse(wp, c->session, m[0]);
+	return;
+}
+
 /* Handle data key input from client. */
 void
 server_client_handle_key(int key, struct mouse_event *mouse, void *data)
@@ -287,6 +408,7 @@ server_client_handle_key(int key, struct
 	if (gettimeofday(&c->activity_time, NULL) != 0)
 		fatal("gettimeofday failed");
 	memcpy(&s->activity_time, &c->activity_time, sizeof s->activity_time);
+	memcpy(&mouse->time, &c->activity_time, sizeof mouse->time);
 
 	w = c->session->curw->window;
 	wp = w->active;
@@ -318,42 +440,8 @@ server_client_handle_key(int key, struct
 	if (key == KEYC_MOUSE) {
 		if (c->flags & CLIENT_READONLY)
 			return;
-		if (options_get_number(oo, "mouse-select-pane") &&
-		    ((!(mouse->b & MOUSE_DRAG) && mouse->b != MOUSE_UP) ||
-		    wp->mode != &window_copy_mode)) {
-			/*
-			 * Allow pane switching in copy mode only by mouse down
-			 * (click).
-			 */
-			window_set_active_at(w, mouse->x, mouse->y);
-			server_redraw_window_borders(w);
-			wp = w->active;
-		}
-		if (mouse->y + 1 == c->tty.sy &&
-		    options_get_number(oo, "mouse-select-window") &&
-		    options_get_number(oo, "status")) {
-			if (mouse->b == MOUSE_UP &&
-			    c->last_mouse.b != MOUSE_UP) {
-				status_set_window_at(c, mouse->x);
-				return;
-			}
-			if (mouse->b & MOUSE_45) {
-				if ((mouse->b & MOUSE_BUTTON) == MOUSE_1) {
-					session_previous(c->session, 0);
-					server_redraw_session(s);
-				}
-				if ((mouse->b & MOUSE_BUTTON) == MOUSE_2) {
-					session_next(c->session, 0);
-					server_redraw_session(s);
-				}
-				return;
-			}
-		}
-		if (options_get_number(oo, "mouse-resize-pane"))
-			layout_resize_pane_mouse(c, mouse);
-		memcpy(&c->last_mouse, mouse, sizeof c->last_mouse);
-		window_pane_mouse(wp, c->session, mouse);
-		return;
+		else
+			server_client_handle_mouse_event(c, mouse);
 	}
 
 	/* Is this a prefix key? */
@@ -473,6 +561,7 @@ server_client_reset_state(struct client
 	struct screen		*s = wp->screen;
 	struct options		*oo = &c->session->options;
 	struct options		*wo = &w->options;
+	struct mouse_event	*lm;
 	int			 status, mode;
 
 	if (c->flags & CLIENT_SUSPENDED)
@@ -491,7 +580,9 @@ server_client_reset_state(struct client
 	 * a smooth appearance.
 	 */
 	mode = s->mode;
-	if ((c->last_mouse.b & MOUSE_RESIZE_PANE) &&
+	if (!TAILQ_EMPTY(&c->mouse_events) &&
+	    (lm = TAILQ_NEXT(TAILQ_FIRST(&c->mouse_events), entry)) != NULL &&
+	    lm->b & MOUSE_RESIZE_PANE &&
 	    !(mode & (MODE_MOUSE_BUTTON|MODE_MOUSE_ANY)))
 		mode |= MODE_MOUSE_BUTTON;
 
--- layout.c.orig	2011-12-21 21:56:08.929057970 +0100
+++ layout.c	2011-12-21 21:57:02.135043206 +0100
@@ -490,26 +490,27 @@ layout_resize_pane_mouse(struct client *
 {
 	struct window		*w;
 	struct window_pane	*wp;
+	struct mouse_event	*last_mouse = TAILQ_NEXT(mouse, entry);
 	int		      	 pane_border;
 
 	w = c->session->curw->window;
-
 	pane_border = 0;
-	if ((c->last_mouse.b & MOUSE_BUTTON) != MOUSE_UP &&
-		(c->last_mouse.b & MOUSE_RESIZE_PANE)) {
+
+	if (last_mouse != NULL && (last_mouse->b & MOUSE_BUTTON) != MOUSE_UP &&
+		(last_mouse->b & MOUSE_RESIZE_PANE)) {
 		TAILQ_FOREACH(wp, &w->panes, entry) {
-			if (wp->xoff + wp->sx == c->last_mouse.x &&
-				wp->yoff <= 1 + c->last_mouse.y &&
-				wp->yoff + wp->sy >= c->last_mouse.y) {
+			if (wp->xoff + wp->sx == last_mouse->x &&
+				wp->yoff <= 1 + last_mouse->y &&
+				wp->yoff + wp->sy >= last_mouse->y) {
 				layout_resize_pane(wp, LAYOUT_LEFTRIGHT,
-								   mouse->x - c->last_mouse.x);
+								   mouse->x - last_mouse->x);
 				pane_border = 1;
 			}
-			if (wp->yoff + wp->sy == c->last_mouse.y &&
-				wp->xoff <= 1 + c->last_mouse.x &&
-				wp->xoff + wp->sx >= c->last_mouse.x) {
+			if (wp->yoff + wp->sy == last_mouse->y &&
+				wp->xoff <= 1 + last_mouse->x &&
+				wp->xoff + wp->sx >= last_mouse->x) {
 				layout_resize_pane(wp, LAYOUT_TOPBOTTOM,
-								   mouse->y - c->last_mouse.y);
+								   mouse->y - last_mouse->y);
 				pane_border = 1;
 			}
 		}
--- tty-keys.c.orig	2011-12-21 21:56:09.019061330 +0100
+++ tty-keys.c	2011-12-21 21:57:02.142043467 +0100
@@ -633,6 +633,7 @@ tty_keys_mouse(struct tty *tty,
 				value = (unsigned char)buf[*size];
 			(*size)++;
 		} else {
+			/* FIXME: x > 160 = pointeger magic casting FAIL? */
 			value = (unsigned char)buf[*size];
 			(*size)++;
 		}
@@ -644,14 +645,12 @@ tty_keys_mouse(struct tty *tty,
 		else
 			m->y = value;
 	}
-	log_debug("mouse input: %.*s", (int) *size, buf);
-
-	/* Check and return the mouse input. */
+	/* Fail on invalid mouse input. */
 	if (m->b < 32 || m->x < 33 || m->y < 33)
 		return (-1);
 	m->b -= 32;
 	m->x -= 33;
 	m->y -= 33;
-	log_debug("mouse position: x=%u y=%u b=%u", m->x, m->y, m->b);
+	memset(&m->entry, 0, sizeof(m->entry));	
 	return (0);
 }
--- tmux.h.orig	2011-12-21 21:56:09.018061293 +0100
+++ tmux.h	2011-12-21 21:57:02.142043467 +0100
@@ -569,6 +569,8 @@ struct mode_key_table {
 
 #define ALL_MOUSE_MODES (MODE_MOUSE_STANDARD|MODE_MOUSE_BUTTON|MODE_MOUSE_ANY)
 
+#define MOUSE_SCROLL_EMU_LINES 3
+
 /*
  * A single UTF-8 character.
  *
@@ -1099,12 +1101,18 @@ struct mouse_event {
 #define MOUSE_3 2
 #define MOUSE_UP 3
 #define MOUSE_BUTTON 3
+#define MOUSE_SHIFT 4
+#define MOUSE_ALT 8
+#define MOUSE_CTRL 16
 #define MOUSE_DRAG 32
 #define MOUSE_45 64
 #define MOUSE_RESIZE_PANE 128 /* marker for resizing */
 	u_int	x;
 	u_int	y;
+	struct timeval	time;
+	TAILQ_ENTRY(mouse_event) entry;
 };
+TAILQ_HEAD(mouse_event_stack, mouse_event);
 
 /* Saved message entry. */
 struct message_entry {
@@ -1193,7 +1201,7 @@ struct client {
 	struct session	*session;
 	struct session	*last_session;
 
-	struct mouse_event last_mouse;
+	struct mouse_event_stack mouse_events;
 
 	int		 references;
 };

--------------020904030103010200080604
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
--------------020904030103010200080604
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tmux-users mailing list
tmux-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tmux-users

--------------020904030103010200080604--


