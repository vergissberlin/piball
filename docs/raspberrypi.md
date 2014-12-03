# nr-soccer - Prepare your raspberry pi (on linux)

## SD card
- Just take care that you have 4 GB minimum and no data on it
- Insert card and unmount it <code>umount /dev/sdb2</code>

## Operating system

1. *Download Debian RaspberyPi OS* <code>wget http://downloads.raspberrypi.org/raspbian_latest</code>
2. *Write on SD Card* <code>sudo dd bs=4M if=2014-09-09-wheezy-raspbian.img of=/dev/mmcblk0</code>
3. *Connect with SSH* <code>ssh pi@192.168.1.2</code> Password: _raspberrypi_ 
4. *Update packages*

## Links
- Install Debian Weezy on Rapsberry PI http://www.raspberrypi.org/documentation/installation/installing-images/linux.md
