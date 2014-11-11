# node-red

## installation

### Install operating dependencies
Have a look on http://nodered.org/docs/hardware/raspberrypi.html or just enter:
```bash
cd
wget http://node-arm.herokuapp.com/node_latest_armhf.deb
sudo dpkg -i node_latest_armhf.deb
```
### Install node-red
Have a look on https://github.com/node-red/node-red/blob/master/INSTALL.md or just enter:
```bash
sudo aptitude install git-core
cd
git clone git@github.com:node-red/node-red.git
cd node-red
npm install
```

### Install wiring-pi module
This version of working with the Raspberry Pi uses a node.js wrapper to the WiringPi libraries previously installed, and so gives all functions you write access to the Pi capabilities at all times, so you can do more complex things, at the expense of having to write code within a function rather than dragging and wiring nodes.
Have a look on http://wiringpi.com/download-and-install/ or just enter:

```bash
git clone git://git.drogon.net/wiringPi
cd wiringPi
git pull origin
./build
cd ~/node-red
npm install wiring-pi
```

#### Testing
Test connection to you GPIOs (The pins on your raspberry we need to count the goals).
```bash
gpio -v
gpio readall
```

## Start as a service
### Copy this Script as a super user to _/etc/init.d/node-red_ an make it executeable

```bash
sudo cp node-red.sh /etc/init.d/node-red
sudo /etc/init.d/node-red start
sudo chmod u+x /etc/init.d/node-red
```
### Use service
```bash
sudo /etc/init.d/node-red start
```
You can also use _service_:
```bash
$ sudo service node-red stop
$ sudo service node-red start
$ sudo service node-red restart
```

### Autostart
If you need Node-RED to autostart on boot then use this command
```bash
 sudo update-rc.d node-red defaults
``
