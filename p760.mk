# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Inherit device configuration for LG Optimus L9 P760
$(call inherit-product, device/lge/p760/device.mk)

# Inherit from u2-vendor device
$(call inherit-product, vendor/lge/u2/p760-vendor-blobs.mk)

PRODUCT_NAME := aicp_p760
PRODUCT_BRAND := lg
PRODUCT_DEVICE := p760
PRODUCT_MODEL := LG-P760
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := Optimus L9
PRODUCT_SFX := intl

# Release name and versioning
PRODUCT_RELEASE_NAME := p760
PRODUCT_VERSION_DEVICE_SPECIFIC := 
-include vendor/ownrom/config/common_versions.mk

UTC_DATE := $(shell date +%s)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=${UTC_DATE}\

# Enable Torch
PRODUCT_PACKAGES += Torch

