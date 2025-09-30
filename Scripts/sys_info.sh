#!/bin/bash

echo "=== Hostname ==="
hostname

echo "=== Uptime ==="
uptime

echo "=== Logged in Users ==="
who

echo "=== IP Address ==="
ipconfig getifaddr en0 2>/dev/null || ifconfig | grep inet

echo "=== Disk Usage ==="
df -h /

echo "=== Top Processes ==="
top -l 1 | head -n 10
