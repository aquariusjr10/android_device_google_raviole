#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)

include device/google/raviole/raven/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := lineage_raven

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

#Sakura Flags
SAKURA_MAINTAINER := Aquariusjr10
TARGET_BOOT_ANIMATION_RES := 1440
SAKURA_BUILD_TYPE := gapps
SAKURA_OFFICIAL := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_SUPPORTS_32_BIT_APPS := true
PRODUCT_USE_SCUDO := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 14 AP2A.240805.005.F1 12043167 release-keys"

BUILD_FINGERPRINT := google/raven/raven:14/AP2A.240805.005.F1/12043167:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
