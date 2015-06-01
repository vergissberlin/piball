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
# @since      2015-04-23 - 13:53:21 PM


# 1. Deploy current state
cd ~/piball &&\
sh scripts/deploy.sh

git checkout master &&\
git pull &&\

# 2. Publish to npmjs.org
npm version patch -m "Upgrade to %s because the node-red flow was updated"
npm publish ./

exit 0;
