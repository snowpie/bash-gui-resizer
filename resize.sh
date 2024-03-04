#!/bin/bash

set -e
cd $1

FILES=`zenity --file-selection --multiple --file-filter='Images | *.jpg *.jpeg *.gif *.png'`

SCALE=`zenity --scale --text='Select a % to resize the images to' --value=40 --min-value=8 --max-value=200`

oIFS=$IFS

IFS='|'
for f in $FILES
do
  filename=`basename "$f"`
  echo "---> $filename : $SCALE"
  pathname=`dirname "$f"`
  cd $pathname
  convert "$f" -scale ${SCALE}% "s${SCALE}_${filename}"
done
