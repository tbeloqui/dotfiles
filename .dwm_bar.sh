#!/bin/bash

function get_status()
{
    status=""
    status="$status [BAT: $(cat /sys/class/power_supply/BAT0/capacity) %]"
    status="$status [$(date +"%A %d %b")]"
    status="$status [$(date +%H:%M)]"
    echo $status
}

while [ 1 ]
do
    status=$(get_status)
    xsetroot -name "$status"
    sleep 1s
done
