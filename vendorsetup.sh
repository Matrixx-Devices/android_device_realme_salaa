echo 'Starting to clone stuffs needed for your device'
echo 'Cloning Vendor tree [1/6]'
# Vendor
rm -rf vendor/realme/salaa
if [ ! -d "vendor/realme/salaa" ]; then
    mkdir -p vendor/realme/salaa
    git clone https://github.com/crdroidandroid/proprietary_vendor_realme_salaa.git --depth=1 -b 15.0 vendor/realme/salaa
fi

echo 'Cloning Kernel tree [2/6]'
# Kernel
rm -rf kernel/realme/salaa
if [ ! -d "kernel/realme/salaa" ]; then
    mkdir -p kernel/realme/salaa
    git clone https://github.com/crdroidandroid/android_kernel_realme_salaa.git --depth=1 -b 15.0 kernel/realme/salaa
fi

echo 'Cloning Mediatek SEpolicy_vndr [3/6]'
# SEpolicy
rm -rf device/mediatek/sepolicy_vndr
if [ ! -d "device/mediatek/sepolicy_vndr" ]; then
    mkdir -p device/mediatek/sepolicy_vndr
    git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr.git --depth=1 -b lineage-22.2 device/mediatek/sepolicy_vndr
fi

echo 'Cloning Hardware Mediatek [4/6]'
# Hardware Mediatek
rm -rf hardware/mediatek
if [ ! -d "hardware/mediatek" ]; then
    mkdir -p hardware/mediatek
    git clone https://github.com/LineageOS/android_hardware_mediatek.git --depth=1 -b lineage-22.2 hardware/mediatek
fi

echo 'Cloning Hardware Oplus [5/6]' 
# Hardware Oplus
rm -rf hardware/oplus
if [ ! -d "hardware/oplus" ]; then
    mkdir -p hardware/oplus
    git clone https://github.com/LineageOS/android_hardware_oplus.git --depth=1 -b lineage-22.2 hardware/oplus
fi

echo 'Cloning Signing Keys [6/6]' 
# Signing Keys
rm -rf vendor/lineage-priv
if [ ! -d "vendor/lineage-priv" ]; then
    mkdir -p vendor/lineage-priv
    git clone https://github.com/Matrixx-Devices/vendor_lineage-priv.git --depth=1 -b 15.0 vendor/lineage-priv/keys
fi
echo 'Completed, Now proceeding to lunch'
