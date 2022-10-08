#!/bin/bash
#Fix: Windows not showing in grub boot menu | kali Linux


tput bold
tput setaf 40
tput blink
echo "$* **FIX GRUB BOOT MENU"
tput sgr0
tput sgr0
tput sgr0
echo
echo
os-prober
cp grub /etc/default/grub
echo
update-grub
sleep 1
echo 
tput setaf 40
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
tput sgr0
echo 
read -p "> Do you want to restart the computer? Y/[N]: " restart_computer
if [ $restart_computer == y ]
then
shutdown -r now
fi




