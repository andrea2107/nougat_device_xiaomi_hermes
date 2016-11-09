$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/meizu/m2note/m2note-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/meizu/m2note/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

TARGET_OTA_ASSERT_DEVICE := m2note,m2n,meizu_m2_note

TARGET_PROVIDES_INIT_RC := true

PRODUCT_COPY_FILES += \
    device/meizu/m2note/rootdir/init.rc:root/init.rc \
    device/meizu/m2note/rootdir/init.target.rc:root/init.target.rc \
    device/meizu/m2note/rootdir/init.mt6735.rc:root/init.mt6735.rc \
    device/meizu/m2note/rootdir/init.ssd.rc:root/init.ssd.rc \
    device/meizu/m2note/rootdir/init.xlog.rc:root/init.xlog.rc \
    device/meizu/m2note/rootdir/init.usb.rc:root/init.usb.rc \
    device/meizu/m2note/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
    device/meizu/m2note/rootdir/init.aee.rc:root/init.aee.rc \
    device/meizu/m2note/rootdir/init.project.rc:root/init.project.rc \
    device/meizu/m2note/rootdir/init.modem.rc:root/init.modem.rc \
    device/meizu/m2note/rootdir/init.trace.rc:root/init.trace.rc \
    device/meizu/m2note/rootdir/fstab.mt6735:root/fstab.mt6735 \
    device/meizu/m2note/rootdir/fstab.swap:root/fstab.swap \
    device/meizu/m2note/rootdir/ueventd.rc:root/ueventd.rc \
    device/meizu/m2note/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/meizu/m2note/etc/init/audioserver.rc:system/etc/init/audioserver.rc \
    device/meizu/m2note/etc/init/mediacodec.rc:system/etc/init/mediacodec.rc \
    device/meizu/m2note/etc/init/cameraserver.rc:system/etc/init/cameraserver.rc \
    device/meizu/m2note/etc/init/rild.rc:system/etc/init/rild.rc \
    device/meizu/m2note/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/android.hardware.audio.output.xml:system/etc/permissions/android.hardware.audio.output.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

PRODUCT_PACKAGES += \
    libtinycompress \
    libtinyxml
#    libion \
#    libmockdrmcryptoplugin \
#    libaudio-resampler \


# RIL
#PRODUCT_PACKAGES += \
#    gsm0710muxd

PRODUCT_PACKAGES += \
    Torch \
    libmtk_symbols \
    libperfservicenative \
    libcurl

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/meizu/m2note/rootdir/etc/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \

# Audio componets from source
PRODUCT_PACKAGES += \
    audio.usb.default \
    audio.r_submix.default

# Audio components from source
PRODUCT_PACKAGES += \
    EngineerMode
#    MtkCamera libDocVfbEngineLib_m81 libpanorama

#libmeizucamera

#PRODUCT_PACKAGES += stlport_shared
PRODUCT_COPY_FILES += \
    prebuilts/ndk/current/sources/cxx-stl/stlport/libs/arm64-v8a/libstlport_shared.so:system/lib64/libstlport.so \
    prebuilts/ndk/current/sources/cxx-stl/stlport/libs/armeabi-v7a/libstlport_shared.so:system/lib/libstlport.so

PRODUCT_EXTRA_RECOVERY_KEYS += device/meizu/m2note/meizu

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, build/target/product/aosp_arm64.mk)

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    ro.adb.secure=0 \
    persist.service.acm.enable=0 \
    persist.sys.usb.config=mtp \
    ro.mount.fs=EXT4 \
    persist.debug.xlog.enable=1

    #ro.mtk_gps_support=1 \
    #ro.mtk_agps_app=1 \

