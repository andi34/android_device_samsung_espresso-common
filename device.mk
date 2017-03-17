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

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage

PRODUCT_COPY_FILES := \
	$(TARGET_PREBUILT_KERNEL):kernel

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.espresso.rc:root/init.espresso.rc \
    $(LOCAL_PATH)/rootdir/init.espresso.usb.rc:root/init.espresso.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.espresso.rc:root/ueventd.espresso.rc

# Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.espresso:root/fstab.espresso

# Recovery Ramdisk
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.espresso.rc:recovery/root/init.recovery.espresso.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc \
    $(LOCAL_PATH)/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# F2FS filesystem
PRODUCT_PACKAGES += \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    f2fstat

# Kernel Modules
PRODUCT_PACKAGES += \
    bcmdhd.ko \
    pvrsrvkm_sgx540_120.ko

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.bq.gpu_to_cpu_unsupported=1

# SGX540 is slower with the scissor optimization enabled
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.disable_scissor_opt=true

$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
