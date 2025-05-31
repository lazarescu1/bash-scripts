#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No color

echo -e "${GREEN}Connecting to keyboard...${NC}"

sleep 1

bluetoothctl << EOF
connect DC:2C:26:3E:A2:FD
EOF

echo -e "${GREEN}Restarting kanata service...${NC}"

systemctl --user restart kanata.service

echo -e "${GREEN}Script ended${NC}"
