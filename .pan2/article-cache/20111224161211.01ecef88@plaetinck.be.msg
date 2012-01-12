Path: news.gmane.org!not-for-mail
From: Dieter Plaetinck <dieter-7FYLOmueu/EUehRvb1n7cg@public.gmane.org>
Newsgroups: gmane.linux.arch.releng
Subject: WIP: qemu-kvm helper for testing VM's
Date: Sat, 24 Dec 2011 16:12:11 +0100
Lines: 34
Approved: news@gmane.org
Message-ID: <20111224161211.01ecef88@plaetinck.be>
Reply-To: Arch Linux Release Engineering <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324739594 3250 80.91.229.12 (24 Dec 2011 15:13:14 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sat, 24 Dec 2011 15:13:14 +0000 (UTC)
To: arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-X-From: arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Sat Dec 24 16:13:10 2011
Return-path: <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glar-arch-releng@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1ReTHa-0008Nj-QC
	for glar-arch-releng@m.gmane.org; Sat, 24 Dec 2011 16:13:10 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 50DDD90077;
	Sat, 24 Dec 2011 10:13:07 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id A40F386164
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Sat, 24 Dec 2011 10:13:05 -0500 (EST)
Received-SPF: none (plaetinck.be: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="dieter-7FYLOmueu/EUehRvb1n7cg@public.gmane.org"; helo=smtp.priorweb.be;
 client-ip=62.182.61.111
Original-Received: from smtp.priorweb.be (smtp01.priorweb.be [62.182.61.111])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 72D399006E
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Sat, 24 Dec 2011 10:13:04 -0500 (EST)
Original-Received: from [178.79.146.162] (port=52248 helo=localhost.localdomain)
 by smtp.priorweb.be with esmtps (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
 (Exim 4.72) (envelope-from <dieter-7FYLOmueu/EUehRvb1n7cg@public.gmane.org>) id 1ReTHT-0005J1-H7
 for arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org; Sat, 24 Dec 2011 16:13:03 +0100
X-Mailer: Claws Mail 3.8.0 (GTK+ 2.24.8; x86_64-unknown-linux-gnu)
X-BeenThere: arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
X-Mailman-Version: 2.1.14
Precedence: list
List-Id: Arch Linux Release Engineering <arch-releng.archlinux.org>
List-Unsubscribe: <http://mailman.archlinux.org/mailman/options/arch-releng>, 
 <mailto:arch-releng-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=unsubscribe>
List-Archive: <http://mailman.archlinux.org/pipermail/arch-releng>
List-Post: <mailto:arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
List-Help: <mailto:arch-releng-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=help>
List-Subscribe: <http://mailman.archlinux.org/mailman/listinfo/arch-releng>,
 <mailto:arch-releng-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=subscribe>
Errors-To: arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-Sender: arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Xref: news.gmane.org gmane.linux.arch.releng:955
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.releng/955>

Hi, i created a simple script to run test/install VM's based on qemu-kvm.
i started off with http://blog.falconindy.com/articles/build-a-virtual-army.html
i didn't test the networking yet (in fact, i have networking disabled for now)
but the useful thing about this script is it automatically adds the right serial/console parameters to the kernel args,
when booting archiso, using xdotool (for this to work, ttyS0 needs to be setup in inittab).

two problems:
1) i can't do the same xdotool trick yet when booting the actual system, because syslinux doesn't appear in the terminal when booting the system, whereas it does appear when booting archiso. (this is why for now you get to see both the terminal and a vga window in vm_run())
2) when booting the target system, the kernel doesn't seem to find the blockdevice at all. (whereas it just works when booting archiso).

here's what I have so far, maybe somebody finds it useful:
feedback very welcome.

#!/bin/bash

mem=1024
cpus=2
net='nic,model=virtio'
drive='file=arch-testbox,if=virtio'
cdrom=$HOME/downloads/archlinux-2011.12.24_10-40-01-core-i686.iso

vm_install () {
        (sleep 2; xdotool key Tab ; sleep 1; xdotool type --delay 30 " serial=tty0 console=ttyS0,115200n8"; xdotool key Return) &
        qemu-kvm -m $mem -smp $cpus -net $net -drive $drive -cdrom $cdrom -boot d -serial /dev/tty -nographic
}
vm_run () {
        # TODO: fix this, syslinux doesn't appear on tty (whereas it does appear when booting archiso)
        #(sleep 2; xdotool key Tab ; sleep 1; xdotool type --delay 30 " serial=tty0 console=ttyS0,115200n8"; xdotool key Return) &
        qemu-kvm -m $mem -smp $cpus -net $net -drive $drive -cdrom $cdrom -serial /dev/tty
}

#vm_install
vm_run

