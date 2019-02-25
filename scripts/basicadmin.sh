#! /bin/bash
# Author: Kasana
# Date: 2/12/2018
# Description: This script will run basic admin commands

echo "This script will run sbasic administrative commands"

top| head -10
echo
df -h
echo
free -m
echo
uptime
echo
iostat
echo "--------X-------"
