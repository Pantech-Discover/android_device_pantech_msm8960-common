# Copyright (C) 2014 The CyanogenMod Project
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

TARGET_SPECIFIC_HEADER_PATH := device/pantech/msm8960-common/include

BOARD_VENDOR := pantech

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# inherit from qcom-common
-include device/pantech/qcom-common/BoardConfigCommon.mk

# Architecture
TARGET_CPU_SMP := true

# Flags
COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# NFC
BOARD_HAVE_NFC := true

# QCOM hardware
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# GPS
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm8960

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 28
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Camera
COMMON_GLOBAL_CFLAGS += -DPANTECH_CAMERA_HARDWARE
#BOARD_CAMERA_USE_MM_HEAP := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_HAVE_PANTECH_AUDIO := true

# Workaround for missing symbols in camera
#BOARD_NEEDS_MEMORYHEAPPMEM := true
