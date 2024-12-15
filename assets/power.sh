#!/bin/bash

BATTERY=0
BATTERY_INFO=$(acpi -b | grep -E "Battery ${BATTERY}")
BATTERY_STATE=$(echo "${BATTERY_INFO}" | awk '{print $3}' | tr -d ',')
BATTERY_POWER=$(echo "${BATTERY_INFO}" | awk '{print $4}' | tr -d '%,')
BATTERY_TIME=$(echo "${BATTERY_INFO}" | awk '{print $5}') # Extract time remaining
URGENT_VALUE=10

if [[ "${BATTERY_POWER}" -gt 87 ]]; then
    BATTERY_ICON=""
elif [[ "${BATTERY_POWER}" -gt 63 ]]; then
    BATTERY_ICON=""
elif [[ "${BATTERY_POWER}" -gt 38 ]]; then
    BATTERY_ICON=""
elif [[ "${BATTERY_POWER}" -gt 13 ]]; then
    BATTERY_ICON=""
elif [[ "${BATTERY_POWER}" -le 13 ]]; then
    BATTERY_ICON=""
else
    BATTERY_ICON=""
fi

if [[ "${BATTERY_STATE}" = "Discharging" ]]; then
  echo "${BATTERY_ICON} ${BATTERY_POWER}% (${BATTERY_TIME})"
  echo "${BATTERY_ICON} ${BATTERY_POWER}% (${BATTERY_TIME})"
  echo ""
elif [[ "${BATTERY_STATE}" = "Not" ]] ;then
  echo "󰂄 ${BATTERY_TIME}"
  echo "󰂄 ${BATTERY_TIME}"
  echo ""
else
  echo " ${BATTERY_POWER}% (${BATTERY_TIME} until full)"
  echo " ${BATTERY_POWER}% (${BATTERY_TIME} until full)"
  echo ""
fi
# echo "#FFFFFF"

if [[ "${BATTERY_POWER}" -le "${URGENT_VALUE}" && "${BATTERY_POWER}" =~ ^[0-9]+$ ]]; then
  echo "${BATTERY_POWER}"
  exit 33
fi
