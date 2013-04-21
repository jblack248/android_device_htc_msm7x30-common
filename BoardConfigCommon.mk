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

# inherit from common msm7x30 Recovery
-include device/htc/7x30-recovery/BoardConfigCommon.mk

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
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mcpu=cortex-a8 -mtune=cortex-a8 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mcpu=cortex-a8 -mtune=cortex-a8 -mfloat-abi=softfp
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64
#TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
#TARGET_USE_SCORPION_PLD_SET := true
#TARGET_SCORPION_BIONIC_PLDOFFS := 6
#TARGET_SCORPION_BIONIC_PLDSIZE := 128

TARGET_SPECIFIC_HEADER_PATH := device/htc/msm7x30-common/include

# Wifi related defines - look at Ace for more changes
WIFI_BAND                        := 802_11_ABG
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE                := bcm4329
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcm4329/parameters/firmware_path"
WIFI_DRIVER_MODULE_NAME          := bcm4329
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/proc/calibration iface_name=wlan"
BOARD_WLAN_DEVICE_REV            := bcm4329

# QCOM Display
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_EGL_CFG := device/htc/msm7x30-common/egl.cfg
BOARD_USES_ADRENO_200 := true
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_PROVIDES_LIBLIGHTS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GENLOCK := true
USE_OPENGL_RENDERER := true
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_QCOM_DISPLAY_VARIANT := legacy

#COMMON_GLOBAL_CFLAGS += -DSCREEN_RELEASE -DREFRESH_RATE=60
#TARGET_USES_OVERLAY := true
#TARGET_QCOM_HDMI_OUT := true
### two bypasses were false by default in CM
#TARGET_USES_SF_BYPASS := true
#TARGET_HAVE_BYPASS := true

# QCOM
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1200
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

# Pmem
TARGET_USES_PMEM := true

# Legacy
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DQCOM_NO_SECURE_PLAYBACK -DNO_UPDATE_PREVIEW
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_USES_LEGACY_RIL := true

# Audio
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_PREBUILT_LIBAUDIO := false
#BOARD_HAVE_QCOM_FM := true
#BOARD_USES_QCOM_AUDIO_LPA := true
#BOARD_USES_QCOM_AUDIO_RESETALL := true
#BOARD_USES_QCOM_AUDIO_SPEECH := true
#BOARD_USES_QCOM_AUDIO_VOIPMUTE := true

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
DYNAMIC_SHARED_LIBV8SO := true

# Older Touchscreen Support
#BOARD_USE_LEGACY_TOUCHSCREEN := true

# Workaround for speedy broken overlay scaling
#BOARD_OVERLAY_MINIFICATION_LIMIT := 2

#Twisted Camera Property
#BOARD_USES_HTC_CAMERA := true
#CAMERA_CONVERT_COLORS := true
#COMMON_GLOBAL_CFLAGS += -DBYPASS_OFFSET
# CM JB Property
#BOARD_CAMERA_USE_GETBUFFERINFO := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file

#BOARD_EGL_GRALLOC_USAGE_FILTER := true

#BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
