# Inherit some common AOSPA stuff.
$(call inherit-product, vendor/pa/config/common_full_phone.mk)
# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)
# Inherit vendor configuration
$(call inherit-product, vendor/google/coral/coral-vendor.mk)
$(call inherit-product, vendor/google/gms/config.mk)
# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_NAME := pa_coral
# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=coral \
    PRIVATE_BUILD_DESC="coral-user 12 SP1A.210812.016.A1 7796139 release-keys"
BUILD_FINGERPRINT := google/coral/coral:12/SP1A.210812.016.A1/7796139:user/release-keys
