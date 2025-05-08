#!/bin/bash

# Colors
RED='\033[0;30m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No color

# Error handling
trap 'echo "${RED}Something went wrong. Exiting...${NC}"' ERR

echo -e "\n${GREEN}Starting the script...${NC}"
sleep 1

echo -e "${YELLOW}Updating...${NC}"
sudo apt update

echo -e "${YELLOW}Upgrading...${NC}"
sudo apt upgrade -y

echo -e "${YELLOW}Cleaning up...${NC}"
sudo apt autoremove -y

echo -e "${GREEN}System update and upgrade completed successfully!${NC}\n"
