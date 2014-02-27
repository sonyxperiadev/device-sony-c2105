# Copyright (C) 2014 The CyanogenMod Project
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


$(call inherit-product, device/sony/c2105/full_c2105.mk)


# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)


# Build fingerprints
PRODUCT_BUILD_PROP_OVERRIDES += 
    PRODUCT_NAME=c2105 \
    BUILD_FINGERPRINT="Sony/C2105_1275-0241/C2105:4.2.2/15.3.A.0.26/Android.0031:user/release-keys" \    
    PRIVATE_BUILD_DESC="C2105-user 4.2.2 JDQ39 Android.0031 test-keys"



PRODUCT_NAME := cm_c2105
PRODUCT_DEVICE := c2105
