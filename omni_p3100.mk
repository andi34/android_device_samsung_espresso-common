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


# Inherit common Omni configuration
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/espressocommon/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_espressocommon
PRODUCT_DEVICE := p3100
PRODUCT_BRAND := Android
PRODUCT_MODEL := GT-P3100
PRODUCT_MANUFACTURER := Samsung

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_p3100

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="espressorfxx-user 4.2.2 JDQ39 P3100XWDNA1 release-keys" \
    BUILD_FINGERPRINT="samsung/espressorfxx/espressorf:4.2.2/JDQ39/P3100XWDNA1:user/release-keys"

TARGET_OTA_ASSERT_DEVICE := espresso-common,p3100,GT-P3100,espressorf,espressorfxx,p3110,GT-P3110,p3113,GT-P3113,espressowifi,espressowifixx,p5100,GT-P5100,espresso10rf,espresso10rfxx,p5110,GT-P5110,p5113,GT-P5113,espresso10wifi,espresso10wifixx
