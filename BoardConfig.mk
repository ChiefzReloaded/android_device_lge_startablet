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
# Camera Setup
USE_CAMERA_STUB := true
BOARD_FIRST_CAMERA_FRONT_FACING := true

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

# Custom Recovery UI Settings
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lge/startablet/recovery/recovery_ui.c

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

#BOARD_USE_LEGACY_TOUCHSCREEN := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := startablet

BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := nvmem=128M@384M mem=1024M@0M vmalloc=256M video=tegrafb console=none usbcore.old_scheme_first=1 lp0_vec=8192@0x1f855000 tegra_fbmem=3937280@0x1f86b000 tegraboot=sdmmc muic_path=0:15 usb_serial=028841C541E0C297 usb_mode=0 hw_rev=Rev_1_3 gpt
BOARD_PAGE_SIZE := 2048

BOARD_EGL_CFG := device/lge/startablet/egl.cfg

USE_OPENGL_RENDERER := true

BOARD_USES_AUDIO_LEGACY := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 419430400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 31027363840
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_PREBUILT_KERNEL := device/lge/startablet/kernel

# Setting this to avoid boot locks on the system from using the "misc" partition.
BOARD_HAS_NO_MISC_PARTITION := true

# Indicate that the board has an Internal SD Card
BOARD_HAS_SDCARD_INTERNAL := true

#BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p4
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p4
