#!/bin/sh

lock='/home/palid/scripts/i3/i3lock.sh'


case "$1" in

    lock)
        sh $lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        sudo pm-suspend | $lock
        ;;
    hibernate)
        sudo pm-hibernate
        ;;
    reboot)
        sudo reboot
        ;;
    shutdown)
        sudo poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0