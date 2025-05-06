#!/bin/bash

# Colors
RED='\033[0;30m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No color

echo -e "${GREEN}Starting the script...${NC}"
sleep 1

echo -e "${YELLOW}Updating...${NC}"
sudo apt update

echo -e "${YELLOW}Upgrading...${NC}"
sudo apt upgrade
