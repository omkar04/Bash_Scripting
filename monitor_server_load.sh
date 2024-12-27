#!/bin/bash

THRESHOLD=1.5
LOAD_AVERAGE=$( uptime | awk '{print$(NF-2)}' | sed 's/,//')
echo "$LOAD_AVERAGE"
if [ $(echo "$LOAD_AVERAGE > $THRESHOLD" | bc) -eq 1 ]; then
    echo "High load average: $LOAD_AVERAGE" | mail -s "Server Load Alert" omrshinde1999@gmail.com
else
    echo "Load average is normal." | mail -s "Server Load Alert" omrshinde1999@gmail.com
fi
