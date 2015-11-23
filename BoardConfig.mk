#
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
#

# Inherit from common exynos5420-common
-include device/samsung/exynos5420-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/picassowifi

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Bootloader
TARGET_OTA_ASSERT_DEVICE := picassowifi

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_picassowifi_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/exynos5420

# Battery
BOARD_BATTERY_DEVICE_NAME := battery

# Hardware
BOARD_HARDWARE_CLASS += device/samsung/picassowifi/cmhw

# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12532580352

# PowerHAL
TARGET_POWERHAL_VARIANT := picassowifi

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.universal5420

# inherit from the proprietary version
-include vendor/samsung/picassowifi/BoardConfigVendor.mk
