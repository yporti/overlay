# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

DESCRIPTION="Brazilian Portuguese dictionaries for myspell/hunspell"
HOMEPAGE="http://www.broffice.org/?q=verortografico"
LICENSE="GPL-2"
SLOT="0"
SRC_URI="http://www.broffice.org/files/pt_BR-2010-10-30AOC3.zip
	http://www.broffice.org/files/hyph_pt_BR-208.zip"

KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="app-arch/unzip
	!app-dicts/myspell-pt"
RDEPEND=""

src_install() {
	cd "${WORKDIR}"
	dodir /usr/share/myspell/
	insinto /usr/share/myspell/
	doins *dic *aff "${FILESDIR}"/dictionary.lst.ptbr
}
