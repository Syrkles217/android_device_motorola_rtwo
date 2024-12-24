#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rtwo device
$(call inherit-product, device/motorola/rtwo/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

DERP_VERSION_APPEND_TIME_OF_DAY=true
DERP_BUILDTYPE := Official

PRODUCT_NAME := derp_rtwo
PRODUCT_DEVICE := rtwo
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 pro

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rtwo_g-user 14 U1TRS34.8-30-13-2-2-4 68e97-f9a887 release-keys" \
    BuildFingerprint=motorola/rtwo_g/rtwo:14/U1TRS34.8-30-13-2-2-4/68e97-f9a887:user/release-keys \
    DeviceProduct=rtwo_g
