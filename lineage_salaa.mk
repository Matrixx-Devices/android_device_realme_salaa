#
# Copyright (C) 2023 The ArrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, device/realme/salaa/device.mk)

# Inherit some common Matrixx stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_salaa
PRODUCT_DEVICE := salaa
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme 7/Narzo 20 Pro/Narzo 30 4G

# To include Gapps
WITH_GMS := true

# To Build Google(Dailer, Message, Phone) and BCR
WITH_GMS_COMMS_SUITE := true

# Some more GMS Flag
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_STOCK_AICORE := true

# Matrixx
MATRIXX_BUILD_TYPE := Official

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=RMX2156L1 \
    DeviceProduct=RMX2156 \
    BuildDesc="sys_mssi_64_cn_armv82-user 12 SP1A.210812.016 1689241820072 release-keys"

BUILD_FINGERPRINT := realme/RMX2156/RMX2156L1:12/SP1A.210812.016/Q.1579e30_414da:user/release-keys
