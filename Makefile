THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222
ARCHS = arm64
TARGET := iphone:clang:13.7:13.7

INSTALL_TARGET_PROCESSES = testapp

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = testapp

testapp_FILES = main.m RootAppDelegate.m RootRootViewController.m
testapp_FRAMEWORKS = UIKit CoreGraphics
testapp_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk
