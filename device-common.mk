#
# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/espresso-common

TARGET_BOARD_OMAP_CPU := 4430

# Include common omap4 makefile
$(call inherit-product, hardware/ti/omap4/omap4.mk)

# Include Omni specific additions
$(call inherit-product, device/samsung/espresso-common/device-omni.mk)

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay/aosp-common

# Enable higher-res drawables while keeping mdpi as primary source
PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.espresso.rc:root/init.espresso.rc \
    $(LOCAL_PATH)/rootdir/init.espresso.sensors.rc:root/init.espresso.sensors.rc \
    $(LOCAL_PATH)/rootdir/init.espresso.usb.rc:root/init.espresso.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.espresso.rc:root/ueventd.espresso.rc

# Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.espresso:root/fstab.espresso

# GPS
# gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.xml:system/etc/gps.xml

# Wi-Fi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Media profiles
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Audio configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/tiny_hw_espresso.xml:system/etc/sound/espresso \
    $(LOCAL_PATH)/audio/tiny_hw_espressowifi.xml:system/etc/sound/espressowifi \
    $(LOCAL_PATH)/audio/tiny_hw_espresso10.xml:system/etc/sound/espresso10 \
    $(LOCAL_PATH)/audio/tiny_hw_espresso10wifi.xml:system/etc/sound/espresso10wifi

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/usr/keychars/espresso-gpio-keypad.kcm:system/usr/keychars/espresso-gpio-keypad.kcm \
    $(LOCAL_PATH)/usr/keychars/sec_keyboard.kcm:system/usr/keychars/sec_keyboard.kcm \
    $(LOCAL_PATH)/usr/keylayout/espresso-gpio-keypad.kl:system/usr/keylayout/espresso-gpio-keypad.kl \
    $(LOCAL_PATH)/usr/keylayout/sec_keyboard.kl:system/usr/keylayout/sec_keyboard.kl

# Packages
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.piranha \
    audio.r_submix.default \
    audio.usb.default \
    camera.omap4 \
    e2fsck \
    lights.omap4 \
    sensors.omap4 \
    geomagneticd \
    orientationd

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Samsung dock keyboard
PRODUCT_PACKAGES += \
    dock_kbd_attach

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=160

PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product-if-exists, vendor/samsung/espresso-common/espresso-common-vendor.mk)
$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)
