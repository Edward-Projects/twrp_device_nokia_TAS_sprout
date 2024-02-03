#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from tas device
$(call inherit-product, device/fih/tas/device.mk)

PRODUCT_DEVICE := tas
PRODUCT_NAME := omni_tas
PRODUCT_BRAND := Unkown
PRODUCT_MODEL := FIH
PRODUCT_MANUFACTURER := fih

PRODUCT_GMS_CLIENTID_BASE := android-fih

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Taishan_00WW-user 9 PPR1.180610.011 00WW_1_18F release-keys"

BUILD_FINGERPRINT := Nokia/Taishan_00WW/TAS:9/PPR1.180610.011/00WW_1_18F:user/release-keys
