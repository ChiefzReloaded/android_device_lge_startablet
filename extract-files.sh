#!/bin/sh

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

VENDOR=lge
DEVICE=startablet

rm -rf ../../../vendor/$VENDOR/$DEVICE
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/app
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/bluetooth
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wifi
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/drm

# HAL
adb pull /system/lib/hw/gralloc.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/overlay.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/sensors.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/gps.startablet.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw

# EGL
adb pull /system/lib/egl/libEGL_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv1_CM_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv2_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl

# Wifi
adb pull /system/etc/wifi/nvram.txt ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wifi
adb pull /system/etc/wifi/rtecdc_apsta.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wifi
adb pull /system/etc/wifi/rtecdc-mfgtest.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wifi
adb pull /system/etc/wifi/rtecdc.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wifi

# OMX
adb pull /system/lib/drm/libdrmwvmplugin.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/drm
adb pull /system/lib/libdrm1.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libdrm1_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvodm_dtvtuner.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefrighthw.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/etc/bluetooth/BCM4329B1_002.002.023.0875.0883.hcd ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/bluetooth
adb pull /system/bin/motion ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvrm_daemon ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/etc/firmware/nvddk_audiofx_core.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvrm_avp.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvmm_wavdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvmm_sorensondec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvmm_service.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvmm_reference.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvmm_mpeg4dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvmm_mp3dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvmm_mp2dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvmm_manager.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvmm_jpegenc.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvmm_jpegdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvmm_h264dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvmm_audiomixer.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvmm_adtsdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvmm_aacdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvddk_audiofx_transport.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvddk_audiofx_core.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
adb pull /system/bin/drmserver ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/lib/libril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvos.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvrm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/lge-ril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvapputil.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_camera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvddk_2d_v2.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvodm_imager.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvrm_graphics.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvddk_2d.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_utils.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvdispmgr_d.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvddk_audiofx.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvodm_query.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvrm_channel.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvdispatch_helper.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvomxilclient.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libcgdrv.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_audio.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_contentpipe.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_image.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_manager.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_misc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_parser.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_tracklist.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_video.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_videorenderer.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_vp6_video.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_writer.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_service.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvomx.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvwsi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib

# Audio
adb pull /system/lib/libaudio.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libaudiopolicy.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libaudio.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib


./setup-makefiles.sh
