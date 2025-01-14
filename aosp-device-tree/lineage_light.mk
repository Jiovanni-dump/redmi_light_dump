#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from light device
$(call inherit-product, device/xiaomi/light/device.mk)

PRODUCT_DEVICE := light
PRODUCT_NAME := lineage_light
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22041219G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="light-user 12 SP1A.210812.016 V13.0.11.0.SLSMIXM release-keys"

BUILD_FINGERPRINT := Redmi/light/light:12/SP1A.210812.016/V13.0.11.0.SLSMIXM:user/release-keys
