#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device

PRODUCT_COPY_FILES += device/htc/ace/gps.conf:system/etc/gps.conf

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

PRODUCT_COPY_FILES += \
    device/htc/ace/init.spade.rc:root/init.spade.rc \
    device/htc/ace/ueventd.spade.rc:root/ueventd.spade.rc

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/ace/ace-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r3 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

# Override /proc/sys/vm/dirty_ratio on UMS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vold.umsdirtyratio=20

DEVICE_PACKAGE_OVERLAYS += device/htc/ace/overlay

# gsm config xml file
PRODUCT_COPY_FILES += \
    device/htc/ace/voicemail-conf.xml:system/etc/voicemail-conf.xml

# GPS / Lights / Sensors
PRODUCT_PACKAGES += \
    gps.spade \
    lights.spade \
    sensors.spade

# idc files
PRODUCT_COPY_FILES += \
    device/htc/ace/prebuilt/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/ace/prebuilt/usr/idc/spade-keypad.idc:system/usr/idc/spade-keypad.idc \
    device/htc/ace/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/ace/prebuilt/usr/idc/elan-touchscreen.idc:system/usr/idc/elan-touchscreen.idc

# Keychars
PRODUCT_COPY_FILES += \
    device/htc/ace/prebuilt/usr/keychars/atmel-touchscreen.kcm:system/usr/keychars/atmel-touchscreen.kcm \
    device/htc/ace/prebuilt/usr/keychars/synaptics-rmi-touchscreen.kcm:system/usr/keychars/synaptics-rmi-touchscreen.kcm \
    device/htc/ace/prebuilt/usr/keychars/elan-touchscreen.kcm:system/usr/keychars/elan-touchscreen.kcm

# akmd
PRODUCT_COPY_FILES += \
    device/htc/ace/prebuilt/akmd:system/bin/akmd

# media configs
PRODUCT_COPY_FILES += \
    device/htc/ace/prebuilt/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/ace/prebuilt/audio_policy.conf:system/etc/audio_policy.conf

# audio prebuilts
PRODUCT_COPY_FILES += \
    device/htc/ace/prebuilt/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/ace/prebuilt/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv

# EGL
PRODUCT_COPY_FILES += \
    device/htc/ace/prebuilt/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/htc/ace/prebuilt/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/htc/ace/prebuilt/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/htc/ace/prebuilt/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/htc/ace/prebuilt/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/htc/ace/prebuilt/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so

#lib
PRODUCT_COPY_FILES += \
    device/htc/ace/prebuilt/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
    device/htc/ace/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    device/htc/ace/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/htc/ace/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/htc/ace/prebuilt/lib/libC2D2.so:system/lib/libC2D2.so

# HW
#PRODUCT_COPY_FILES += \
#    device/htc/ace/prebuilt/hw/audio.primary.msm7x30.so:system/lib/hw/audio.primary.msm7x30.so
#    device/htc/ace/prebuilt/hw/copybit.msm7x30.so:system/lib/hw/copybit.msm7x30.so 
#  device/htc/ace/prebuilt/hw/gps.spade.so:system/lib/hw/gps.spade.so 
#  device/htc/ace/prebuilt/hw/lights.spade.so:system/lib/hw/lights.spade.so 
#  device/htc/ace/prebuilt/hw/sensors.spade.so:system/lib/hw/sensors.spade.so

#    device/htc/ace/prebuilt/hw/camera.msm7x30.so:system/lib/hw/camera.msm7x30.so \

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/ace/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/ace/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/ace/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/ace/prebuilt/usr/keylayout/spade-keypad.kl:system/usr/keylayout/spade-keypad.kl \
    device/htc/ace/prebuilt/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/ace/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/ace/prebuilt/usr/keylayout/elan-touchscreen.kl:system/usr/keylayout/elan-touchscreen.kl

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/ace/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/ace/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/ace/dsp/AIC3254_REG_DualMic.txt:system/etc/AIC3254_REG_DualMic.txt \
    device/htc/ace/dsp/AIC3254_REG_DualMic_XB.csv:system/etc/AIC3254_REG_DualMic_XB.csv \
    device/htc/ace/dsp/AIC3254_REG_DualMic_XC.csv:system/etc/AIC3254_REG_DualMic_XC.csv \
    device/htc/ace/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/ace/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/ace/dsp/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
    device/htc/ace/dsp/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
    device/htc/ace/dsp/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
    device/htc/ace/dsp/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
    device/htc/ace/dsp/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
    device/htc/ace/dsp/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
    device/htc/ace/dsp/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
    device/htc/ace/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/ace/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/ace/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/ace/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/ace/dsp/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
    device/htc/ace/dsp/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
    device/htc/ace/dsp/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
    device/htc/ace/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/ace/dsp/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
    device/htc/ace/dsp/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
    device/htc/ace/dsp/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
    device/htc/ace/dsp/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
    device/htc/ace/dsp/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
    device/htc/ace/dsp/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
    device/htc/ace/dsp/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt
 
PRODUCT_COPY_FILES += \
    device/htc/ace/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
    device/htc/ace/prebuilt/lib/libcamera.so:obj/lib/libcamera.so \
    device/htc/ace/prebuilt/hw/camera.msm7x30.so:obj/lib/camera.msm7x30.so

# media config xml file
PRODUCT_COPY_FILES += \
    device/htc/ace/media_profiles.xml:system/etc/media_profiles.xml

# Kernel modules
PRODUCT_COPY_FILES += \
    device/htc/ace/prebuilt/bcmdhd.ko:system/lib/modules/bcmdhd.ko

#wireless firmware copy it manually because bcmdhd for bcm4329 isn't working right
PRODUCT_COPY_FILES += \
    device/htc/ace/firmware/fw_bcm4329.bin:system/vendor/firmware/fw_bcmdhd.bin \
    device/htc/ace/firmware/fw_bcm4329_apsta.bin:system/vendor/firmware/fw_bcmdhd_apsta.bin \
    device/htc/ace/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/ace/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/htc/ace/prebuilt/libaudioalsa.so:obj/lib/libaudioalsa.so

# stuff common to all HTC phones
#$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full_base.mk)

# common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# HTC Audio
$(call inherit-product, device/htc/ace/media_a1026.mk)
$(call inherit-product, device/htc/ace/media_htcaudio.mk)

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/htc/ace/ace-vendor.mk)
