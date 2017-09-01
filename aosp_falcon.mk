# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Get the long list of APNs
PRODUCT_COPY_FILES += device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from falcon device
$(call inherit-product, device/motorola/falcon/falcon.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := aosp_falcon
PRODUCT_DEVICE := falcon
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := falcon

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BRAND := motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := falcon
TARGET_VENDOR_DEVICE_NAME := motog
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=A0001 PRODUCT_NAME=falcon

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/falcon/motog:6.0.1/MHC19Q/ZNH2KAS1KN:user/release-keys \
    PRIVATE_BUILD_DESC="falcon-user 6.0.1 MHC19Q ZNH2KAS1KN release-keys"
endif
