# Inherit device configuration for Droid Atrix 2.
$(call inherit-product, device/motorola/edison/full_edison.mk)

# Inherit some common KYLIN stuff.
$(call inherit-product, vendor/kylin/config/common_full_phone.mk)

# Inherit some common KYLIN stuff.
$(call inherit-product, vendor/kylin/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := kylin_edison
PRODUCT_BRAND := ATT
PRODUCT_DEVICE := edison
PRODUCT_MODEL := MB865
PRODUCT_MANUFACTURER := MOTO
PRODUCT_RELEASE_NAME := MOTOROLA ATRIX 2
PRODUCT_SFX := umts

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=${PRODUCT_MODEL}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_MODEL}_${PRODUCT_SFX}/${PRODUCT_DEVICE}:${PLATFORM_VERSION}/${BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE}-user ${PLATFORM_VERSION} ${BUILD_ID} ${DATE} release-keys" \
   PRODUCT_BRAND=${PRODUCT_BRAND} \
   BUILD_UTC_DATE=
