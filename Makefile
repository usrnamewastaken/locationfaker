ARCHS = arm64 arm64e
TARGET = iphone:clang:14.5:10.0
THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222

SYSROOT = $(THEOS)/sdks/iPhoneOS14.5.sdk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = locationfaker
locationfaker_FILES = Tweak.x
locationfaker_FRAMEWORKS = CoreLocation

SUBPROJECTS += Preferences
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload; killall -9 locationd"
include $(THEOS_MAKE_PATH)/aggregate.mk
