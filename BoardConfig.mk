# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := exdroid
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := exdroid

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
TARGET_PREBUILT_KERNEL := device/exdroid/t3_k2001_nwd/kernel
#BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=8 androidboot.selinux=permissive androidboot.hardware=sun8iw11p1
BOARD_KERNEL_CMDLINE := usb_type=0x00 dvd_config=0x00 c_6=0x00 csi_config=0x00 pwm1_duty=212,50,50,50,50,0 boot_mode=0x00 uart0_rx_open=0 en_360view=0x00 i2s_config= frev_config=0x01 enforcing=1 earlyprintk=sunxi-uart,0x01c28000 initcall_debug=0 console=ttyS0,115200 loglevel=0 root=/dev/mmcblk0p7 init=/init partitions=bootloader@mmcblk0p2:env@mmcblk0p5:boot@mmcblk0p6:nwdprivate@mmcblk0p7:carconfig@mmcblk0p8:Reserve0@mmcblk0p9:persistent@mmcblk0p10:nwdconfig@mmcblk0p11:system@mmcblk0p12:data@mmcblk0p13:misc@mmcblk0p14:recovery@mmcblk0p15:cache@mmcblk0p16:metadata@mmcblk0p17:private@mmcblk0p18:alog@mmcblk0p19:UDISK@mmcblk0p1 cma=32M vmalloc=384MB androidboot.serialno=<NULL> boot_type=2  androidboot.selinux=disabled androidboot.hardware=sun8iw11p1
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100  --second_offset 0x00f00000

# Sizes to be put in in bytes. cant stress this enough.
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 41940355
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26843545600
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_USES_MMCUTILS := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_RECOVERY_DEVICE_DIRS := device/exdroid/t3_k2001_nwd
TARGET_RECOVERY_FSTAB := device/exdroid/t3_k2001_nwd/recovery/root/etc/recovery.fstab

# TWRP
#TW_THEME := landscape_mdpi
DEVICE_RESOLUTION := 800x480
TW_MAX_BRIGHTNESS := 255
#TW_BRIGHTNESS_PATH := "/sys/devices/virtual/disp/disp/attr/lcd_bl"
#TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_NTFS_3G := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_NO_REBOOT_BOOTLOADER := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
