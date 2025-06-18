#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No color

echo -e "${GREEN}Connecting to keyboard...${NC}"

sleep 1

bluetoothctl << EOF
power on
agent KeyboardOnly
default-agent
pairable on
scan on
pair DC:2C:26:3E:A2:FD
trust DC:2C:26:3E:A2:FD
connect DC:2C:26:3E:A2:FD
quit
EOF

echo -e "${GREEN}Restarting kanata service...${NC}"

systemctl --user restart kanata.service

echo -e "${GREEN}Script ended${NC}"
