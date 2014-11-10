# node-red

## start as a service

1. Copy this Script as a super user to _/etc/init.d/node-red_ an make it executeable

```bash
sudo cp node-red.sh /etc/init.d/node-red
sudo /etc/init.d/node-red start
sudo chmod u+x /etc/init.d/node-red
```
2. Start service
```bash
sudo /etc/init.d/node-red start
```
