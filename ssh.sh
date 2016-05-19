#!/bin/bash

# Author : Dr. Abhishek Ghosh
# GNU GPL 3.0
# https://thecustomizewindows.com
# Bash Script to SSH
# run on production server with your risk
# for educational purpose
clear
echo "* Started [ Shell Script to Monitor Update Remote Server ] Program"
echo "Github Repo: https://goo.gl/MRwIKm       Fork, Star and Send Pull Requests\n"
echo "********  MENU ********\n"
echo "Type [ r ] and hit the Enter key to get reporting.\nType [ u ] and hit the Enter key to update server without reporting.\nType [ u ] hit the Enter key, then type [ n ] to exit.\n\n********       ********\n"
read -p "What you want? (r/u)?" START
if [ "$START" == "r" ]; then
echo " "
echo "What is the IP address? Paste/Type it and hit the Enter key:"
read ip
echo " "
echo "What is the username? Like [ root ] Paste/Type it and hit the Enter key:"
read ame
echo " "
ssh $ame@$ip 'export TERM=xterm && bash -s' < scripts/monitor.sh
else
echo "Type y to update and upgrade. Type n to exit"
read -p "Continue (y/n)?" CONT
if [ "$CONT" == "y" ]; then
  sh scripts/u.sh;
else
  exit;
  fi
fi
