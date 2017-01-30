#!/bin/sh

IP=$(php /work/remote-volume-control/mylocalip.php)

if ps -ef | grep -v grep | grep "\-t /work/remote-volume-control"; then
        exit 0
else
        nohup php -S ${IP}:65529 -t /work/remote-volume-control > /dev/null &
        exit 0
fi

