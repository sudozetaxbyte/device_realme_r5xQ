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
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from r5xQ device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64

PRODUCT_BRAND := realme
PRODUCT_DEVICE := r5xQ
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_r5xQ
PRODUCT_MODEL := Realme r5xQ Unified
PRODUCT_GMS_CLIENTID_BASE := android-realme

TARGET_VENDOR_PRODUCT_NAME := r5xQ
TARGET_VENDOR_DEVICE_NAME := r5xQ

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="trinket-user 10 QKQ1.200209.002 1790_202201210905 release-keys"

BUILD_FINGERPRINT := google/coral/coral:11/RQ2A.210505.002/7246365:user/release-keys
