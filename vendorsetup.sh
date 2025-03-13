echo 'Starting to clone stuffs needed to build for Haydn'

# Common Tree
git clone --depth=1 https://github.com/INCENDIOCODM/android_device_xiaomi_sm8350-common -b lineage-22 device/xiaomi/sm8350-common

# Haydn Vendor
git clone --depth=1 https://github.com/xiaomi-haydn-devs/proprietary_vendor_xiaomi_haydn -b lineage-22 vendor/xiaomi/haydn

# Common Vendor
git clone --depth=1 https://github.com/xiaomi-haydn-devs/proprietary_vendor_xiaomi_sm8350-common -b lineage-22 vendor/xiaomi/sm8350-common

# Kernel
echo 'Cloning kernel tree'
git clone --depth=1  https://github.com/xiaomi-haydn-devs/android_kernel_xiaomi_sm8350 --recursive -b lineage-21 kernel/xiaomi/sm8350

# Firmware
echo 'Cloning firmware'
git clone --depth=1 https://gitlab.com/Alucard_Storm/vendor_xiaomi_haydn-firmware -b fourteen vendor/xiaomi/haydn-firmware

# Xiaomi
echo 'Cloning hardware xiaomi'
rm -rf hardware/xiaomi && git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi

# Camera
echo 'Cloning Leica camera'
git clone --depth=1 https://gitlab.com/Alucard_Storm/haydn-miuicamera -b fourteen-leica vendor/xiaomi/haydn-miuicamera
rm -rf hardware/xiaomi/megvii

# Signature Keys
echo 'Cloning Signing keys'
git clone --depth=1 https://github.com/xiaomi-haydn-devs/priv_keys.git vendor/xiaomi/priv-keys

echo 'delete vendorsetup.sh from device tree once this is done'
