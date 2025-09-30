#!/bin/bash

THRESHOLD=80
USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: Disk usage is above $THRESHOLD% ($USAGE%)"
else
    echo "Disk usage is under control ($USAGE%)"
fi
