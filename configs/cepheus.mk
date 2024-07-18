PRODUCT_SOONG_NAMESPACES += \
    vendor/xiaomi/miuicamera

PRODUCT_PACKAGES += \
    MiuiCameraOverlayMi9Series

# Common blobs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/configs/mi9_common/system/lib64,$(TARGET_COPY_OUT_SYSTEM)/lib64) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/configs/mi9_common/vendor/lib,$(TARGET_COPY_OUT_VENDOR)/lib) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/configs/mi9_common/vendor/lib64,$(TARGET_COPY_OUT_VENDOR)/lib64) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/configs/mi9_common/vendor/bin,$(TARGET_COPY_OUT_VENDOR)/bin) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/configs/mi9_common/vendor/etc,$(TARGET_COPY_OUT_VENDOR)/etc) \
	vendor/xiaomi/miuicamera/configs/mi9_common/system/lib64/libcamera_algoup_jni.xiaomi.so:$(TARGET_COPY_OUT_SYSTEM)/priv-app/MiuiCamera/lib/arm64/libcamera_algoup_jni.xiaomi.so \
	vendor/xiaomi/miuicamera/configs/mi9_common/system/lib64/libcamera_mianode_jni.xiaomi.so:$(TARGET_COPY_OUT_SYSTEM)/priv-app/MiuiCamera/lib/arm64/libcamera_mianode_jni.xiaomi.so

# Cepheus blobs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/config/cepheus/vendor/lib,$(TARGET_COPY_OUT_VENDOR)/lib) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/config/cepheus/vendor/lib64,$(TARGET_COPY_OUT_VENDOR)/lib64)

# Props
PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.camera.privapp.list=com.android.camera 
