#!/bin/bash
# usage : b2g-sync.sh [build]

if [ "$1" == "build" ]
git pull upstream master && ./repo sync && ./build.sh
then
git pull upstream master && ./repo sync
fi

