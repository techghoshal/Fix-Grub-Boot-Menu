#!/bin/bash
#Fix: Windows not showing in grub boot menu | kali Linux

echo
fdisk -l
sleep 1
echo
os-prober
cp grub /etc/default/grub
echo
update-grub
sleep 1
echo 
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
echo 
read -p "> Do you want to restart the computer? Y/[N]: " restart_computer
if [ $restart_computer == y ]
then
shutdown -r now
fi




