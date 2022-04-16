#!/bin/bash
clear
echo '[+] Setup necessary stuff...'
sudo apt-get update && sudo apt-get upgrade
mkdir server
# shellcheck disable=SC2164
cd server
wget -o server.jar https://papermc.io/api/v2/projects/paper/versions/1.18.2/builds/288/downloads/paper-1.18.2-288.jar
echo 'eula=true' > eula.txt
clear
echo '[!] Starting server...'
java -jar server.jar
clear
echo '[+] Finished!'