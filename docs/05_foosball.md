# foosball

## Install foosball dependencies
Let's install the dependencies to _foosball_.

Install firebase node for node red.
https://github.com/hovissimo/node-red-firebase

```bash
cd ~/.node-red
npm install firebase node-red-nodes node-red-web-nodes
cd nodes/
git clone https://github.com/hovissimo/node-red-firebase
```

## Install foosball

### Generate SSH Key

On follow command hit 5 times enter and copy the key to your clipboard

```bash
ssh-keygen
cat ~/.ssh/id_rsa.pub
```

```bash
cd ~
git clone https://github.com/vergissberlin/foosball.git
```

## Symlink flows

To use the prepared foosball flows, you can create symlinks to the foosball working copy.
```bash
cd ~/.node-red
rm flows_foosball.json
ln -s ../foosball/server/home/pi/.node-red/flows_foosball.json
```
