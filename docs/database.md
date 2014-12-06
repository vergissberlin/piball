# database

If you want to use the MySQL nodes to collect all score in a database,
you need to install some dependencies

## install
```bash
sudo apt-get install mysql-server
cd ~/node-red
npm install node-red-node-mysql
```


### MySQL
#### Login on CLI
```bash
mysql --user root --password
```
#### Create user 'foosball'
```sql
GRANT ALL PRIVILEGES ON *.* TO 'foosball'@'%' IDENTIFIED BY 'YOUR_PASSWORD' WITH GRANT OPTION;
```

#### Create database 'foosball'
``sql
CREATE DATABASE foosball;
```

#### Create table 'score'
```sql
CREATE TABLE `foosball`.`score` (
	`id`                  INTEGER(10) UNSIGNED AUTO_INCREMENT,
	`type`     VARCHAR(24),
	`updated_at`          TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created_at`          DATETIME DEFAULT NULL,
	PRIMARY KEY (id)
);
```
