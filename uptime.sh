#!/bin/bash

PATH=/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/TUO_UTENTE/

data=$(date +%Y%m%d%H%M)
HOSTNAME=("host1" "host2" "host3")
OUTPUT_FILE="/nfs_share/output_monitoring/uptime_"$data".txt"
invio_mail="/nfs_share/invio_mail_uptime.sh"

for hostname in "${HOSTNAME[@]}"; do
    if ! ping -c 1 -W 1 $hostname > /dev/null; then
        echo "$data $hostname not responding" >> $OUTPUT_FILE
    fi
done

if [ -f $OUTPUT_FILE ]; then
    # se trova il file (che è stato generato perchè una macchina non risponde) invia la mail
    $invio_mail
else
    echo "file uptime_check non trovato."
fi

# schedulare da crontab ogni minuto
