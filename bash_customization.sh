#!/bin/bash

DEEPRED="\[$(tput setaf 1)\]"
SEAGREEN="\[$(tput setaf 6)\]"
YELLOW="\[$(tput setaf 227)\]"
WHITE="\[$(tput setaf 7)\]"
ORANGE="\[$(tput setaf 208)\]"
BLUE="\[$(tput setaf 4)\]"
RESET_COLOR="\[$(tput sgr0)\]"
BOLD="\[$(tput bold)\]"
NORMAL_TEXT="\[$(tput sgr0)\]"

USER_PROMPT_COLOR=$SEAGREEN
ROOT_PROMPT_COLOR=$DEEPRED

if [ "$EUID" -ne 0 ]
then
    
    PS1="[$BOLD$BLUE$(date +%b-%d)$WHITE@$BLUE\t $USER_PROMPT_COLOR$USER$ORANGE \W$WHITE] $YELLOW\$$RESET_COLOR "

    #PS1="[$BOLD$USER_PROMPT_COLOR$USER$WHITE@$YELLOW$HOSTNAME$ORANGE \W$WHITE] $BLUE\$$RESET_COLOR "
    
    
    #PS1='[\[${USER_PROMPT_COLOR}\]\e[1m\u\[${WHITE}\]@\[${YELLOW}\]\h \[${ORANGE}\]\W\[${RESET_COLOR}\]\e[0m]\$ '

    export SUDO_PROMPT="$(tput bold)$(tput setaf 1)[sudo] $(tput setaf 7)password for $(tput setaf 6)$USER$(tput setaf 7):$(tput sgr0)"
    
    #export SUDO_PROMPT="$BOLD$DEEPRED[sudo]$RESET_COLOR$BOLD password for $USER_PROMPT_COLOR$USER$RESET_COLOR$BOLD:$NORMAL_TEXT"


else
	echo "$(tput setaf 1)$(tput bold)"
    printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' \*
    echo "WARNING: $(tput setaf 7) You are entering as $(tput setaf 1) ROOT"
    echo -n ""
    printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' \*
    echo "$(tput sgr0)"

     PS1="[$BOLD$DEEPRED$USER$WHITE@$YELLOW$HOSTNAME$ORANGE \W$WHITE] $DEEPRED#$RESET_COLOR "
#    PS1='[\[${DEEPRED}\]\[\e[1m\]\u\[${WHITE}\]@\[${YELLOW}\]\h \[${ORANGE}\]\W\[${RESET_COLOR}\]]\[\e[0m\]\$ '

fi

