#
# Copyright (C) 2011 The Android Open-Source Project
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
#

# inherit from the proprietary version

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Allow compatibility with old touchscreens
#BOARD_USE_LEGACY_TOUCHSCREEN := false

# Camera Setup
USE_CAMERA_STUB := false
COMMON_GLOBAL_CFLAGS += -DREVERSE_FFC_MIRROR_LOGIC

-include vendor/lge/startablet/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
#TARGET_HAVE_TEGRA_ERRATA_657451 := true
ARCH_ARM_HAVE_TLS_REGISTER := true

#TARGET_SPECIFIC_HEADER_PATH := device/lge/startablet/include

# Custom Recovery UI Settings
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lge/startablet/recovery/recovery_ui.c

# Override recovery init.rc
TARGET_RECOVERY_INITRC := device/lge/startablet/recovery/init.rc

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := startablet

BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := nvmem=128M@384M mem=1024M@0M vmalloc=256M video=tegrafb console=none lp0_vec=8192@0x1879e000 tegra_fbmem=3937280@0x1f86b000 tegraboot=sdmmc muic_path=0:1b usb_mode=0 hw_rev=Rev_1_3 gpt
BOARD_PAGE_SIZE := 0x00000800

BOARD_EGL_CFG := device/lge/startablet/egl.cfg

USE_OPENGL_RENDERER := true

TARGET_HAVE_HDMI_OUT := true

#BOARD_USES_AUDIO_LEGACY := true
BOARD_PREBUILT_LIBAUDIO := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 419430400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 31027363840
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_PREBUILT_KERNEL := device/lge/startablet/kernel

BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun0/file

# Wifi related defines
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := WEXT
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd

WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP  := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_NAME := "bcmdhd"
WIFI_DRIVER_MODULE_ARG  := "firmware_path=/system/vendor/firmware/fw_bcmdhd.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_BAND := 802_11_BG
#WIFI_DRIVER_HAS_LGE_SOFTAP	:= true

# Setting this to avoid boot locks on the system from using the "misc" partition.
BOARD_HAS_NO_MISC_PARTITION := true

BOARD_USES_HW_MEDIARECORDER := true
BOARD_USES_HW_MEDIAPLUGINS := true

BOARD_USE_SCREENCAP := true

#BOARD_USES_LGE_HDMI_ROTATION := true

BOARD_MOBILEDATA_INTERFACE_NAME := "vsnet0"

TARGET_ELECTRONBEAM_FRAMES := 20

TARGET_USES_GL_VENDOR_EXTENSIONS := true

BOARD_FORCE_STATIC_A2DP := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true

TARGET_DONT_SET_AUDIO_AAC_FORMAT := true
