#!/bin/bash

UPTIME_THRESHOLD=24
LASTREBOOT=$( who -b | awk '{print $3,$4}')
echo "$LASTREBOOT"
CURRENTTIME=$(date "+%s")
echo "$CURRENTTIME"
LASTREBOOTTIME=$(date -d "$LASTREBOOT" "+%s")
echo "$LASTREBOOTTIME"
UPTIME=$(( ($CURRENTTIME - $LASTREBOOTTIME) / 3600 ))
if [ $UPTIME -lt $UPTIME_THRESHOLD ]; then
    echo "The server was rebooted within the last 24 hours"
else
    echo "Server uptime is greater than 24 hours."
fi