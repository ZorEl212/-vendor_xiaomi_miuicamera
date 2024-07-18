PRODUCT_SOONG_NAMESPACES += \
    vendor/xiaomi/miuicamera

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/proprietary/system/etc,$(TARGET_COPY_OUT_SYSTEM)/etc) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/proprietary/system/lib64,$(TARGET_COPY_OUT_SYSTEM)/lib64) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/proprietary/system/priv-app/MiuiCamera/lib,$(TARGET_COPY_OUT_SYSTEM)/priv-app/MiuiCamera/lib) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/proprietary/system/priv-app/MiuiExtraPhoto/lib,$(TARGET_COPY_OUT_SYSTEM)/priv-app/MiuiExtraPhoto/lib) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/proprietary/vendor/etc,$(TARGET_COPY_OUT_VENDOR)/etc) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/proprietary/vendor/camera,$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/camera)

PRODUCT_PACKAGES += \
    MiuiCamera \
    MiuiExtraPhoto \
    MiuiScanner


ifeq ($(TARGET_DEVICE), davinci)

# Davinci(in) blobs
$(call inherit-product, vendor/xiaomi/miuicamera/configs/davinci.mk)

endif

ifeq ($(TARGET_DEVICE), raphael)

# Raphael(in) blobs
$(call inherit-product, vendor/xiaomi/miuicamera/configs/raphael.mk)

endif


ifeq ($(TARGET_DEVICE), cepheus)

# Cepheus blobs
$(call inherit-product, vendor/xiaomi/miuicamera/configs/cepheus.mk)

endif

ifeq ($(TARGET_DEVICE), toco)

# Toco blobs
$(call inherit-product, vendor/xiaomi/miuicamera/configs/toco.mk)

endif

ifeq ($(filter fog rain,$(TARGET_DEVICE)),)

# Fog/Rain blobs
$(call inherit-product, vendor/xiaomi/miuicamera/configs/fog.mk)

endif

# Props
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.lens.oem_camera_package=com.android.camera

# Sepolicy
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    vendor/xiaomi/miuicamera/sepolicy/private