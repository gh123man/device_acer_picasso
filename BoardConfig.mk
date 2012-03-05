USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/acer/picasso/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true

TARGET_BOOTLOADER_BOARD_NAME := picasso
TARGET_NO_BOOTLOADER := true

# Keymapping 
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/acer/picasso/recovery_ui.c

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0xF000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/acer/picasso/kernel

USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/acer/picasso/egl.cfg

BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Wifi related defines
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#WPA_SUPPLICANT_VERSION      := VER_0_8_X
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
#BOARD_HOSTAPD_DRIVER        := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/system/etc/nvram.txt"

USE_OPENGL_RENDERER := true

