#!/bin/bash

# Interface name (change if needed)
INTERFACE="wlp3s0"

# Check if the interface is up
if iw dev "$INTERFACE" link > /dev/null 2>&1; then
    # Wireless interface is up, fetch details

    # Get Signal Quality (Signal strength in dBm)
    # SIGNAL_QUALITY=$(iw dev "$INTERFACE" link | grep "signal" | awk '{print $2 " dBm"}')
        SIGNAL_DBM=$(iw dev "$INTERFACE" link | grep "signal" | awk '{print $2}')
    
    # Convert the signal strength in dBm to percentage
    if [ ! -z "$SIGNAL_DBM" ]; then
        SIGNAL_PERCENT=$(awk "BEGIN {print 100 * ($SIGNAL_DBM + 100) / 100}")
    else
        SIGNAL_PERCENT=0
    fi



    # Get ESSID (Network name)
    ESSID=$(iw dev "$INTERFACE" link | grep "SSID" | awk '{print $2}')

    # Get IP Address
    IP_ADDRESS=$(ip addr show "$INTERFACE" | grep inet |head -1 | awk '{print $2}' | cut -d'/' -f1)
    if [[ "${ESSID}" = "" ]];then
      echo "  Offline"
    else
      # Output the formatted block for i3blocks
      echo -e "  ${SIGNAL_PERCENT}% ${ESSID} ${IP_ADDRESS}"
    fi
else
    # Wireless interface is down
    echo "  Offline"
fi

