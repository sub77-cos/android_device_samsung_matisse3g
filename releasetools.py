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
#

""" Custom OTA commands for samsung devices """

#def FullOTA_InstallEnd(info):
#  info.script.Mount("/system")
#  info.script.AppendExtra('ifelse(is_substring("T530", getprop("ro.bootloader")), package_extract_file("install/kernel/boot_matissewifi.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));')
#  info.script.AppendExtra('ifelse(is_substring("T530", getprop("ro.bootloader")), ui_print("Updating boot image milletwifi"));')
#  info.script.AppendExtra('ifelse(is_substring("T330", getprop("ro.bootloader")), run_program("/sbin/sh", "-c", "busybox cp -R /system/millet-common/* /system/"));')
#  info.script.AppendExtra('ifelse(is_substring("T330", getprop("ro.bootloader")), run_program("/sbin/sh", "-c", "busybox echo ro.sf.lcd_density=213 >> /system/build.prop"));')
#  info.script.AppendExtra('set_metadata("/system/bin/qmuxd", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:qmuxd_exec:s0");')
#  info.script.AppendExtra('set_metadata("/system/bin/radish", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");')
#  info.script.Unmount("/system")
