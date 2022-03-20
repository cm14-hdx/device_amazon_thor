# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit some common lineage stuff.
$(call inherit-product-if-exists, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product-if-exists, vendor/cm/config/data_only.mk)

# Inherit full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/amazon/thor/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := thor
PRODUCT_NAME := lineage_thor
PRODUCT_BRAND := amazon
PRODUCT_MODEL := Kindle Fire HDX 7
PRODUCT_MANUFACTURER := amazon

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=nakasi \
	BUILD_FINGERPRINT="google/nakasi/grouper:5.1/LMY47D/1743759:user/release-keys" \
	PRIVATE_BUILD_DESC="nakasi-user 5.1 LMY47D 1743759 release-keys"