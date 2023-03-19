#!/bin/bash
# Test using at command
#

export PATH="$PATH:/home/nur/nur-osmanbegovic-devops-mentorship/week-3/chapter16"

echo "This script ran at $(date +%B%d,%T)" > ./files/script86.out
echo >> ./files/script86.out
sleep 5
echo "This is the script's end..." >> ./files/script86.out