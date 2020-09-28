DEVICE_FOLDER := device/amazon/thor

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/amazon/thor/thor-vendor.mk)

# Inherit from hdx
$(call inherit-product, device/amazon/hdx-common/hdx-common.mk)

# Thermal config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# Device overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_FOLDER)/overlay

# Set dirty regions off
PRODUCT_PROPERTY_OVERRIDES += \
	hwui.render_dirty_regions=false

# Disable ext sdcard
PRODUCT_CHARACTERISTICS := \
	tablet,nosdcard

PRODUCT_PROPERTY_OVERRIDES += \
	ro.qcom.ad=1 \
	ro.usb.pid=000c

