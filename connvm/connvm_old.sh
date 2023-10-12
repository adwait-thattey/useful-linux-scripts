#!/bin/bash
ATHATTEYPASS="WhoIsTheAdmin?"
ROOTPASS="WhoIsTheAdmin?"

export SSHPASS=$ATHATTEYPASS

sshpass -e ssh athattey@$1

