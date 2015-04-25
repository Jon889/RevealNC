ARCHS = arm64 armv7
include theos/makefiles/common.mk

TWEAK_NAME = RevealNC
RevealNC_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
