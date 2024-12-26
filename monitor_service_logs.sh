#!/bin/bash
LOG_FILE="/e/Task_01/backup_01/service.log"
DATE=$(date)
echo "$DATE"
ERROR_PATTERN="ERROR"
if grep -q "$ERROR_PATTERN" $LOG_FILE;then
  echo "Errors found in $LOG_FILE" #| mail -s "Service Error Alert" $EMAIL
else
    echo "No errors found."
fi