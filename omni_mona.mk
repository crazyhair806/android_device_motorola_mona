#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from mona device
$(call inherit-product, device/motorola/mona/device.mk)

PRODUCT_DEVICE := mona
PRODUCT_NAME := omni_mona
PRODUCT_BRAND := motorola
PRODUCT_MODEL := mona
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mona-user 15 V2VAS35V.29-49-ST2.4 6a189 release-keys"

BUILD_FINGERPRINT := motorola/mona/mona:15/V2VAS35V.29-49-ST2.4/6a189:user/release-keys
