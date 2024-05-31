if [ "$EUID" -eq 0 ]
  then echo "Don't run the script as root. Instead give password when asked"
  exit
fi

set -a

source /usr/local/bin/.env

set +a

echo "Connecting to $INNO_VPN_SERVER for $INNO_VPN_USER"
echo $INNO_VPN_PASS | sudo openconnect $INNO_VPN_SERVER --authgroup=$INNO_VPN_GROUP --user=$INNO_VPN_USER -b &

sleep 6
echo "Connected to VPN"
while :
do
	notify-send --app-name="Cisco OpenConnect" --expire-time=2000  "VPN Reminder" "connected to $INNO_VPN_NAME VPN \n open ksysguard to stop"
	sleep 300
done
