## Raspberry PI

This is an introduction for Linux and OS X users.
Windows user may have a look on this pages:
http://www.raspberrypi.org/documentation/installation/installing-images/windows.md

### SD card
- Just take care that you have 4 GB minimum and no data on it
- Insert card and unmount it <code>umount /dev/sdb2</code>

### Operating system

1. *Download Debian RaspberyPi OS* <code>wget http://downloads.raspberrypi.org/raspbian_latest</code>
2. *Write on SD Card* <code>sudo dd bs=4M if=2015-02-16-raspbian-wheezy.img of=/dev/mmcblk0</code>
3. *Connect with SSH* <code>ssh pi@192.168.1.2</code> Password: _raspberrypi_
4. *Update packages*

### Links
- Install Debian Weezy on Rapsberry PI with Linux http://www.raspberrypi.org/documentation/installation/installing-images/linux.md
- Install Debian Weezy on Rapsberry PI with OS X http://www.raspberrypi.org/documentation/installation/installing-images/mac.md


### Login
```bash
ssh pi@192.168.1.x
```

#### Install dependencies
I prefer the midnight commander. It is a file manager like the good old norton commander.
It includes a easy to use text editor, called _mceditor_.
But you can install the editor of your choice.

```bash
sudo aptitude update
sudo aptitude install mc git mysql-server mysql-client
```

#### Configuration

Setup cli standard editor with:
```bash
sudo update-alternatives --config editor
```
(hit _3_ for midnight commander editor (recommended for linux beginners like me ;-)
