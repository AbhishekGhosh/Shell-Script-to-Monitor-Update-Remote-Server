#! /bin/bash

# Author : Dr. Abhishek Ghosh
# GNU GPL 3.0
# https://thecustomizewindows.com
# HP Cloud Bash Script to SSH
# run on production server with your risk
# for educational purpose
echo " "
clear
unset variablename os architecture kernelrelease internalip loadaverage
while getopts iv name
do
        case $name in
          i)iopt=1;;
          v)vopt=1;;
          *)echo "Invalid arg";;
        esac
done

if [[ $# -eq 0 ]]
then
{

# variablename is a Variable
variablename=$(tput sgr0)

# Check hostname
echo -e '\E[32m'"Hostname :" $variablename $HOSTNAME

# Check Internal IP
internalip=$(hostname -I)
echo -e '\E[32m'"IP Address:" $variablename $internalip

# Check System Uptime
tcwuptime=$(uptime | awk '{print $3,$4}' | cut -f1 -d,)
echo -e '\E[32m'"System Uptime Days/(HH:MM) :" $variablename $tcwuptime

# Check Logged In Users
who>/tmp/who
echo -e '\E[32m'"Logged In users :" $variablename && cat /tmp/who 

# Check RAM and SWAP Usages
free -h | grep -v + > /tmp/ramcache
echo -e '\E[32m'"Ram Usages :" $variablename
cat /tmp/ramcache | grep -v "Swap"
echo -e '\E[32m'"Swap Usages :" $variablename
cat /tmp/ramcache | grep -v "Mem"

# Check Load Average
loadaverage=$(cat /proc/loadavg)
echo -e '\E[32m'"Load Average :" $variablename $loadaverage

# Check Update on deb GNU/Linux
tcwupdate=$(dpkg --get-selections | xargs apt-cache policy {} | grep -1 Installed | sed -r 's/(:|Installed: |Candidate: )//' | uniq -u | tac | sed '/--/I,+1 d' | tac | sed '$d' | sed -n 1~2p)
echo -e '\E[32m'"Updates Available :" $variablename $tcwupdate

# Unset Variables
unset variablename os architecture kernelrelease internalip loadaverage

# Remove Temporary Files
rm /tmp/who /tmp/ramcache
}
fi
shift $(($OPTIND -1))
