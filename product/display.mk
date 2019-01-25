# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := hdpi
PRODUCT_PROPERTY_OVERRIDES += debug.hwui.use_buffer_age=false

# Ambient display
PRODUCT_PACKAGES += \
    XiaomiDoze

# Display
PRODUCT_PACKAGES += \
    copybit.msm8937 \
    gralloc.msm8937 \
    hwcomposer.msm8937 \
    libdisplayconfig \
    libqdMetaData.system \
    libtinyxml \
    memtrack.msm8937

# Display calibration
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@1.0-service-sdm

# Display HAL
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_0_3.xml

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=0 \
    vendor.gralloc.disable_wb_ubwc=1 \
    debug.sf.hw=0 \
    debug.sf.disable_hwc_vds=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.recomputecrop=0 \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false \
    persist.hwc.enable_vds=1 \
    persist.sys.wfd.virtual=0 \
    persist.debug.wfd.enable=1 \
    ro.opengles.version=196608 \
    ro.vendor.display.cabl=2 \
    ro.qualcomm.svi=0 \
    ro.sf.lcd_density=320 \
    persist.hwc.mdpcomp.enable=true \
    sys.display-size=3840x2160 \
    sdm.debug.disable_rotator_split=1 \
    sdm.debug.disable_skip_validate=1 \
    sdm.debug.rotator_downscale=1 \
    sdm.perf_hint_window=50 \
    qemu.hw.mainkeys=1 \
    vendor.display.disable_skip_validate=1 \
    debug.sdm.support_writeback=0 \
    debug.hwui.use_buffer_age=false \
    vendor.display.perf_hint_window=50 \
    persist.graphics.vulkan.disable=true \
    debug.composition.type=gpu \
    vendor.display.enable_default_color_mode=1

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl
