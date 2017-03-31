#!/bin/bash

command="curl -s https://matthewpipie.github.io/sendmac.sh?\$(date +\%s) | sh"

#write out current crontab
sudo crontab -u root -l > mycron
#echo new cron into cron file
echo "*/5 * * * * $command" >> mycron
#install new cron file
sudo crontab -u root mycron
rm mycron

$($command)
