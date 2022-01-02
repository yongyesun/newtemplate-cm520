#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
# sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
##### specific feed source 
# sed -i '1,4d' feeds.conf.default
# sed -i '$a src-git packages https://git.openwrt.org/feed/packages.git^f013af726ad76f928d8188712ae21c8f352ce1f1' feeds.conf.default
# sed -i '$a src-git luci https://git.openwrt.org/project/luci.git^6c167ea880bd29c69730d802c48ebc2c0253b905' feeds.conf.default
# sed -i '$a src-git routing https://git.openwrt.org/feed/routing.git^0f1d89c2e95a428835e269b0c0e832e8675c73e8' feeds.conf.default
# sed -i '$a src-git telephony https://git.openwrt.org/feed/telephony.git^a5d039394014139aac34af1e9460ab76e5779a65' feeds.conf.default
