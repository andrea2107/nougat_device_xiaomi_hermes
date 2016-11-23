## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := hermes

EXTENDED_FONT_FOOTPRINT := true

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/hermes/device_hermes.mk)

# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hermes
PRODUCT_NAME := cm_hermes
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi note 2
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US
