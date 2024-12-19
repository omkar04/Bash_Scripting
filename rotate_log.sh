#!/bin/bash

LOG_DIR="/e/Task_01/backup_01"
MAX_SIZE=1024

for log in $LOG_DIR/*.log; do 
   echo "enter"
   if [ $(stat -c %s "$log") -gt $MAX_SIZE ]; then
      TIMESTAMP=$(date +%Y%m%d_%H%M%S)
      gzip "$log"
      mv "$log.gz" "$LOG_DIR/archive/log_$TIMESTAMP.log.gz"
      echo "Log file $log rotated and compressed."
    fi
done