#!/bin/bash

DIRECTORY="/e/Task_01/backup_01"
GIT_REPO="https://github.com/omkar04/Automation_Tasks.git"
SERVICE="myapp"
cd $DIRECTORY
git pull origin master
systemctl restart $SERVICE
echo "Application deployed and service restarted."