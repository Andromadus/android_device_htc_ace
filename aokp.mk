# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/device_ace.mk)

# Inherit common product files
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Release Name
PRODUCT_RELEASE_NAME := DHD

PRODUCT_NAME := aokp_ace
PRODUCT_DEVICE := ace
PRODUCT_BRAND := HTC
PRODUCT_MODEL := Desire HD
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_FINGERPRINT=google/yakju/maguro:4.1.1/JRO03L/330937:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.1.1 JRO03L 330937 release-keys"

PRODUCT_PACKAGES += \
    Apollo