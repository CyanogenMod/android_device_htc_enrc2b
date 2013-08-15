#
# Copyright (C) 2012 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

LOCAL_PATH := device/htc/enrc2b
ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    $(LOCAL_PATH)/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    $(LOCAL_PATH)/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    $(LOCAL_PATH)/recovery/sbin/power_test:recovery/root/sbin/power_test \
    $(LOCAL_PATH)/recovery/sbin/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Files needed for boot image
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
    $(LOCAL_PATH)/ramdisk/init.enrc2b.rc:root/init.enrc2b.rc \
    $(LOCAL_PATH)/ramdisk/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/ramdisk/init.scripts.sh:root/init.scripts.sh \
    $(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.enrc2b.rc:root/ueventd.enrc2b.rc \
    $(LOCAL_PATH)/ramdisk/fstab.enrc2b:root/fstab.enrc2b


# Prebuilt Audio/GPS/Camera/Wi-Fi configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dsp/AIC3008_REG_DualMic_XA.csv:system/etc/AIC3008_REG_DualMic_XA.csv \
    $(LOCAL_PATH)/prebuilt/dsp/AIC3008_REG_DualMic.csv:system/etc/AIC3008_REG_DualMic.csv \
    $(LOCAL_PATH)/prebuilt/dsp/DSP_number.txt:system/etc/DSP_number.txt \
    $(LOCAL_PATH)/configs/nvcamera.conf:system/etc/nvcamera.conf \
    $(LOCAL_PATH)/configs/nvcamera_2nd.conf:system/etc/nvcamera_2nd.conf \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gpsconfig.xml:system/etc/gps/gpsconfig.xml \
    $(LOCAL_PATH)/configs/gps/gpsconfig_release.xml:system/etc/gps/gpsconfig_release.xml \
    $(LOCAL_PATH)/configs/htcfs.conf:system/etc/htcfs.conf \
    $(LOCAL_PATH)/configs/hostapd.conf:system/etc/wifi/hostapd.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    $(LOCAL_PATH)/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    $(LOCAL_PATH)/configs/calibration:system/etc/calibration \
    $(LOCAL_PATH)/configs/asound.conf:system/etc/asound.conf \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/enctune.conf:system/etc/enctune.conf \
    $(LOCAL_PATH)/configs/sysctl.conf:system/etc/sysctl.conf \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf

# Prebuilt Alsa configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/alsa.conf:system/usr/share/alsa/alsa.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
    $(LOCAL_PATH)/prebuilt/usr/share/alsa/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf

# Input device configeration files
# for remapped APP_SWITCH to MENU
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Proprietary input files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/tv-touchscreen.idc:system/usr/idc/tv-touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/projector_input.idc:system/usr/idc/projector_input.idc

# Proprietary audio files 
# This is needed for audio to work
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/hw/audio.primary.tegra.so:system/lib/hw/audio.primary.tegra.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/audio_policy.tegra.so:system/lib/hw/audio_policy.tegra.so \
    $(LOCAL_PATH)/prebuilt/lib/libasound.so:system/lib/libasound.so

# Sound
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/soundimage/CodecDSPID.txt:system/etc/soundimage/CodecDSPID.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/CodecDSPID_XA.txt:system/etc/soundimage/CodecDSPID_XA.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_BT_CarMode.txt:system/etc/soundimage/Sound_BT_CarMode.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_FM_HP.txt:system/etc/soundimage/Sound_FM_HP.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_FM_HP_XA.txt:system/etc/soundimage/Sound_FM_HP_XA.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_FM_SPK.txt:system/etc/soundimage/Sound_FM_SPK.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_FM_SPK_XA.txt:system/etc/soundimage/Sound_FM_SPK_XA.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Note_Recording.txt:system/etc/soundimage/Sound_Note_Recording.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Original_DOCK.txt:system/etc/soundimage/Sound_Original_DOCK.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Original_HP.txt:system/etc/soundimage/Sound_Original_HP.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Original_HP_XA.txt:system/etc/soundimage/Sound_Original_HP_XA.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Original_SPK_RING.txt:system/etc/soundimage/Sound_Original_SPK_RING.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Original_SPK_RING_XA.txt:system/etc/soundimage/Sound_Original_SPK_RING_XA.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Original_SPK_XA.txt:system/etc/soundimage/Sound_Original_SPK_XA.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Phone_Original_BT.txt:system/etc/soundimage/Sound_Phone_Original_BT.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Phone_Original_DOCK.txt:system/etc/soundimage/Sound_Phone_Original_DOCK.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Phone_Original_HAC.txt:system/etc/soundimage/Sound_Phone_Original_HAC.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Phone_Original_SPK_XA.txt:system/etc/soundimage/Sound_Phone_Original_SPK_XA.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Phone_Original_TTY.txt:system/etc/soundimage/Sound_Phone_Original_TTY.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_SpeakerVR_Recording.txt:system/etc/soundimage/Sound_SpeakerVR_Recording.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Voice_Recording_AMR.txt:system/etc/soundimage/Sound_Voice_Recording_AMR.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Voip_Original_BT.txt:system/etc/soundimage/Sound_Voip_Original_BT.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Voip_Original_BT_AEC.txt:system/etc/soundimage/Sound_Voip_Original_BT_AEC.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Voip_Original_HP.txt:system/etc/soundimage/Sound_Voip_Original_HP.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Voip_Original_HP_AEC.txt:system/etc/soundimage/Sound_Voip_Original_HP_AEC.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Voip_Original_REC.txt:system/etc/soundimage/Sound_Voip_Original_REC.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Voip_Original_REC_AEC.txt:system/etc/soundimage/Sound_Voip_Original_REC_AEC.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Voip_Original_SPK.txt:system/etc/soundimage/Sound_Voip_Original_SPK.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Voip_Original_SPK_XA.txt:system/etc/soundimage/Sound_Voip_Original_SPK_XA.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Voip_Original_SPK_AEC.txt:system/etc/soundimage/Sound_Voip_Original_SPK_AEC.txt \
    $(LOCAL_PATH)/prebuilt/soundimage/Sound_Voip_Original_SPK_AEC_XA.txt:system/etc/soundimage/Sound_Voip_Original_SPK_AEC_XA.txt

# Audio tfa - actually useless but keep it 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/tfa/fm.config:system/etc/tfa/fm.config \
    $(LOCAL_PATH)/prebuilt/tfa/fm.eq:system/etc/tfa/fm.eq \
    $(LOCAL_PATH)/prebuilt/tfa/fm.preset:system/etc/tfa/fm.preset \
    $(LOCAL_PATH)/prebuilt/tfa/fm.speaker:system/etc/tfa/fm.speaker \
    $(LOCAL_PATH)/prebuilt/tfa/playback.config:system/etc/tfa/playback.config \
    $(LOCAL_PATH)/prebuilt/tfa/playback.eq:system/etc/tfa/playback.eq \
    $(LOCAL_PATH)/prebuilt/tfa/playback.preset:system/etc/tfa/playback.preset \
    $(LOCAL_PATH)/prebuilt/tfa/playback.speaker:system/etc/tfa/playback.speaker \
    $(LOCAL_PATH)/prebuilt/tfa/recorder.config:system/etc/tfa/recorder.config \
    $(LOCAL_PATH)/prebuilt/tfa/recorder.eq:system/etc/tfa/recorder.eq \
    $(LOCAL_PATH)/prebuilt/tfa/recorder.preset:system/etc/tfa/recorder.preset \
    $(LOCAL_PATH)/prebuilt/tfa/recorder.speaker:system/etc/tfa/recorder.speaker \
    $(LOCAL_PATH)/prebuilt/tfa/ReleaseNote.txt:system/etc/tfa/ReleaseNote.txt \
    $(LOCAL_PATH)/prebuilt/tfa/ring.config:system/etc/tfa/ring.config \
    $(LOCAL_PATH)/prebuilt/tfa/ring.eq:system/etc/tfa/ring.eq \
    $(LOCAL_PATH)/prebuilt/tfa/ring.preset:system/etc/tfa/ring.preset \
    $(LOCAL_PATH)/prebuilt/tfa/ring.speaker:system/etc/tfa/ring.speaker \
    $(LOCAL_PATH)/prebuilt/tfa/tcoef.speaker:system/etc/tfa/tcoef.speaker \
    $(LOCAL_PATH)/prebuilt/tfa/tfa9887.config:system/etc/tfa/tfa9887.config \
    $(LOCAL_PATH)/prebuilt/tfa/tfa9887.patch:system/etc/tfa/tfa9887.patch \
    $(LOCAL_PATH)/prebuilt/tfa/tfa9887.speaker:system/etc/tfa/tfa9887.speaker \
    $(LOCAL_PATH)/prebuilt/tfa/video.config:system/etc/tfa/video.config \
    $(LOCAL_PATH)/prebuilt/tfa/video.eq:system/etc/tfa/video.eq \
    $(LOCAL_PATH)/prebuilt/tfa/video.preset:system/etc/tfa/video.preset \
    $(LOCAL_PATH)/prebuilt/tfa/video.speaker:system/etc/tfa/video.speaker \
    $(LOCAL_PATH)/prebuilt/tfa/voice.config:system/etc/tfa/voice.config \
    $(LOCAL_PATH)/prebuilt/tfa/voice.eq:system/etc/tfa/voice.eq \
    $(LOCAL_PATH)/prebuilt/tfa/voice.preset:system/etc/tfa/voice.preset \
    $(LOCAL_PATH)/prebuilt/tfa/voice.speaker:system/etc/tfa/voice.speaker

# Vold.fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab

# Hostapd
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/hostap/hostapd:system/bin/hostapd

    
PRODUCT_PACKAGES += \
    hostapd_cli \
        calibrator

# Power
PRODUCT_PACKAGES += \
    power.tegra
        
# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    libtinyalsa \
    libaudioutils \
    libinvensense_mpl

# Other apps
PRODUCT_PACKAGES += \
    Apollo \
    DSPManager \
    libcyanogen-dsp \
    libncurses \
    bash \
    CMFileManager \
    PinyinIME \
    PerformanceTool \
    Torch \
    CellBroadcastReceiver 

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    librs_jni 

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    sdcard \
    libmtp

# For bugmailer
ifneq ($(TARGET_BUILD_VARIANT),user)
    PRODUCT_PACKAGES += send_bug
    PRODUCT_COPY_FILES += \
        system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
        system/extras/bugmailer/send_bug:system/bin/send_bug    
endif


PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.setupwizard.enable_bypass=1 \
        dalvik.vm.execution-mode=int:jit \
        dalvik.vm.lockprof.threshold=500 \
        dalvik.vm.dexopt-flags=m=y \
        persist.sys.usb.config=mtp,adb \
        ro.adb.secure=0

# Cell Broadcasts
PRODUCT_PROPERTY_OVERRIDES += \
        ro.cellbroadcast.emergencyids=0-65534 

# Tegra 3 spacific overrides
PRODUCT_PROPERTY_OVERRIDES += \
        persist.tegra.nvmmlite=1 \
        ro.vendor.extension_library=/system/lib/libhtc-opt2.so \
        tf.enable=y

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_GB xhdpi

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/htc/enrc2b/enrc2b-vendor.mk)
$(call inherit-product, $(LOCAL_PATH)/phone-xhdpi-1024-dalvik-heap.mk) ## Needs a specific config for the device to boot

# Common tegra3-HOX+ configs
$(call inherit-product, device/htc/tegra3-common/tegra3.mk)
