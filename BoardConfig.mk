# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit from msm8226-common
-include device/samsung/msm8226-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := matisse3g,matissewifi

# Properties
TARGET_SYSTEM_PROP += device/samsung/matisse3g/system.prop

DEVICE_PATH := device/samsung/matisse3g

# Use Snapdragon LLVM if available on build server
# TARGET_USE_SDCLANG := true # needs commit a0ae50896603b085c9fa0509ff9f79b1f145800b
# https://developer.qualcomm.com/forum/qdn-forums/software/snapdragon-llvm-compiler-android/33437

ifneq ($(HOST_OS),darwin)

SDCLANG := true

SDCLANG_PATH := prebuilts/clang/linux-x86/host/sdclang-3.8/bin

SDCLANG_LTO_DEFS := device/qcom/common/sdllvm-lto-defs.mk

endif

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8226
TARGET_LIBINIT_MSM8226_DEFINES_FILE := device/samsung/matisse3g/init/init_matisse.cpp
TARGET_UNIFIED_DEVICE := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
#BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom androidboot.selinux=permissive user_debug=31 msm_rtb.filter=0x3F androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x1e00000
#TARGET_KERNEL_SOURCE := kernel/samsung/msm8226
#TARGET_KERNEL_CONFIG := cyanogenmod_matisse3g_defconfig

TARGET_KERNEL_CONFIG := cm_msm8974_sec_defconfig
#TARGET_KERNEL_VARIANT_CONFIG := msm8226-sec_matissewifi_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8974_sec_ks01_skt_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/msm8974

#KERNEL_TOOLCHAIN_PREFIX      := arm-linux-androideabi-
KERNEL_TOOLCHAIN_PREFIX      := arm-cortex-linux-gnueabi-
#KERNEL_TOOLCHAIN             := "/2and/cos/kernel/samsung/msm8226/arm-linux-androideabi-4.9/bin/"
KERNEL_TOOLCHAIN             := "/2and/cos/kernel/samsung/msm8974/arm-cortex-linux-gnueabi-linaro_4.9.4-2015.06/bin/"
# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A7DEA0
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1866465280
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12562643968
BOARD_CACHEIMAGE_PARTITION_SIZE := 218103808
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_DENSITY := xhdpi
TARGET_NOT_USE_GZIP_RECOVERY_RAMDISK := true

# Avoid CMSDK issues for now
I_WANT_A_QUAIL_STAR := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)
