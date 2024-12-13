#!/bin/bash

# Interface name (change if needed)
INTERFACE="enp0s25"

# Check if the interface is up
if ip link show "$INTERFACE" | grep -q "state UP"; then
    # Wired interface is up, get IP Address
    IP_ADDRESS=$(ip addr show "$INTERFACE" | grep inet | awk '{print $2}' | cut -d'/' -f1)

    # Output the formatted block for i3blocks
    echo "  ${IP_ADDRESS}"
else
    # Wired interface is down
    echo "  Offline"
fi

