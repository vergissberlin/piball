## Install WiFi on RaspberryPI with Debian


### Rename Host (optional)

1. <code>sudo nano /etc/hostname</code> and change the name
- <code>sudo nano /etc/hostname</code> and enter your name on 127.0.1.1

### Hardware detection
You don't know which hardware you've connected to your raspberry pi? No problemo!
1. Get a wired SSH connect to your Raspberry pi
- Type <code>lsub</code>
- Search for a driver https://wiki.debian.org/wifi

### Install Driver
If you you bought the USB WiFi adapter from CSL (http://astore.amazon.de/nrdev-21) you can install driver easy like this:
1. Add a "non-free" component to _sources.list_ with <code>sudo editor /etc/apt/sources.list</code>
  - for example: <code>deb http://http.debian.net/debian/ wheezy main contrib non-free</code>
  - or <code>deb-src http://mirror.ox.ac.uk/sites/archive.raspbian.org/archive/raspbian/ wheezy main contrib non-free rpi</code>
- Update the list of available packages: <code>sudo aptitude update</code>
- Install the firmware-realtek package: <code>sudo aptitude install firmware-realtek</code>

### Configure network with static IP

1. <code>iwlist scan</code>
2. Encode passphrase <code>wpa_passphrase YOUR_SSID YOUR_PASSPHRASE</code>
3. Edit interface file <code>sudo editor /etc/network/interfaces</code>
  ```bash
  auto lo
  iface lo inet loopback

  # Wired
  iface eth0 inet static
    address   192.168.2.50
    broadcast 192.168.2.255
    gateway   192.168.2.1

  # WiFi
  auto wlan0
  iface wlan0 inet static
    address         192.168.1.155
    broadcast       192.168.1.255
    gateway         192.168.1.1
    network         192.168.1.0
    netmask         255.255.255.0
    dns-search      foosball.nr
    dns-nameservers 192.168.1.4 192.168.1.41
    wpa-ssid        access-point
    wpa-psk         xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


  # Default
  iface default inet dhcp
  ```
4. Add Nameserver
  ```bash
  sudo editor /etc/resolvconf/resolv.conf.d/base
  ```
  ```bash
  nameserver 192.168.1.4
  nameserver 192.168.1.40
  ```
5. Check your WiFi settings <code>ifconfig</code>
6. Restart your WiFi <code>sudo ifdown wlan0 && sudo ifup wlan0</code>
7. Check your WiFi settings <code>ifconfig</code>
8. Check your WiFi settings <code>iwconfig</code>

---
# Alternatives

It has been my experience that the WiFi connection can be very unstable. If this is the case, the installation of a network manager's worth.

Good experience I made with *wicd*:
```bash
sudo aptitude update
sudo aptitude install wicd wicd-curses
```
After install you can run the networkmanager with:
Good experience I made with wicd.
```bash
sudo wicd-curses
```
**Good luck!** :eyes:

:heavy_exclamation_mark: Caution! The setup of the network can be the hardest part of the whole project!
