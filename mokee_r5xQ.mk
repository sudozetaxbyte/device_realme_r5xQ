#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/mokee/config/common_full_phone.mk)

# Inherit from r5xQ device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64

PRODUCT_BRAND := realme
PRODUCT_DEVICE := r5xQ
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := mokee_r5xQ
PRODUCT_MODEL := Realme r5xQ Unified
PRODUCT_SYSTEM_NAME := r5xQ
PRODUCT_SYSTEM_DEVICE := r5xQ
PRODUCT_GMS_CLIENTID_BASE := android-realme

TARGET_VENDOR_PRODUCT_NAME := r5xQ
TARGET_VENDOR_DEVICE_NAME := r5xQ

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="r5xQ" \
    PRIVATE_BUILD_DESC="trinket-user 10 QKQ1.200209.002 release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=r5xQ \
    TARGET_PRODUCT=r5xQ
