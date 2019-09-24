TERMUX_PKG_HOMEPAGE=https://xiph.org/flac/
TERMUX_PKG_DESCRIPTION="FLAC (Free Lossless Audio Codec) library"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=1.3.3
TERMUX_PKG_SRCURL=http://downloads.xiph.org/releases/flac/flac-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=213e82bd716c9de6db2f98bcadbc4c24c7e2efe8c75939a1a84e28539c4e1748
TERMUX_PKG_DEPENDS="libc++, libogg"
TERMUX_PKG_BREAKS="libflac-dev"
TERMUX_PKG_REPLACES="libflac-dev"
