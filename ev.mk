# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/device_ace.mk)

# Inherit common product files
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/ev/config/gsm.mk)

# Release Name
PRODUCT_RELEASE_NAME := DHD

PRODUCT_NAME := ev_ace
PRODUCT_DEVICE := ace
PRODUCT_BRAND := HTC
PRODUCT_MODEL := Desire HD
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_FINGERPRINT=google/yakju/maguro:4.1.1/JRO03L/330937:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.1.1 JRO03L 330937 release-keys"

# Additional CodeFire Extras
PRODUCT_PACKAGES += \
    Apollo

# Hot Reboot
PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/hot_reboot

# Copy compatible prebuilt files
PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/tiny_data/etc/init.d/07cache2cache:system/etc/init.d/07cache2cache \
	vendor/ev/prebuilt/hvga/media/bootanimation.zip:system/media/bootanimation.zip
	