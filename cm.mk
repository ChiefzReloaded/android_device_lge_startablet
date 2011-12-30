# Inherit device configuration for p4wifi.
$(call inherit-product, device/lge/startablet/startablet.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_startablet
PRODUCT_BRAND := lge
PRODUCT_DEVICE := startablet
PRODUCT_MODEL := v909
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=v909 BUILD_ID=HMJ37 BUILD_FINGERPRINT=lge/lge_startablet/v909:3.1/HMJ37/v10o.41FD770E:user/release-keys PRIVATE_BUILD_DESC="startablet-user 3.1 HMJ37 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := startablet
