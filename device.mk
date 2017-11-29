#
# Copyright (C) 2013-2015 OmniROM Project
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

LOCAL_PATH := device/samsung/espressocommon

# Enable higher-res drawables while keeping mdpi as primary source
PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Init files
PRODUCT_COPY_FILES += \
    device/samsung/espressowifi/rootdir/init.espresso.rc:root/init.espresso.rc \
    device/samsung/espressowifi/rootdir/init.espresso.usb.rc:root/init.espresso.usb.rc \
    device/samsung/espressowifi/rootdir/ueventd.espresso.rc:root/ueventd.espresso.rc

# Fstab
PRODUCT_COPY_FILES += \
    device/samsung/espressowifi/rootdir/fstab.espresso:root/fstab.espresso

# Recovery Ramdisk
PRODUCT_PACKAGES += \
    device/samsung/espressowifi/recovery/root/init.recovery.espresso.rc:recovery/root/init.recovery.espresso.rc \
    device/samsung/espressowifi/recovery/root/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc \
    device/samsung/espressowifi/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# F2FS filesystem
PRODUCT_PACKAGES += \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    f2fstat

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.bq.gpu_to_cpu_unsupported=1

# SGX540 is slower with the scissor optimization enabled
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.disable_scissor_opt=true

$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
