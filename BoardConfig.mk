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
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lge/startablet/recovery/recovery_ui.c

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := startablet

BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := nvmem=128M@384M mem=1024M@0M vmalloc=256M video=tegrafb console=none usbcore.old_scheme_first=1 lp0_vec=8192@0x1f855000 tegra_fbmem=3937280@0x1f86b000 tegraboot=sdmmc muic_path=0:15 usb_serial=028841C541E0C297 usb_mode=0 hw_rev=Rev_1_3 gpt
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

# Wifi related defines
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_HOSTAP_DRIVER := WEXT
BOARD_HOSTAP_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE := bcm4329

WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_MODULE_NAME     :=  "bcm4329"
WIFI_DRIVER_MODULE_ARG      :=  "firmware_path=/etc/wifi/rtecdc.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_DRIVER_HAS_LGE_SOFTAP	:= true

# Setting this to avoid boot locks on the system from using the "misc" partition.
BOARD_HAS_NO_MISC_PARTITION := true

# Indicate that the board has an Internal SD Card
BOARD_HAS_SDCARD_INTERNAL := true

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

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

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p4
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p4
