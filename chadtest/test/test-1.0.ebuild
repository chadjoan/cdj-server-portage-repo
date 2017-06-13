# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

EPREFIX="/usr/local/share/dcompilers"
CUSTOM_VAR="foobar"

DESCRIPTION="Test"
HOMEPAGE="Nope"
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_unpack() {
	elog "src_unpack:$LINENO.A == ${A}"
	elog "src_unpack:$LINENO.ED == ${ED}"
	elog "src_unpack:$LINENO.FILESDIR == ${FILESDIR}"
	elog "src_unpack:$LINENO.EPREFIX == ${EPREFIX}"
	elog "src_unpack:$LINENO.CUSTOM_VAR == ${CUSTOM_VAR}"
	#mkdir -p ${FILESDIR}
	mkdir -p ${WORKDIR}
	mkdir -p ${S}
	mkdir -p ${HOME}
}

#src_prepare() {
#	elog "src_prepare:$LINENO.EPREFIX == ${EPREFIX}"
#}

src_configure() {
	elog "src_configure:$LINENO.EPREFIX == ${EPREFIX}"
	elog "src_configure:$LINENO.CUSTOM_VAR == ${CUSTOM_VAR}"
}

src_compile() {
	elog "src_compile:$LINENO.EPREFIX == ${EPREFIX}"
	elog "src_compile:$LINENO.CUSTOM_VAR == ${CUSTOM_VAR}"
}

src_install() {
	elog "src_install:$LINENO.EPREFIX == ${EPREFIX}"
	elog "src_install:$LINENO.CUSTOM_VAR == ${CUSTOM_VAR}"
}

