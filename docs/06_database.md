# Database

If you want to use the MySQL nodes to collect all score in a database,
you need to install some dependencies

## Install
Set and notice the password while the mysql install process!
```bash
sudo aptitude install mysql-server mysql-client
```
Install the mysql node.
```bash
cd ~/.node-red
npm install node-red-node-mysql
```

### MySQL
#### All in one
Enter your _root_ password (remember on install process with the blue ui):
```bash
cd ~/.node-red/node_modules/foosball
mysql -u root --password < scripts/setup.sql
sudo service mysql restart
```

#### External access
If you want to access from a external device, you need to change the bind address in follow file:
```bash
sudo editor /etc/mysql/my.conf
```
Change <code>bind-address = 127.0.0.1</code> to <code>bind-address = 0.0.0.0</code>
