# Experimental Nougat Device Tree for Xiaomi Hermes

## Build:
```
echo "export USE_CCACHE=1" >> ~/.bashrc
~/lineage/prebuilts/misc/linux-x86/ccache/ccache -M 45G 
source build/envsetup.sh
lunch lineage_hermes-userdebug
make -j16
```

## Patches:
```
sh device/xiaomi/hermes/patches/install.sh
sh device/xiaomi/hermes/patches/uninstall.sh
```

## Credits:
- moyster
- WisniaPL
- TryHardDood
