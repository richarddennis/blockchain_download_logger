#!/bin/bash

#####ubuntu server


####do   cd /home/
####Then nano block.sh
####chmod +x block.sh
####./block.sh

######This script queries the current blockchain download and compares this with the known blockheght on blockchain
######It is run every second and logs the time to the text file

while true ; do
    clear
    echo "Press enter to break loop. Script will loop every 3 seconds"
    echo ""
    current_date_time="`date +%Y%m%d%H%M%S`";
    echo -e "    \033[31mdownloaded\e[0m/\033[32mavailable\e[0m"
    echo -e "    \033[31m"`bitcoin-cli getblockcount 2>&1`"\e[0m"/"\033[32m"`wget -O - http://blockchain.info/q/getblockcount 2>/dev/null`"\e[0m"
    read -t 3 -n 3 && break
    echo $current_date_time; >> download_time_query.txt


done
