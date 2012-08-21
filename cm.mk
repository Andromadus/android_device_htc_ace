# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release Name
PRODUCT_RELEASE_NAME := DHD

TARGET_BOOTANIMATION_NAME := vertical-480

# Inherit CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/device_ace.mk)

PRODUCT_NAME := cm_ace
PRODUCT_DEVICE := ace
PRODUCT_BRAND := HTC
PRODUCT_MODEL := Desire HD
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_FINGERPRINT=google/yakju/maguro:4.1.1/JRO03L/330937:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.1.1 JRO03L 330937 release-keys"