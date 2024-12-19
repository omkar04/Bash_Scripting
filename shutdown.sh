#!/bin/bash

INACTIVE_LIMIT=10800 # 3 hrs in seconds

LAST_ACTIVITY=$(who -u | awk '{print $4}' | tail -n1)

if [ -z $LAST_ACTIVITY];then
    
    echo "No active users found. Shutting down..."
    shutdown -h now
    exit 0 
fi

LAST_ACTIVITY_EPOCH=$(date -d "$LAST_ACTIVITY" +%s)
  echo "$LAST_ACTIVITY_EPOCH"
CURRENT_TIME=$(date +%s)
  echo "$CURRENT_TIME"
INACTIVITY=$((CURRENT_TIME - LAST_ACTIVITY_EPOCH))
  echo "$INACTIVITY"

if [ $INACTIVITY -ge $INACTIVITY_LIMIT ]; then
    echo "Server has been inactive for over 3 hours. Shutting down..."
    shutdown -h now
else
    echo "Server is active. No action taken."
fi