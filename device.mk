LOCAL_PATH := device/enet/polaris

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/enet/polaris/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Ramdisk
PRODUCT_PACKAGES += \
    init.recovery.sun8i.rc \
    fstab.sun8i \
    ueventd.sun8i.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/recovery/root/cn1100_linux.ko:recovery/root/cn1100_linux.ko \
    $(LOCAL_PATH)/recovery/root/disp.ko:recovery/root/disp.ko \
    $(LOCAL_PATH)/recovery/root/gslX680new.ko:recovery/root/gslX680new.ko \
    $(LOCAL_PATH)/recovery/root/gt9xxf_ts.ko:recovery/root/gt9xxf_ts.ko \
    $(LOCAL_PATH)/recovery/root/gt9xx_ts.ko:recovery/root/gt9xx_ts.ko \
    $(LOCAL_PATH)/recovery/root/gt82x.ko:recovery/root/gt82x.ko \
    $(LOCAL_PATH)/recovery/root/gt818_ts.ko:recovery/root/gt818_ts.ko \
    $(LOCAL_PATH)/recovery/root/lcd.ko:recovery/root/lcd.ko \
    $(LOCAL_PATH)/recovery/root/nand.ko:recovery/root/nand.ko \
    $(LOCAL_PATH)/recovery/root/sunxi-keyboard.ko:recovery/root/sunxi-keyboard.ko \
    $(LOCAL_PATH)/recovery/root/sw-device.ko:recovery/root/sw-device.ko

$(call inherit-product-if-exists, build/target/product/full.mk)

