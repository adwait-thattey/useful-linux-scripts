#!/bin/bash
ATHATTEYPASS="???"
ROOTPASS="???"

export SSHPASS=$ATHATTEYPASS

sshpass -e ssh athattey@$1

