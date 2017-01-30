#!/bin/bash

DIR=$1

echo $DIR

if [[ "${DIR}" = "" ]]; then
    echo "missing dir"
    exit 1
fi

IP=$(/usr/bin/php ${DIR}/mylocalip.php)

echo $IP

if ps -ef | grep -v grep | grep "\-t ${DIR}"; then
    echo "RUNNING"
    exit 0
else
    nohup /usr/bin/php -S ${IP}:65529 -t ${DIR} &
    echo "STARTED"
    exit 0
fi
