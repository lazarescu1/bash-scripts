#!/bin/bash

# Colors
RED='\033[0;30m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No color

echo "${YELLOW}Updating...${NC}"
sudo apt update

echo "${YELLOW}Upgrading...${NC}"
