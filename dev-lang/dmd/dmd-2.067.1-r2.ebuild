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

PATCHES=( "2.067.1-r2-musl-amd64.patch" "2.067.1-r2-musl-fpic.patch" )

inherit dmd eutils
