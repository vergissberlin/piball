## Install WLAN on RaspberryPI with Debian


### Rename Host (optional)

1. <code>sudo nano /etc/hostname</code> and change the name
- <code>sudo nano /etc/hostname</code> and enter your name on 127.0.1.1

### Hardware detection
You don't know which hardware you've connected to your raspberry pi? No problemo!
# Get a wired SSH connect to your Raspberry pi
# Type <code>lsub</code>
# Search for a driver https://wiki.debian.org/wifi

### Install Driver

1. get root <code>su</code> (_sudo passwd root_ if you don't know password)
- Add a "non-free" component to /etc/apt/sources.list, for example: <code>deb http://http.debian.net/debian/ wheezy main contrib non-free</code>
- Update the list of available packages: <code>aptitude update</code>
- Install the firmware-realtek package: <code>aptitude update && aptitude install firmware-realtek</code>

### Configure network with static IP

1. <code>iwlist scan</code>
2. Encode passphrase <code>wpa_passphrase YOUR_SSID YOUR_PASSPHRASE</code>
3. Edit interface file <code>sudo nano /etc/network/interfaces</code>
```bash
auto lo
iface lo inet loopback

# Ethernet
iface eth0 inet static
  address 192.168.2.50
  broadcast 192.168.2.255
  gateway 192.168.2.1

# WiFi
auto wlan0
iface wlan0 inet static
  address 192.168.2.55
  broadcast 192.168.2.255
  gateway 192.168.2.1
  wpa-ssid	your-ssid
  wpa-psk		2d5f23ce938856412e206db92bc166016ffdff8a00d373fdeb57234f37
```
4. Check your WiFi settings <code>ifconfig</code>
5. Check your WiFi status <code>sudo ifdown wlan0</code>
6. Start your WiFi <code>sudo ifup wlan0</code>
7. Check your WiFi settings <code>ifconfig</code>
