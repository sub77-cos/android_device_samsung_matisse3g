# Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-swap=false

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio_hal.period_size=192 \
    audio.offload.video=true \
    persist.audio.fluence.speaker=true \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    ro.qc.sdk.audio.fluencetype=fluence \
    use.voice.path.for.pcm.voip=false \
    use.dedicated.device.for.voip=true \
    audio.deep_buffer.media=true \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    audio.offload.multiple.enabled=false \
    audio.offload.buffer.size.kb=32

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hdcp2.rx=tz \
    ro.qualcomm.cabl=1 \
    ro.secwvk=144 \
    ro.sf.lcd_density=160

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqti-perfd-client.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d /dev/smd0 \
    rild.libpath=/system/lib/libsec-ril.so \
    ro.ril.telephony.mqanelements=6

# GSM Properties
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnGsmDevice=0 \
    ro.telephony.default_network=9 \
    ro.telephony.ril.config=newDialCode

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sensors=1

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=false

# Tethering
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0
