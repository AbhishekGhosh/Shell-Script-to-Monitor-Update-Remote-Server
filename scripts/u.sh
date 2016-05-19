#!/bin/bash

# Author : Dr. Abhishek Ghosh
# GNU GPL 3.0
# https://thecustomizewindows.com
# HP Cloud Bash Script to SSH and Update Ubuntu Server
# run on production server with your risk
# for educational purpose
echo "You Are Going To SSH and Update Your Server"
echo " "
echo "What is the IP address?"
read ip
echo " "
echo "What is the username?"
read ame
echo " "
ssh -t -t $ame@$ip <<'ENDSSH'
free -m | grep "Mem:" | awk '{ print "Total memory (used+free): " $3 " + " $4 " = " $2 }'
clear
sudo apt-get update -y && sudo apt-get upgrade -y && exit
echo " "
ENDSSH
finish=`date "+%Y-%m-%d-%H-%M-%S"`
echo "Update and Upgrade of $ip completed at ${finish}"
