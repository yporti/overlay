# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

DESCRIPTION="Brazilian Portuguese dictionaries for myspell/hunspell"
HOMEPAGE="http://www.broffice.org/?q=verortografico"
LICENSE="GPL-2"
SLOT="0"
SRC_URI="http://www.broffice.org/files/pt_BR-2011-05-27AOC.zip
	http://www.broffice.org/files/hyph_pt_BR-209.zip
	http://www.broffice.org/files/acor_pt-BR-208.zip"

KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="app-arch/unzip
	!app-dicts/myspell-pt"
RDEPEND=""

src_install() {
	cd "${WORKDIR}"
	dodir /usr/share/myspell/
	insinto /usr/share/myspell/
	doins *dat *dic *aff "${FILESDIR}"/dictionary.lst.ptbr
}
