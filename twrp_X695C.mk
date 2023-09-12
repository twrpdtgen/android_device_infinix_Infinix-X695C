#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from X695C device
$(call inherit-product, device/infinix/X695C/device.mk)

PRODUCT_DEVICE := X695C
PRODUCT_NAME := twrp_X695C
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X695C
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x695_h854-user 11 RP1A.200720.011 156472 release-keys"

BUILD_FINGERPRINT := Infinix/X695C-GL/Infinix-X695C:11/RP1A.200720.011/221114V356:user/release-keys
