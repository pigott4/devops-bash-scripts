#!/bin/bash

echo "Checking internet connectivity..."
ping -c 2 8.8.8.8 > /dev/null && echo "✅ Internet: Reachable" || echo "❌ Internet: Not reachable"

echo "Checking DNS resolution..."
nslookup google.com > /dev/null && echo "✅ DNS: Working" || echo "❌ DNS: Failed"
