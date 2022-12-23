#
# Copyright 2016 The CyanogenMod Project
# Copyright 2017 The LineageOS Project
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

$(call inherit-product, device/xiaomi/helium/full_helium.mk)

# Inherit some common LINEAGE stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Samsung
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := c9ltechn
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_c9ltechn
PRODUCT_MODEL := SM-C9000
TARGET_VENDOR := Samsung


PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=samsung/c9ltezc/c9ltechn:8.0.0/R16NW/C9000ZCU1CSC2:user/release-keys \
    PRIVATE_BUILD_DESC="c9ltezc-user 8.0.0 R16NW C9000ZCU1CSC2 release-keys"
endif
