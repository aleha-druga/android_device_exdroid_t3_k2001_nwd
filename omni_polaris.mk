# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk) # If you are building for a phone

# Inherit device configuration
$(call inherit-product, device/enet/polaris/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_polaris
PRODUCT_DEVICE := polaris
PRODUCT_BRAND := enet
PRODUCT_MODEL := polaris
PRODUCT_MANUFACTURER := enet

# If needed to overide these props
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    BUILD_FINGERPRINT="" \
#    PRIVATE_BUILD_DESC=""
