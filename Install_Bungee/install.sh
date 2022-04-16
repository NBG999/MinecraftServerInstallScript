#!/bin/bash
clear
echo '[+] Setup necessary stuff...'
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install openjdk-7-jre-headless
mkdir server
# shellcheck disable=SC2164
cd server
wget -o BungeeCord.jar http://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar
echo 'eula=true' > eula.txt
clear
echo '[!] Starting server...'
java -jar BungeeCord.jar
clear
echo '[+] Finished!'