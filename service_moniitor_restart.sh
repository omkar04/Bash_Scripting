#!/bin/bash
SERVICES="Appinfo"

if ! systemctl is-active --quiet $SERVICE; then
    echo "$SERVICES is not running. Restarting..."
    #service $SERVICES restart
else
    echo "$SERVICES service is running"
fi
