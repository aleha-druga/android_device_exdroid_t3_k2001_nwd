# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk) # If you are building for a phone

# Inherit device configuration
$(call inherit-product, device/exdroid/t3_k2001_nwd/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_t3_k2001_nwd
PRODUCT_DEVICE := t3_k2001_nwd
PRODUCT_BRAND := Allwinner
PRODUCT_MODEL := t3_k2001_nwd
PRODUCT_MANUFACTURER := Allwinner

# If needed to overide these props
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Allwinner/t3_k2001_nwd/t3-k2001-nwd:6.0.1/MMB29M/20171129:user/test-keys" \
    PRIVATE_BUILD_DESC="t3_k2001_nwd-user 6.0.1 MMB29M 20171129 test-keys"
