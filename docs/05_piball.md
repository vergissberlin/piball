# piball

## Install piball dependencies
Let's install the dependencies to _piball_.

Install firebase node for node red.
https://github.com/hovissimo/node-red-firebase

```bash
cd ~/.node-red
npm install firebase node-red-nodes node-red-web-nodes
cd nodes/
git clone https://github.com/hovissimo/node-red-firebase
```

## Install piball

### Generate SSH Key

On follow command hit 5 times enter and copy the key to your clipboard

```bash
ssh-keygen
cat ~/.ssh/id_rsa.pub
```

```bash
cd ~
git clone https://github.com/vergissberlin/piball.git
```

## Symlink flows

To use the prepared piball flows, you can create symlinks to the piball working copy.
```bash
cd ~/.node-red
rm flows_piball.json
ln -s ../piball/server/home/pi/.node-red/flows_piball.json
```
