# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit Lineage product configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    PRIVATE_BUILD_DESC="marlin-user 9 PQ3A.190801.002 5670241 release-keys"

BUILD_FINGERPRINT := google/marlin/marlin:9/PQ3A.190801.002/5670241:user/release-keys

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
