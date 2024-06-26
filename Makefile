FINALPACKAGE=1
export TARGET = iphone:15.6
PREFIX = $(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/
THEOS_PACKAGE_SCHEME=rootless
include $(THEOS)/makefiles/common.mk

export ARCHS=arm64 arm64e
TWEAK_NAME=YTMusicNoCast

include $(THEOS)/makefiles/bundle.mk
INSTALL_TARGET_PROCESSES = YouTubeMusic
$(TWEAK_NAME)_FILES=Tweak.xm
$(TWEAK_NAME)_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
$(TWEAK_NAME)_LIBRARIES += substrate
include $(THEOS_MAKE_PATH)/tweak.mk
