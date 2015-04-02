#!/bin/bash

# Foosball
#
# LICENSE:    MIT
#
# @project    foosball
# @package    deployment
# @author     André Lademann <vergissberlin@googlemail.com>
# @copyright  Copyright (c) 2014 andrelademann.de (http://www.andrelademann.de)
# @license    http://andrelademann.de/license
# @since      2014-12-18 - 11:53:21 PM


# 1. Update repository
cd ~/foosball &&\
git checkout master &&\
git pull &&\

# 2. Copy flow file
cat ~/.node-red/flows_foosball.json > server/home/pi/.node-red/flows_foosball.json &&\

# 3. Add and commit changes
git add server/home/pi/.node-red/flows_foosball.json &&\
git commit -m "Deploy new flow from Raspberry PI" >> ~/deploy.log &&\

# 4. Push and log
git push >> ~/deploy.log

exit 0;
