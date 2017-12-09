# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools toolchain-funcs

DESCRIPTION="fpart and fpsync programs for synchronizing directories and files in a parallel and immediate manner."
HOMEPAGE="http://www.etallen.com/cpuid.html"

# Point to the git commit that the 1.0.0 tag pointed to on 2017-12-09
inherit git-r3
AUTOTOOLS_AUTORECONF="1"
EGIT_COMMIT="71ccfab14f261255ea2130298f0fa94522941613"
EGIT_REPO_URI="https://github.com/martymac/${PN}.git"

LICENSE="BSD"
SLOT="0"
#KEYWORDS=""
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="sys-libs/fts-standalone"
RDEPEND="sys-libs/fts-standalone"

src_prepare() {
	eautoreconf
	eapply_user
}

src_configure() {
	tc-export CC
	econf
}

src_compile() {
	emake LDFLAGS="-lfts $LDFLAGS"
}

src_install() {
	emake DESTDIR="${D}" BUILDROOT="${ED}" install
	einstalldocs
}
