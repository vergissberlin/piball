## node-red

1. Change root password <code>sudo passwd root</code>
- Enter new root password
- Get root<code>su</code>

### installation

#### Install operating dependencies

##### Install latest nodejs with npm

- Setup with Debian <code>curl -sL https://deb.nodesource.com/setup | bash -</code>
- Then install node <code>apt-get install -y nodejs</code>


Have a look on http://nodered.org/docs/hardware/raspberrypi.html or just enter:
```bash
cd
wget http://node-arm.herokuapp.com/node_latest_armhf.deb
sudo dpkg -i node_latest_armhf.deb
```
#### Install node-red

Have a look on https://github.com/node-red/node-red/blob/master/INSTALL.md or just enter:
```bash
sudo aptitude install git-core
cd
git clone git@github.com:node-red/node-red.git
cd node-red
npm install
```

The install process will may interrupt with a error message.
Just repeat the install command.
```bash
npm install
```
##### Firebase

Install firebase node for node red.
https://github.com/hovissimo/node-red-firebase

```bash
cd ~/node-red
npm install firebase
cd nodes/
git clone https://github.com/hovissimo/node-red-firebase
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
cd ~/node-red
npm install wiring-pi
```

##### Testing
Test connection to you GPIOs (The pins on your raspberry we need to count the goals).
```bash
gpio -v
gpio readall
```

## Start as a service
### Copy this Script as a super user to _/etc/init.d/node-red_ an make it executeable

```bash
sudo cp node-red.sh /etc/init.d/node-red
sudo chmod u+x /etc/init.d/node-red
sudo /etc/init.d/node-red start
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
```
