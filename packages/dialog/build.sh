TERMUX_PKG_HOMEPAGE=https://invisible-island.net/dialog/
TERMUX_PKG_DESCRIPTION="Application used in shell scripts which displays text user interface widgets"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_DEPENDS="ncurses"
TERMUX_PKG_VERSION="1.3-20200228"
TERMUX_PKG_SRCURL=https://invisible-mirror.net/archives/dialog/dialog-$TERMUX_PKG_VERSION.tgz
TERMUX_PKG_SHA256=9ff8c41d1eee9e15d14fde3109d4612b1fe6dbe71fe2c3e743bcfff5e25c1fd9
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-ncursesw --enable-widec --with-pkg-config"

termux_step_pre_configure() {
	# Certain packages are not safe to build on device because their
	# build.sh script deletes specific files in $TERMUX_PREFIX.
	if $TERMUX_ON_DEVICE_BUILD; then
		termux_error_exit "Package '$TERMUX_PKG_NAME' is not safe for on-device builds."
	fi

	# Put a temporary link for libtinfo.so
	ln -s -f $TERMUX_PREFIX/lib/libncursesw.so $TERMUX_PREFIX/lib/libtinfo.so
}

termux_step_post_make_install() {
	rm $TERMUX_PREFIX/lib/libtinfo.so
	cd $TERMUX_PREFIX/bin
	ln -f -s dialog whiptail
}
