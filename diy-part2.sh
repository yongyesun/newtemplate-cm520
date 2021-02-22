#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
git clone --depth 1 https://github.com/yongyesun/luci-app-koolproxy package/luci-app-koolproxy
git clone --depth 1 https://github.com/kenzok8/openwrt-packages package/kenzok8
git clone --depth 1 https://github.com/yongyesun/lede package/lede
cp -r package/lede/package/lean package/lean
cp -r package/lede/tools/ucl tools/ucl
cp -r package/lede/tools/upx tools/upx
sed -i '29a tools-y += ucl upx' tools/Makefile
sed -i '45a $(curdir)/upx/compile := $(curdir)/ucl/compile' tools/Makefile
rm -rf package/lede
sed -i '287,290d' target/linux/ipq40xx/files/arch/arm/boot/dts/qcom-ipq4019-cm520-79f.dts
sed -i -e $'286a \t\t\tpartition@4c80000 {\n\t\t\t\tlabel = "rootfs";\n\t\t\t\treg = <0x4c80000 0x3300000>;\n\t\t\t};\n\\\t\t\tpartition@b80000 {\n\t\t\t\tlabel = "rootfs_1";\n\t\t\t\treg = <0xb80000 0x4100000>;\n\t\t\t};' target/linux/ipq40xx/files/arch/arm/boot/dts/qcom-ipq4019-cm520-79f.dts
