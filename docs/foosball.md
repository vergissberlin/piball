# foosball


## Install debian packages

```bash
sudo apt-get update
sudo apt-get install mysql-server

```


## Install node dependencies

You can see all missing packages by starting node-red like follows
```bash
cd node-red
node red -v
```

Now install the dependencies:
```bash
npm install node-red-firebase node-red-nodes node-red-web-nodes
npm install node-red-node-suncalc
npm install node-red-node-xmpp
npm install node-red-contrib-say
npm install firebase
cd nodes/
git clone https://github.com/hovissimo/node-red-firebase
```
