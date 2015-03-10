## node-red

### Installation

#### Install latest nodejs with npm
Have a look on http://nodered.org/docs/hardware/raspberrypi.html or just enter:

##### Raspberry Pi
Attention! This is for Raspberry Pi version 1. (A, B and B+)
The simplest way to install Node.js and other dependencies on Pi (version 1) is

```bash
wget http://node-arm.herokuapp.com/node_0.10.36_armhf.deb
sudo dpkg -i node_0.10.36_armhf.deb
sudo aptitude install build-essential python-dev python-rpi.gpio
```

##### Raspberry Pi 2
Attention! This is for Raspberry Pi version 2.
This also installs some additional dependencies.

```bash
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo aptitude install -y build-essential python-dev python-rpi.gpio nodejs
```

#### Install node-red
Have a look on https://github.com/node-red/node-red/blob/master/INSTALL.md or just enter:

```bash
sudo npm install node-red -g
```
Now you are able to run <code>nod-red</code> with a included webserver.

#### Testing

Test connection to you GPIOs (The pins on your raspberry we need to count the goals).

```bash
/usr/local/lib/node_modules/node-red/nodes/core/hardware/nrgpio ver 0

```

##### Install wiring-pi module

This version of working with the Raspberry Pi uses a node.js wrapper to the WiringPi libraries previously installed, and so gives all functions you write access to the Pi capabilities at all times, so you can do more complex things, at the expense of having to write code within a function rather than dragging and wiring nodes.
Have a look on http://wiringpi.com/download-and-install/ or just enter:

```bash
cd
git clone git://git.drogon.net/wiringPi
cd wiringPi
git pull origin
./build
cd ~/.node-red
npm install wiring-pi
```
###### Testing
Test connection to you GPIOs with _wiringPi_.

```bash
gpio -v
gpio readall
```

## Autostart node-red

If you want to start Node-RED to autostart on boot then use following commands.

### Install daemon manger

```bash
sudo npm install -g pm2
pm2 start /usr/local/bin/node-red --node-args="--max-old-space-size=128" -- -v
sudo env PATH=$PATH:/usr/local/bin pm2 startup linux -u pi
```
