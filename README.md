Copyright (C) Sony Mobile Communications 2013
=============================================

This is the Android device configuration for Xperia L.

To setup a tree and build images for the device do the following:

`repo init` as described by Google over at:
http://source.android.com/source/downloading.html

Put the following snippet in `.repo/local_manifests/c2105.xml`

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
<remote  name="sony" fetch="git://github.com/sonyxperiadev/" />

<remove-project name="platform/hardware/akm" />
<remove-project name="platform/hardware/invensense" />
<remove-project name="platform/hardware/qcom/camera" />
<remove-project name="platform/hardware/qcom/display" />
<remove-project name="platform/hardware/qcom/keymaster" />
<remove-project name="platform/hardware/qcom/media" />
<remove-project name="platform/hardware/qcom/msm8960" />
<remove-project name="platform/hardware/qcom/power" />
<remove-project name="platform/hardware/qcom/sensors" />

<project path="device/sony/c2105" name="device-sony-c2105" groups="device" remote="sony" revision="master" />
</manifest>
```

Download the zip file with vendor binaries from:
http://developer.sonymobile.com/knowledge-base/open-source/android-open-source-project-for-xperia-devices/

In the root of your Android code tree unzip the `SW_binaries_for_Xperia_L_v1.zip`.

You should now have a directory named `vendor/sony/c2105` in your tree.

Currently there is an issue with the vendor/sony/c2105/c2105-vendor.mk, as a workaround, 
please simple remove the last line from it, i.e. remove the line below

```xml
vendor/sony/c2105/proprietary/system/bin/akmd8963:system/bin/akmd8963 \
```

Then run the following commands to build,

* `repo sync`
* `source ./build/envsetup.sh`
* `lunch full_c2105-userdebug`
* `make`

To flash the images produced make sure your device is unlocked, as described on
http://unlockbootloader.sonymobile.com/

Enter fastboot mode on the device by pressing volume up while inserting the USB
cable or execute `adb reboot bootloader`.

* `fastboot flash boot $OUT/boot.img`
* `fastboot flash system $OUT/system.img`
* `fastboot flash userdata $OUT/userdata.img`

Reflashing userdata is not necessary every time, but incompatibilities with
previous content might result in a device that doesn't boot. If this happens
try to reflash just the userdata again.

Please see the project wiki for more information:
https://github.com/sonyxperiadev/device-sony-c2105/wiki
