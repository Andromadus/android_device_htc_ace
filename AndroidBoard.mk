LOCAL_PATH := $(call my-dir)

# Least specific includes go first, so that they can get
# overridden further down
include $(CLEAR_VARS)

# include the non-open-source counterpart to this file
-include vendor/htc/ace/AndroidBoardVendor.mk
