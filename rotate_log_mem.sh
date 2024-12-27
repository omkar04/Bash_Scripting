#!/bin/bash
LOG_DIR="/e/Task_01/backup_01"
LOG_DIR2="/f/"
MAX_SIZE=3 #5 bytes
LOG_FILE="$LOG_DIR/myapp.log"

if [ $(stat -c %s "$LOG_FILE") -gt $MAX_SIZE ];then
    TIMESTAMP=$(date +%Y%m%d_%H%M%S)
    mv "$LOG_DIR" "$LOG_DIR2/myapp_$TIMESTAMP.log"
    mkdir "$LOG_DIR"
    echo "Log rotated: $LOG_FILE"
fi


