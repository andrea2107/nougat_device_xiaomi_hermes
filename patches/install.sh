#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="frameworks/av system/core"
#dirs="bionic frameworks/av frameworks/base frameworks/native hardware/libhardware system/core system/netd system/vold"

VENDOR=meizu
DEVICE=m2note

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

