#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic frameworks/av frameworks/base frameworks/native frameworks/opt/telephony system/core system/netd"
#dirs="bionic external/jpeg frameworks/av frameworks/base frameworks/native frameworks/rs frameworks/opt/telephony hardware/libhardware system/core system/netd system/vold"

VENDOR=xiaomi
DEVICE=hermes

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo -e "Cleaning $dir patches...\n"
	git reset --hard && git clean -df
done

# -----------------------------------
echo -e "Done !\n"
cd $rootdirectory

