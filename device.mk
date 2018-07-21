LOCAL_PATH := device/exdroid/t3_k2001_nwd

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/exdroid/t3_k2001_nwd/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Ramdisk
PRODUCT_PACKAGES += \
    init.recovery.sun8iw11p1.rc \
    fstab.sun8iw11p1 \
    ueventd.sun8iw11p1.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/recovery/root/gt82x.ko:recovery/root/gt82x.ko \
    $(LOCAL_PATH)/recovery/root/nand.ko:recovery/root/nand.ko \
    $(LOCAL_PATH)/recovery/root/sw-device.ko:recovery/root/sw-device.ko


$(call inherit-product-if-exists, build/target/product/full.mk)

