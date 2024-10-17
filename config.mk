PRODUCT_SOONG_NAMESPACES += \
    vendor/xiaomi/miuicamera

LOCAL_PATH := vendor/xiaomi/miuicamera

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/system/etc,$(TARGET_COPY_OUT_SYSTEM)/etc) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/proprietary/system/priv-app/ANXCamera/lib,$(TARGET_COPY_OUT_SYSTEM)/priv-app/ANXCamera/lib) \
    $(LOCAL_PATH)/features/ginkgo.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/device_features/ginkgo.xml \
    $(LOCAL_PATH)/features/cheatcodes/cheatcodes.json:$(TARGET_COPY_OUT_SYSTEM)/etc/ANXCamera/cheatcodes/cheatcodes.json

PRODUCT_PACKAGES += \
    ANXCamera

# Props
PRODUCT_SYSTEM_PROPERTIES += \
    persist.camera.eis.enabled=1 \
    ro.camera.sound.forced=0 \
    vendor.camera.aux.packagelist=com.android.camera,app.grapheneos.camera \
    vendor.camera.aux.packageblacklist=org.telegram.messenger,com.discord \
    persist.vendor.camera.privapp.list=com.android.camera,app.grapheneos.camera

# Sepolicy
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    vendor/xiaomi/miuicamera/sepolicy/private
