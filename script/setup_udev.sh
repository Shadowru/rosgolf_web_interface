#!/usr/bin/env bash
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="1209", ATTR{idProduct}=="0d[0-9][0-9]", MODE="0666"' | sudo tee /etc/udev/rules.d/91-odrive.rules
echo 'KERNEL=="ttyUSB*", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60", MODE:="0777", SYMLINK+="rplidar"' | sudo tee /etc/udev/rules.d/92-rplidar.rules
echo 'SUBSYSTEMS=="usb", ENV{DEVTYPE}=="usb_device", ATTRS{idVendor}=="07ca", ATTRS{idProduct}=="313a", MODE="0666"' | sudo tee /etc/udev/rules.d/99-uvc.rules

sudo udevadm control --reload-rules
sudo udevadm trigger