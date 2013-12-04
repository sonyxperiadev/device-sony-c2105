# Copyright 2013 The Android Open Source Project
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

# Product-specific compile-time definitions.

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
# the two variables below have impact on loading .so from /system/lib/hw/
# see hardware/libhardware/modules/README.android
# and first one has impact on the fast boot flashing process so it is removed
#TARGET_BOOTLOADER_BOARD_NAME := MSM8960
TARGET_BOARD_PLATFORM := msm8960
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait
TARGET_CPU_SMP := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := true
TARGET_NO_KERNEL := false

BOARD_KERNEL_BASE := 0x80200000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
# the androidboot.hardware has impact on loading .rc files
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=sony user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1711276032
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456

# GL
TARGET_USES_C2D_COMPOSITION := true
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/sony/c2105/egl.cfg
ENABLE_WEBGL := true

# audio is enabled
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
USE_PROPRIETARY_AUDIO_EXTENSIONS := false

# video is enabled
TARGET_USES_ION := true

# camera is enabled
USE_CAMERA_STUB := false

# wlan is enabled
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
HOSTAPD_VERSION := VER_0_8_X
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_MODULE_ARG := ""
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HAS_CFG80211_KERNEL3_4 := true

# bluetooth is not enabled yet
#BOARD_HAVE_BLUETOOTH := true
ifeq ($(BOARD_HAVE_BLUETOOTH), true)
    BOARD_HAVE_BLUETOOTH_BLUEZ := true
    ifneq ($(BOARD_HAVE_BLUETOOTH_BLUEZ), true)
        BOARD_HAVE_BLUETOOTH_QCOM := true
        BLUETOOTH_HCI_USE_MCT := true
    endif
    BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
    BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := false
endif

# gps is not enabled yet
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM) 
#TARGET_NO_RPC := true

