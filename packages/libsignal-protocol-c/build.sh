TERMUX_PKG_HOMEPAGE=https://github.com/signalapp/libsignal-protocol-c
TERMUX_PKG_DESCRIPTION="Signal Protocol C Library"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_VERSION=2.3.2
TERMUX_PKG_REVISION=1
TERMUX_PKG_MAINTAINER="Oliver Schmidhauser @Neo-Oli"
TERMUX_PKG_SRCURL=https://github.com/signalapp/libsignal-protocol-c/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=f3826f3045352e14027611c95449bfcfe39bfd3d093d578c70f70eee0c85000d
TERMUX_PKG_DEPENDS="openssl"

termux_step_pre_configure() {
    TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DBUILD_SHARED_LIBS=ON"
    TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DM_LIB=$TERMUX_STANDALONE_TOOLCHAIN/sysroot/usr/lib/$TERMUX_HOST_PLATFORM/$TERMUX_PKG_API_LEVEL/libm.so"
}
