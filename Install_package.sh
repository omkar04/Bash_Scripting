#!/bin/bash

PACKAGES=("nginx" "git" "docker")

for PACKAGE in "${PACKAGES[@]}";do
    echo "$PACKAGE"
     sudo apt-get install -y $PACKAGE
    if [ $? -eq 0 ]; then
        echo "$PACKAGE has installed successful"
    else
         echo "$PACKAGE has installed failed"
    fi
done