#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/immortalwrt/immortalwrt / Branch: master
#========================================================================================================================

# Add a feed source
sed -i '$a src-git istore https://github.com/linkease/istore;main' feeds.conf.default
sed -i '$a src-git kiddin9 https://github.com/kiddin9/openwrt-packages.git;master' feeds.conf.default
sed -i '$a src-link custom /usr/src/openwrt/custom-feed' feeds.conf.default
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# other
# rm -rf package/emortal/{autosamba,ipv6-helper}

