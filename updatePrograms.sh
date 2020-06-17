#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

cd /home/foxmaccloud/Programs

for dir in */ ; do
    echo -e "\nUpdateing: ${RED}$dir${NC}"
    cd "$dir" && git pull -q --progress
    sleep 1
    cd ..
done
