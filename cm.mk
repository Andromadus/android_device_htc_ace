# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/device_ace.mk)
$(call inherit-product, device/htc/ace/BoardConfig.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_NAME := cm_ace
PRODUCT_DEVICE := ace
PRODUCT_BRAND := HTC
PRODUCT_MODEL := Desire HD
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_ID=JRO03H BUILD_FINGERPRINT=google/yakju/maguro:4.1.1/JRO03H/330937:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.1.1 JRO03H 330937 release-keys"

PRODUCT_RELEASE_NAME := DHD