#!/bin/bash

echo 'Pre install script'

sudo aptitude update &&
sudo aptitude install mc git mysql-server

exit 0;
