Path: news.gmane.org!not-for-mail
From: Allan McRae <allan-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Newsgroups: gmane.linux.arch.pacman.devel
Subject: [PATCH] makepkg: rework libprovides
Date: Sun, 25 Dec 2011 16:52:47 +1000
Lines: 142
Approved: news@gmane.org
Message-ID: <1324795967-6122-1-git-send-email-allan@archlinux.org>
Reply-To: Discussion list for pacman development <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324795389 10891 80.91.229.12 (25 Dec 2011 06:43:09 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sun, 25 Dec 2011 06:43:09 +0000 (UTC)
To: pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-X-From: pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Sun Dec 25 07:43:04 2011
Return-path: <pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glapd-pacman-dev@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1RehnQ-0001gi-Dq
	for glapd-pacman-dev@m.gmane.org; Sun, 25 Dec 2011 07:43:00 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 28CFB9008F;
	Sun, 25 Dec 2011 01:42:56 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 3DFFF86165
 for <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Sun, 25 Dec 2011 01:42:55 -0500 (EST)
Original-Received: from localhost (122-148-115-77.static.dsl.dodo.com.au
 [122.148.115.77])
 by gerolde.archlinux.org (Postfix) with ESMTPSA id 0A34990081
 for <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Sun, 25 Dec 2011 01:42:53 -0500 (EST)
X-Mailer: git-send-email 1.7.8.1
X-BeenThere: pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
X-Mailman-Version: 2.1.14
Precedence: list
List-Id: Discussion list for pacman development <pacman-dev.archlinux.org>
List-Unsubscribe: <http://mailman.archlinux.org/mailman/options/pacman-dev>,
 <mailto:pacman-dev-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=unsubscribe>
List-Archive: <http://mailman.archlinux.org/pipermail/pacman-dev>
List-Post: <mailto:pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
List-Help: <mailto:pacman-dev-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=help>
List-Subscribe: <http://mailman.archlinux.org/mailman/listinfo/pacman-dev>,
 <mailto:pacman-dev-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=subscribe>
Errors-To: pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-Sender: pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Xref: news.gmane.org gmane.linux.arch.pacman.devel:8741
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.pacman.devel/8741>

This reworks the implmentation of libprovides for the following
benefits:
 - Moves functionality from write_pkginfo() to find_libprovides()
 - Only calculates the version for libraries specifically requested
   and not all libraries. This has the disadvantage of running find
   over the $pkgdir for as many libraries as needed, but is unlikely
   to be an issue due to caching.
 - The order of the provides array in the PKGBUILD is kept in the
   package
 - There are more warning messages when things fail and those that
   were there are no longer errors (as I do not think failure of
   libprovides should result in complete packaging failure)
 - It is now modular so can be easy extended to other library types
   other than ELF *.so.

Signed-off-by: Allan McRae <allan-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
---
 scripts/makepkg.sh.in |   85 +++++++++++++++++++++++++++----------------------
 1 files changed, 47 insertions(+), 38 deletions(-)

diff --git a/scripts/makepkg.sh.in b/scripts/makepkg.sh.in
index 64b33c6..08c4384 100644
--- a/scripts/makepkg.sh.in
+++ b/scripts/makepkg.sh.in
@@ -1076,30 +1076,51 @@ find_libdepends() {
 }
 
 find_libprovides() {
-	local libprovides
-	find "$pkgdir" -type f -name \*.so\* | while read filename
-	do
-		# check if we really have a shared object
-		if LC_ALL=C readelf -h "$filename" 2>/dev/null | grep -q '.*Type:.*DYN (Shared object file).*'; then
-			# 64
-			soarch=$(LC_ALL=C readelf -h "$filename" | sed -n 's/.*Class.*ELF\(32\|64\)/\1/p')
-			# get the string binaries link to: libfoo.so.1.2 -> libfoo.so.1
-			sofile=$(LC_ALL=C readelf -d "$filename" 2>/dev/null | sed -n 's/.*Library soname: \[\(.*\)\].*/\1/p')
-			[ -z "$sofile" ] && sofile="${filename##*/}"
+	local libprovides missing
+	for p in ${provides[@]}; do
+		missing=0
+		case "$p" in
+			*.so)
+				local filename=$(find "$pkgdir" -type f -name $p\*)
+				# packages may provide multiple versions of the same library
+				for fn in ${filename[@]}; do
+					# check if we really have a shared object
+					if LC_ALL=C readelf -h "$fn" 2>/dev/null | grep -q '.*Type:.*DYN (Shared object file).*'; then
+						# get the string binaries link to (e.g. libfoo.so.1.2 -> libfoo.so.1)
+						local sofile=$(LC_ALL=C readelf -d "$fn" 2>/dev/null | sed -n 's/.*Library soname: \[\(.*\)\].*/\1/p')
+						if [[ -z "$sofile" ]]; then
+							warning "$(gettext "Library listed in %s is not versioned: %s")" "'provides'" "$p"
+							libprovides=(${libprovides[@]} "$p")
+							continue
+						fi
 
-			# extract the library name: libfoo.so
-			soname="${sofile%%\.so\.*}.so"
-			# extract the major version: 1
-			soversion="${sofile##*\.so\.}"
-			if in_array "${soname}" ${provides[@]}; then
-				if ! in_array "${soname}=${soversion}-${soarch}" ${libprovides[@]}; then
-					# libfoo.so=1-64
-					echo "${soname}=${soversion}-${soarch}"
-					libprovides=(${libprovides[@]} "${soname}=${soversion}-${soarch}")
+						# get the library architecture (32 or 64 bit)
+						local soarch=$(LC_ALL=C readelf -h "$fn" | sed -n 's/.*Class.*ELF\(32\|64\)/\1/p')
+
+						# extract the library major version
+						local soversion="${sofile##*\.so\.}"
+
+						libprovides=(${libprovides[@]} "${p}=${soversion}-${soarch}")
+					else
+						warning "$(gettext "Library listed in %s is not a shared object: %s")" "'provides'" "$p"
+						libprovides=(${libprovides[@]} "$p")
+					fi
+				else
+					libprovides=(${libprovides[@]} "$p")
+					missing=1
 				fi
-			fi
-    fi
+				;;
+			*)
+				libprovides=(${libprovides[@]} "$p")
+				;;
+		esac
+
+		if (( missing )); then
+			warning "$(gettext "Can not find library listed in %s: %s")" "'provides'" "$p"
+		fi
 	done
