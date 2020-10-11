#!/bin/bash

set -a

if [ -d "/mnt" ]; then
	echo "Using Windows WSL Path"
	DRIVES_PREFIX="/mnt"
elif [ -d "/media" ]; then
	echo "Using Ubuntu Path"
	DRIVES_PREFIX="/media"

else 
	echo "DRIVE PREFIX for this OS not found"

fi
	echo $DRIVES_PREFIX

DRIVE_ADWAIT="$DRIVES_PREFIX/d"

if [ -d $DRIVE_ADWAIT ]; then

	DIR_STUDY="$DRIVE_ADWAIT/Study"
	DIR_COLLEGE_STUDY="$DIR_STUDY/College Study"
	DIR_CURRENT_SEM="$DIR_COLLEGE_STUDY/sem5"
	DIR_PROJECTS="$DRIVE_ADWAIT/Projects"
	DIR_SOFTWARES="$DRIVE_ADWAIT/Softwares"
	DIR_TV_SERIES="$DRIVE_ADWAIT/TVS"

else
	echo "Drive Adwait Not found"
fi

DRIVE_SECONDRY="$DRIVES_PREFIX/e"

if [ -d $DRIVE_SECONDRY ]; then
	DRIVE_GAMES="$DRIVE_SECONDRY/Games"
else
	echo "Drive Secondry Not found"

fi


set +a
