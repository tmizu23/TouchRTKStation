#!/bin/sh
cd /home/pi/
mkdir .config/autostart
cp ./TouchRTKStation/install/TouchRTKStationpy.desktop /home/pi/Desktop/
cp ./TouchRTKStation/install/TouchRTKStationpy.desktop ./.config/autostart/
chmod +x ./.config/autostart/TouchRTKStationpy.desktop

reboot
