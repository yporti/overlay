# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit font

DESCRIPTION="A set of matching libre/open fonts funded by Canonical"
HOMEPAGE="http://font.ubuntu.com/"
SRC_URI="http://font.ubuntu.com/download/${P}+ufl.zip"
LICENSE="UbuntuFontFamily"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

FONT_SUFFIX="ttf"
FONT_S="${WORKDIR}/${P}+ufl"

S=${FONT_S}

DOCS="CONTRIBUTING.txt copyright.txt FONTLOG.txt LICENCE-FAQ.txt \
	LICENCE.txt README.txt RELEASENOTES.txt TRADEMARKS.txt"