TERMUX_PKG_HOMEPAGE=https://bitcoincore.org/
TERMUX_PKG_DESCRIPTION="Bitcoin Core"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="27.1"
TERMUX_PKG_SRCURL=https://github.com/bitcoin/bitcoin/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=ee486a3e9d6e925c39b46274d130efdf8ececebc16faa0b7262620a457af6450
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libc++"
TERMUX_PKG_SERVICE_SCRIPT=("bitcoind" 'exec bitcoind 2>&1')
TERMUX_PKG_BUILD_IN_SRC=true

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-tests
--with-daemon
--with-gui=no
--without-libs
--prefix=${TERMUX_PKG_SRCDIR}/depends/$TERMUX_HOST_PLATFORM
--bindir=$TERMUX_PREFIX/bin
--mandir=$TERMUX_PREFIX/share/man
"

termux_step_pre_configure() {
	export ANDROID_TOOLCHAIN_BIN="$TERMUX_STANDALONE_TOOLCHAIN/bin"
	(cd depends && make HOST=$TERMUX_HOST_PLATFORM NO_QT=1 -j $TERMUX_PKG_MAKE_PROCESSES)
	./autogen.sh
}
