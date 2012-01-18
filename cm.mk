# Inherit device configuration for startablet.
$(call inherit-product, device/lge/startablet/startablet.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit more cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_startablet
PRODUCT_BRAND := lge
PRODUCT_DEVICE := v909
PRODUCT_MODEL := LG-V909
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_startablet BUILD_ID=HMJ37 BUILD_FINGERPRINT=lge/lge_startablet/v909:3.1/HMJ37/v10o.41FD770E:user/release-keys PRIVATE_BUILD_DESC="startablet-user 3.1 HMJ37 release-keys"
CHARACTERISTICS=tablet,nosdcard

# Release name and versioning
PRODUCT_RELEASE_NAME := startablet
