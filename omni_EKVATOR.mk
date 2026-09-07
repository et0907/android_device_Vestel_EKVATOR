#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from EKVATOR device
$(call inherit-product, device/vestel/EKVATOR/device.mk)

PRODUCT_DEVICE := EKVATOR
PRODUCT_NAME := omni_EKVATOR
PRODUCT_BRAND := Vestel
PRODUCT_MODEL := V TAB Z2 LTE
PRODUCT_MANUFACTURER := vestel

PRODUCT_GMS_CLIENTID_BASE := android-vestel

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tb8768p1_64_bsp-user 11 RP1A.200720.011 1629776902 release-keys"

BUILD_FINGERPRINT := Vestel/EKVATOR/EKVATOR:11/RP1A.200720.011/1628697999:user/release-keys
