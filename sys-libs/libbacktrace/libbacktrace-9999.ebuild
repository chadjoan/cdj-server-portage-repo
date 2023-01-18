# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=8

DESCRIPTION="Provides runtime non-fatal backtraces. Useful for systems that do not have glibc's backtrace extensions."
HOMEPAGE="https://github.com/ianlancetaylor/libbacktrace"
EGIT_REPO_URI="https://github.com/ianlancetaylor/libbacktrace.git"
inherit git-r3

LICENSE="BSD"
SLOT="0"
KEYWORDS="~mips ~sparc ~x86 ~amd64"

DEPEND="sys-devel/gcc"

src_configure() {
    econf
}

src_install() {
    emake DESTDIR="${D}" install
}


