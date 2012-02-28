# Release name
PRODUCT_RELEASE_NAME := a500

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/acer/picasso/picasso.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := picasso
PRODUCT_NAME := cm_picasso
PRODUCT_BRAND := Acer
PRODUCT_MODEL := a500

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=picasso BUILD_ID=HTK75D BUILD_DISPLAY_ID=HTK75D BUILD_FINGERPRINT="acer/picasso/a500:4.0.33/HTK75D/190830:user/release-keys" PRIVATE_BUILD_DESC="transformer-user 4.0.3 HTK75D 190830 release-keys"
