#!/bin/bash

# Pizza
#
# LICENSE:    MIT
#
# @project    foosball
# @package    ChromeExtension
# @author     André Lademann <vergissberlin@googlemail.com>
# @copyright  Copyright (c) 2014 andrelademann.de (http://www.andrelademann.de)
# @license    http://andrelademann.de/license
# @since      2014-12-18 - 11:53:21 PM


# 1. Update repository
cd ~/foosball &&\
git checkout develop &&\
git pull &&\


# 2. Create backup
cat ../node-red/flows_foosball.json > ../node-red/flows_backup.json &&\

# 3. Copy flow file and change user
cat server/home/pi/node-red/flows_foosball.json > ../node-red/flows_foosball.json &&\
chown pi ../node-red/flows_foosball.json &&\

# 4. Restart node-red
sudo /etc/init.d/node-red restart

