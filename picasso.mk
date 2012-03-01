$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/acer/picasso/picasso-vendor.mk)

PRODUCT_COPY_FILES += \
    device/acer/picasso/init.picasso.rc:root/init.picasso.rc \
    device/acer/picasso/init.picasso.usb.rc:root/init.picasso.usb.rc \
    device/acer/picasso/ueventd.picasso.rc:root/ueventd.picasso.rc \

DEVICE_PACKAGE_OVERLAYS += device/acer/picasso/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/acer/picasso/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := generic_picasso
PRODUCT_DEVICE := picasso
PRODUCT_MODEL := a500

PRODUCT_COPY_FILES += \
        device/acer/picasso/vold.fstab:system/etc/vold.fstab \
        device/acer/picasso/panjit_touch.idc:system/usr/idc/panjit_touch.idc \
        device/acer/picasso/atmel-maxtouch.idc:system/usr/idc/atmel-maxtouch.idc \
	device/acer/picasso/modules/bcm4329.ko:system/lib/modules/bcm4329.ko \
	device/acer/picasso/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
	device/acer/picasso/nvram.txt:system/etc/nvram.txt \
