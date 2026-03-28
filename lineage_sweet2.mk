#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := sweet2
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2209116AG
PRODUCT_NAME := lineage_sweet2
PRODUCT_SYSTEM_DEVICE := sweet
PRODUCT_SYSTEM_NAME := sweet_global2

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sweet_global2-user 13 TKQ1.221114.001 V816.0.13.0.THGMIXM release-keys" \
    BuildFingerprint=Redmi/sweet_global2/sweet:13/TKQ1.221114.001/V816.0.13.0.THGMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)


TARGET_ENABLE_BLUR := true

# Maintainer Stuff
AXION_MAINTAINER := ℝ𝕖𝕧𝕖𝕣𝕤𝕖𝕕ℝ𝕦𝕝𝕖𝕣༆𖣘(Soner)

# Axion Stuff
AXION_CAMERA_REAR_INFO := 108,8,2,2
AXION_CAMERA_FRONT_INFO := 16
AXION_PROCESSOR := SDM732G
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
TARGET_INCLUDES_LOS_PREBUILTS := true
TARGET_INCLUDE_AXFX := false
PRODUCT_NO_CAMERA := false

# Enable activity open override fix for low-end devices or devices affected by activity open/exit freezing issue
PERF_ANIM_OVERRIDE := true
