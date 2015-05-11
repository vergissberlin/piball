# Backup

## Create image.img from SD card
1. Put your card in a card reader
- With Linux enter following command on command line

```bash
sudo dd if=/dev/sda5 of=foosball.img
```

- Waite a minute or two, done
- 
## Create backups an push tp remote

### Install dependencies

**Ruby RVM**
```bash
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
sudo \curl -sSL https://get.rvm.io | bash -s stable
```
Backup manager ([Docs](http://meskyanichi.github.io/backup/v4/))
```bash
gem install backup
```
