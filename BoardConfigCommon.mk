# Copyright (C) 2011 The CyanogenMod Project
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

BOARD_VENDOR := htc
TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
USE_MALLOC_ALIGNMENT := 16
TARGET_HAVE_TSLIB := false
TARGET_ARCH_VARIANT_CPU := cortex-a8

TARGET_EXTRA_CFLAGS += $(call cc-option,-march=armv7-a -mtune=cortex-a8)
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

TARGET_SPECIFIC_HEADER_PATH := device/htc/msm7x30-common/include

# Wifi
WIFI_BAND := 802_11_ABGN
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_NAME := bcmdhd
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcmdhd.ko"
BOARD_LEGACY_NL80211_STA_EVENTS := true

# display
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_USES_ADRENO_200 := true
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_PROVIDES_LIBLIGHTS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GENLOCK := true
USE_OPENGL_RENDERER := true
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_NO_HW_VSYNC := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_HDMI_OUT := false

# graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_EGL_CFG := device/htc/msm7x30-common/configs/egl.cfg

# hardware
TARGET_USES_PMEM := true
BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true

# gps
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_PREBUILT_LIBAUDIO := false
BOARD_USES_QCOM_AUDIO_RESETALL := false
BOARD_USES_QCOM_AUDIO_VOIPMUTE := false

# bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# bluedroid
BOARD_BLUEDROID_VENDOR_CONF := device/htc/msm7x30-common/bluetooth/vnd_msm7x30.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/htc/msm7x30-common/bluetooth/include

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
DYNAMIC_SHARED_LIBV8SO := true

# camera
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DQCOM_NO_SECURE_PLAYBACK -DNO_UPDATE_PREVIEW
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
TARGET_DISABLE_ARM_PIE := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file
