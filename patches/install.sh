#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic frameworks/av frameworks/base frameworks/native frameworks/opt/telephony system/core system/netd"
#dirs="bionic frameworks/av frameworks/base frameworks/native hardware/libhardware system/core system/netd system/vold"

VENDOR=xiaomi
DEVICE=hermes

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo -e "Applying $dir patches...\n"
	#git am $rootdirectory/device/$VENDOR/$DEVICE/patches/$dir/*.patch
	git apply $rootdirectory/device/$VENDOR/$DEVICE/patches/$dir/*.patch
done

# -----------------------------------
echo -e "Done !\n"
cd $rootdirectory

