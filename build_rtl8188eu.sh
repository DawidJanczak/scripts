#!/usr/bin/bash

CONFIG_RTL8188EU=m make -C /usr/src/linux-`uname -r` M=`pwd`
install -p -m 644 8188eu.ko /lib/modules/`uname -r`/kernel/drivers/net/wireless/
depmod -a
modprobe 8188eu
