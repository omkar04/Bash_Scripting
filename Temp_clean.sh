#!/bin/bash

TEMP_DIR="/c/Windows/Temp"
DAYS="7"

find $TEMP_DIR -type f -mtime +$DAYS -exec rm -f {} \;
echo "old temp files are deleted"