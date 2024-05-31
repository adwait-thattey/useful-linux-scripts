if [ -z ${TERMLOG_SCRIPT_PATH+x} ]
then
    export TERMLOG_SCRIPT_PATH="$HOME/termlogs/$(date '+%Y-%m-%d--%H-%M-%S').log"
    script $TERMLOG_SCRIPT_PATH
    exit
fi
