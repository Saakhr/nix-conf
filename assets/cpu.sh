#!/bin/bash
#
#uptime | awk -F'average: ' '{print $2}' | awk '{print $1}' | tr -d ',' 
#mpstat 1 1 | awk '/Average:/ {printf("%s%\n", $(NF-9))}' 
USAGE=$(mpstat 1 1 | awk '/Average:/ {printf("%s%\n", $(NF-9))}')
LOAD=$(uptime | awk -F'average: ' '{print $2}' | awk '{print $1}' | tr -d ',')

echo "${USAGE}   ${LOAD}"
