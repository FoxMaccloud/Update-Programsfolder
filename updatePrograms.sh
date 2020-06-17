#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

cd /home/foxmaccloud/Programs

for dir in */ ; do
    echo -e "\nUpdateing: ${RED}$dir${NC}"
    cd "$dir"
    if [ -d ".git" ]; then
        git pull -q --progress
    else
        echo -e "${RED}Error:${NC} Not a git repository!"
    fi
    sleep 0.1
    cd ..
done
