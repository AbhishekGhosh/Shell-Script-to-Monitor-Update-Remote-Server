# A Shell Script to Monitor Update Remote Server

A Set of Shell Script to Monitor &amp; Update Remote Server from Your Mac or GNU/Linux computer.

![Image of Shell Script to Monitor Update Remote Server](https://thecustomizewindows.com/wp-content/uploads/2016/05/Shell-Script-to-Monitor-Update-Remote-Server.png)

# How to use

1. wget or download this repo.
2. cd inside the monitor directory.
3. chmod +x the ssh.sh file.
4. Type `ssh.sh` and hit the enter key.
4. Follow the instructions.

You will get this menu :

````
* Started [ Shell Script to Monitor Update Remote Server ] Program
Github Repo: https://goo.gl/MRwIKm       Fork, Star and Send Pull Requests

********  MENU ********

Type [ r ] and hit the Enter key to get reporting.
Type [ u ] and hit the Enter key to update server without reporting.
Type [ u ] hit the Enter key, then type [ n ] to exit.

********       ********

What you want? (r/u)?
````

If you type [ r ] and hit the Enter key to get reporting for Ubuntu server. An example report :

````
Hostname :  abhishekghosh
IP Address:  127.0.0.2 63.142.254.95
System Uptime Days/(HH:MM) :  128 days
Logged In users :
Ram Usages :
             total       used       free     shared    buffers     cached
Mem:          6.0G       886M       5.1G       162M         0B       832M
Swap Usages :
             total       used       free     shared    buffers     cached
Swap:           0B         0B         0B
Load Average :  0.00 0.00 0.00 1/29 11998
Updates Available :  acpid apport at bc byobu dselect ethtool grub-common grub-pc landscape-common language-pack-en-base libdrm-intel1 libdrm-radeon1 libevent-2.0-5 libgc1c2 libgpm2 libiw30 libpciaccess0 libpcsclite1 libpolkit-agent-1-0 libpolkit-backend-1-0 libpython2.7 linux-image-3.19.0-25-generic linux-image-3.19.0-39-generic linux-image-extra-3.19.0-25-generic linux-image-extra-3.19.0-39-generic memtest86+ policykit-1 python-twisted-core quota resolvconf screen software-properties-common thermald tmux unattended-upgrades update-notifier-common vim-runtime w3m wireless-tools wpasupplicant
````


If you type [ u ] and hit the Enter key to update server without reporting.

If you type [ u ] hit the Enter key, then type [ n ] you'll exit.
