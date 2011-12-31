$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/startablet/startablet-vendor.mk)

#DEVICE_PACKAGE_OVERLAYS += device/lge/startablet/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bcm4329.ko:system/lib/hw/bcm4329.ko

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.startablet.rc:root/init.startablet.rc \
    $(LOCAL_PATH)/ueventd.startablet.rc:root/ueventd.startablet.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml \

PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/gps.xml:system/etc/gps.xml \
     $(LOCAL_PATH)/gps.conf:system/etc/gps.conf

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_startablet
PRODUCT_DEVICE := startablet
PRODUCT_MODEL := LG G-Slate
