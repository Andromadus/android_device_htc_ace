# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release Name
PRODUCT_RELEASE_NAME := DHD

TARGET_BOOTANIMATION_NAME := 480

# Inherit CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/device.mk)

PRODUCT_NAME := cm_ace
PRODUCT_DEVICE := ace
PRODUCT_BRAND := htc_wwe
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_FINGERPRINT="google/yakju/maguro:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.2.2 JDQ39 573038 release-keys"
