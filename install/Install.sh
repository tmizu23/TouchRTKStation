#!/bin/sh

cd /home/pi/

apt-get update -y

# Install pyqt5
apt-get install -y qt5-default pyqt5-dev pyqt5-dev-tools

# Install RTKLIB
git clone -b rtklib_2.4.3 https://github.com/tomojitakasu/RTKLIB.git
patch /home/pi/RTKLIB/src/stream.c /home/pi/TouchRTKStation/install/stream.patch
cd ./RTKLIB/app/str2str/gcc/
make
cd ../../rtkrcv/gcc/
make

# Install LCD Driver
cd /home/pi/
git clone https://github.com/goodtft/LCD-show.git
cd ./LCD-show/
cp -f ../TouchRTKStation/install/config-35-480X320.txt ./boot/
chmod +x MPI3508_480_320-show
./MPI3508_480_320-show
