DEVICE_FOLDER := device/amazon/thor

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/amazon/thor/thor-vendor.mk)

# Inherit from hdx
$(call inherit-product, device/amazon/hdx-common/hdx-common.mk)

# configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf \
	$(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:system/vendor/etc/wifi/WCNSS_qcom_cfg.ini \
	$(LOCAL_PATH)/configs/thermal-engine.conf:system/vendor/etc/thermal-engine.conf

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

