#!/bin/sh

echo "Docker Container Building $1:$2"

set -x -e

/opt/mplabx/mplab_platform/bin/prjMakefilesGenerator.sh $1@$2 || exit 1
make -C $1 CONF=$2 build || exit 2

#cp -r $PROJECT_PATH/$1/ /github/workspace/output