#!/bin/bash

DIR=$1

if [[ "${DIR}" = "" ]]; then
    echo "missing dir"
    exit 1
fi

IP=$(php ${DIR}/mylocalip.php)

if ps -ef | grep -v grep | grep "\-t ${DIR}"; then
        exit 0
else
        nohup php -S ${IP}:65529 -t ${DIR} > /dev/null &
        exit 0
fi

