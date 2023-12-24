#!/bin/bash
BOLD=$(tput bold)
NORMAL_TEXT=$(tput sgr0)
BLUE="$(tput setaf 4)"
RESET_COLOR="$(tput sgr0)"

set -a

if [ -d "/run/media" ]; then
	echo "${BOLD}${BLUE}Arch${RESET_COLOR} Shell"
	DRIVES_PREFIX="/run/media"
elif [ -d "/media" ]; then
	echo "Using Ubuntu Path"
	DRIVES_PREFIX="/media"

else 
	echo "DRIVE PREFIX for this OS not found"

fi

DRIVE_ADWAIT="$DRIVES_PREFIX/$USER/Adwait"

if [ -d $DRIVE_ADWAIT ]; then

	DIR_STUDY="$DRIVE_ADWAIT/Study"
	DIR_COLLEGE_STUDY="$DIR_STUDY/College Study"
	DIR_CURRENT_SEM="$DIR_COLLEGE_STUDY/sem7"
	DIR_PROJECTS="$DRIVE_ADWAIT/Projects"
	DIR_SOFTWARES="$DRIVE_ADWAIT/Softwares"

else
	echo "Drive Adwait Not found"
fi

DRIVE_SECONDRY="$DRIVES_PREFIX/$USER/Secondry"

if [ -d $DRIVE_SECONDRY ]; then
	DRIVE_GAMES="$DRIVE_SECONDRY/Games"
else
	echo "Drive Secondry Not found"

fi

DRIVE_ADTH="$DRIVES_PREFIX/$USER/adth"
# if [ -d $DRIVE_ADTHEXT4 ]; then
#         GOPATH="$DRIVE_ADTHEXT4/manjaromain/go"
# else
#         echo "Drive adth-ext4 not found"
# fi

DRIVE_TOSHIBA="$DRIVES_PREFIX/$USER/TOSHIBA EXT"


set +a
