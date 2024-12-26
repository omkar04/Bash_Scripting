#!/bin/bash
EMAIL="admin@example.com"
UPDATES=$(apt-get -s upgrade | grep "^Inst")

if [ -n "$UPDATES" ]; then
    echo "Updates available: $UPDATES" #| mail -s "System Updates Available" $EMAIL
else
    echo "No updates available."
fi
