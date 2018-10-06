# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

KEYWORDS="-* amd64 x86"
YEAR=2015
ARCHIVE="linux.zip"

#eval "PORTAGE_ECLASS_LOCATIONS=\"${PORTAGE_ECLASS_LOCATIONS} /var/lib/layman/dlang/eclass\""
#export PORTAGE_ECLASS_LOCATIONS="${PORTAGE_ECLASS_LOCATIONS} /var/lib/layman/dlang/eclass"
#export PORTAGE_ECLASS_LOCATIONS="/var/lib/layman/dlang/eclass ${PORTAGE_ECLASS_LOCATIONS}"
#PORTAGE_ECLASS_LOCATIONS=(/var/lib/layman/dlang/eclass)

#echo $PORTAGE_ECLASS_LOCATIONS

PATCHES=( \
	"${FILESDIR}/2.067-musl-amd64.patch" \
	"${FILESDIR}/2.067-musl-fpic.patch" \
	"${FILESDIR}/2.067-no-narrowing.patch" \
	"${FILESDIR}/2.068-replace-bits-mathdef-h.patch" \
	"${FILESDIR}/2.073-fix-segv-in-evalu8.patch" )

inherit dmd eutils