+
+	echo ${libprovides[@]}
 }
 
 write_pkginfo() {
@@ -1133,13 +1154,15 @@ write_pkginfo() {
 	[[ $groups ]]     && printf "group = %s\n"     "${groups[@]}"
 	[[ $optdepends ]] && printf "optdepend = %s\n" "${optdepends[@]//+([[:space:]])/ }"
 	[[ $conflicts ]]  && printf "conflict = %s\n"  "${conflicts[@]}"
+
+	provides=("$(find_libprovides)")
+	[[ $provides ]]   && printf "provides = %s\n"  "${provides[@]}"
+
 	[[ $backup ]]     && printf "backup = %s\n"    "${backup[@]}"
 
-	local it
 
-	libprovides=$(find_libprovides)
+	local it
 	libdepends=$(find_libdepends)
-	provides=("${provides[@]}" ${libprovides})
 	depends=("${depends[@]}" ${libdepends})
 
 	for it in "${depends[@]}"; do
@@ -1155,20 +1178,6 @@ write_pkginfo() {
 		fi
 	done
 
-	for it in "${provides[@]}"; do
-		# ignore versionless entires (those come from the PKGBUILD)
-		if [[ $it  = *.so ]]; then
-			# check if the entry has been found by find_libprovides
-			# if not, it's unneeded; tell the user so he can remove it
-			if [[ ! $libprovides =~ (^|\s)${it}=.* ]]; then
-				error "$(gettext "Cannot find library listed in %s: %s")" "'provides'" "$it"
-				return 1
-			fi
-		else
-			echo "provides = $it"
-		fi
-	done
-
 	for it in "${packaging_options[@]}"; do
 		local ret="$(check_option $it)"
 		if [[ $ret != "?" ]]; then
-- 
1.7.8.1



