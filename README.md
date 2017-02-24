# experimental nougat hermes device tree
echo "export USE_CCACHE=1" >> ~/.bashrc
~/lineage/prebuilts/misc/linux-x86/ccache/ccache -M 45G
. build/envsetup.sh
lunch lineage_hermes-userdebug
make -j16

sh device/xiaomi/hermes/patches/install.sh
sh device/xiaomi/hermes/patches/uninstall.sh


credits:
-moyster
-WisniaPL
-TryHardDood
