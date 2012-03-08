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
	device/acer/picasso/video/libardrv_dynamic.so:system/lib/libardrv_dynamic.so \
	device/acer/picasso/video/libcgdrv.so:system/lib/libcgdrv.so \
	device/acer/picasso/video/libnvddk_2d_v2.so:system/lib/libnvddk_2d_v2.so \
	device/acer/picasso/video/libnvmm_vp6_video.so:system/lib/libnvmm_vp6_video.so \
	device/acer/picasso/video/libnvos.so:system/lib/libnvos.so \
	device/acer/picasso/video/libnvrm.so:system/lib/libnvrm.so \
	device/acer/picasso/video/libnvrm_graphics.so:system/lib/libnvrm_graphics.so \
	device/acer/picasso/video/libnvwinsys.so:system/lib/libnvwinsys.so \
	device/acer/picasso/video/libnvwsi.so:system/lib/libnvwsi.so \
	device/acer/picasso/video/egl/libEGL_tegra.so:system/lib/egl/libEGL_tegra.so \
	device/acer/picasso/video/egl/libGLESv1_CM_tegra.so:system/lib/egl/libGLESv1_CM_tegra.so \
	device/acer/picasso/video/egl/libGLESv2_tegra.so:system/lib/egl/libGLESv2_tegra.so \
	device/acer/picasso/video/hw/hwcomposer.tegra.so:system/lib/hw/hwcomposer.tegra.so \
	device/acer/picasso/video/hw/gralloc.tegra.so:system/lib/hw/gralloc.tegra.so \
