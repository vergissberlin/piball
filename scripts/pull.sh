#!/bin/bash

# piball
#
# LICENSE:    MIT
#
# @project    piball
# @package    deployment
# @author     André Lademann <vergissberlin@googlemail.com>
# @copyright  Copyright (c) 2014 andrelademann.de (http://www.andrelademann.de)
# @license    http://andrelademann.de/license
# @since      2014-12-18 - 11:53:21 PM


# 1. Update repository
cd ~/piball &&\
git checkout master &&\
git pull &&\


# 2. Create backup
cat ~/.node-red/flows_piball.json > ~/.node-red/flows_backup.json &&\

# 3. Copy flow file
cat server/home/pi/.node-red/flows_piball.json > ~/.node-red/flows_piball.json &&\

# 4. Restart node-red
pm2 restart node-red

exit 0;
