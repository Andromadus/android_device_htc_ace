$(call inherit-product, device/htc/ace/full_ace.mk)

PRODUCT_RELEASE_NAME := DesireS

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_NAME := cm_ace
PRODUCT_DEVICE := ace

