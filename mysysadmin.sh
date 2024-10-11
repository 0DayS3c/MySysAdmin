#!/bin/bash
#Backup script by piyusha akash for linux
#All copyrights - Piyusha Akash (2024)
#https://github.com/0DayS3c
#https://linkedin.com/in/piyushaakash
#https://x.om/0DayS3c
#Note: First read the manual or readme.md file befor use this.
#Note: Some functions need sudo (root) permissions. Run this with sudo (root)  permissions, you can avoid all the problems. if you are run this without root permissions, Don't care this automatically suggest which functions need root permissions.

echo
user=$(whoami)
me=$(whoami)

if [ $me == root ]; then

if [ -x /usr/bin/figlet ]; then
echo
else
echo "Figlet not installed. Now installing...."
sudo apt install figlet
continue
fi

cat << "EOF"
                .--.
               |o_o |
               |:_/ |
              //   \ \
             (|     | )
            /'\_   _/`\
            \___)=(___/
         =======================
   Welcome! Type 'help' for commands.
         =======================

EOF

echo
sleep 2
echo 
echo "#: Note: Root (sudo) permissions required."
echo "#: Note: All copyrights deserve to Piyusha Akash (2024)."
echo "#: Note: Case sensitive (Please check your spellings if it is correct)."
while true; do
echo
read -p "(MySysAdmin) > " option

#tool command

#help
if [ $option == "help" ] || [ $option == "HELP" ]; then
echo
echo "#: Here the help menu"
echo
echo "> help		|	Print this page.
> clear		|	Clear the terminal.
> exit		|	Exit from tool.
> banner	|	Print banner.
> chekdir	|	Check directory(s).
> checkfile	|	Check file(s).
> backup	| 	Backup file(s).
> sysinfo	|	See system informations.
> info		|	Tool informations.
> man		|	Manual of tool."
fi

#check directory
if [ $option == "checkdir" ] || [ $option == "CHECKDIR" ]; then
echo
echo "User: $user"
echo "Checking directories in this computer:"
read -p "Enter directory name : " dir_name
echo "Finding directories named $dir_name"
echo
echo "#: NOTE: This may can take few minutes."
echo
printf "\e[1;32m#: Paths:\e[0m\n"
find / -type d -name "$dir_name" 2>/dev/null
fi

#check files
if [ $option == "checkfile" ] || [ $option == "CHECKFILE" ]; then
echo
echo "User: $user"
echo "Checking files in this computer:"
read -p "Enter file name : " file_name
echo "Finding files named $file_name"
echo
echo "#: NOTE: This may can take few minutes."
echo
printf "\e[1;32m#: Paths:\e[0m\n"
find / -type f -name "$file_name" 2>/dev/null
fi

#sysinfo
if [ $option == "sysinfo" ]; then
#user
echo -e '\033[0;31m' "> CURRENT USER :"
echo -e '\033[0;37m' "$(whoami)"
echo 

#date and time
echo -e '\033[0;31m' "> DATE & TIME :"
echo -e '\033[0;37m' "$(date)"
echo 

#system uptime
echo -e '\033[0;31m' "> SYSTEM UPTIME :"
echo -e '\033[0;37m' "$(uptime)"
echo 

#curent directory
echo -e '\033[0;31m' "> CURRENT DIRECTORY :"
echo -e '\033[0;37m' "$(pwd)"
echo 

#files in current dirrectory
echo -e '\033[0;31m' "> FILES IN THIS DIRECTORY :"
echo -e '\033[0;36m' "$(dir)"
echo 

#Installed Packages
echo -e '\033[0;31m' "> INSTALLED PACKAGES :"
echo -e '\033[0;37m' "$(dpkg --get-selections)"
echo 

#sys info 01
echo -e '\033[0;31m' "> SYSTEM INFORMTIONS :"
echo -e '\033[0;37m' "$(grep VERSION /etc/os-release)"
echo
echo "$(uname -a)"
echo

#sys info 02
echo -e '\033[0;31m' "> ADVANCE SYSTEM INFORMATIONS :"
echo -e '\033[0;37m' "$(cat /etc/os-release)"
echo 

#running process
echo -e '\033[0;31m' "> RUNNING PROCESSES :"
echo -e '\033[0;37m' "$(ps aux --sort=-%mem | head -n 11)"
echo 

#Top 10 CPU-consuming processes
echo -e '\033[0;31m' "> TOP 10 CPU-CONSUMING PROCESSES :"
echo -e '\033[0;37m' "$(ps aux --sort=-%mem | head -n 11)"
echo 

#Network informations
echo -e '\033[0;31m' "> NETWORK INFORMATIONS :"
echo -e '\033[0;37m' "$(ifconfig)"
echo ""
echo "$(ip address)"
echo 

#Storage usage
echo -e '\033[1;33m' "> STORAGE USAGE INFORMATIONS :"
echo 

#disk usage
echo -e '\033[0;31m' "> DISK USAGE :"
echo -e '\033[0;37m' "$(df -h)"
echo 

#partition table
echo -e '\033[0;31m' "> PARTITION TABLE :"
echo -e '\033[0;37m' "$(sudo fdisk -l)"
echo 

#disk i/o statics
echo -e '\033[0;31m' "> DISK I/O STATICS :"
echo -e '\033[0;37m' "$(iostat)"
echo 

#detailed disk informations
echo -e '\033[0;31m' "> DETAILED DISK INFORMATIONS :"
echo -e '\033[0;37m' "$(hdparm -I /dev/sda)"
echo 

#hardware informations
echo -e '\033[1;33m' "> HARDWARE INFORMATIONS :"
echo

#cpu info
echo -e '\033[0;31m' "> CPU INFORMATIONS :"
echo -e '\033[0;37m' "$(lscpu)"
echo 

#memory info
echo -e '\033[0;31m' "> MEMORY (RAM) INFORMATIONS :"
echo -e '\033[0;37m' "$(sudo dmidecode --type 17)"
echo 
echo "$(free -h)"
echo

#pci devices
echo -e '\033[0;31m' "> PCI DEVICES :"
echo -e '\033[0;37m' "$(lspci)"
echo 

#block devices
echo -e '\033[0;31m' "> BLOCK DEVICES :"
echo -e '\033[0;37m' "$(lsblk)"
echo 

#usb devices
echo -e '\033[0;31m' "> USB DEVICES:"
echo -e '\033[0;37m' "$(lsusb)"
echo 

#Service Status
echo -e '\033[1;33m' "> SERVICE STATUS :"
echo

#list of all services
echo -e '\033[0;31m' "> LIST OF ALL SERVICES :"
echo -e '\033[0;37m' "$(systemctl list-units --type=service)"
echo 

#list of active services
echo -e '\033[0;31m' "> LIST OF ACTIVE SERVICES :"
echo -e '\033[0;37m' "$(systemctl list-units --type=service --state=active)"
echo
continue
fi

if [ $option == "info" ]; then
echo
echo "##: Welcome! Tool informations here :##

#: MySysAdmin is system administrative tool for Linux systems Created by Piyusha Akash.
#: You can use this also for manage your files and backup your files. also can use for search files.
#: Already tested in debian based linux systems such as Kali / Parrot and Ubuntu.
#: All the copyrights deserve to Piyusha Akash (2024)

##: Contact me on :##

#: Github 	- https://github.com/0DayS3c
#: LinkedIn	- https://linkedin.com/in/piyushaakash
#: Twitter(X) 	- https://x.com/0DayS3c"
continue
fi

#banner
if [ $option == "banner" ]; then
figlet MySysAdmin
continue
fi

if [ $option == "backup" ]; then
#check backup directory is available or not
echo
read -p "Enter directory path you need to backup : " SOURCE_DIR
if [ -d "$SOURCE_DIR" ]; then
echo "$SOURCE_DIR is Available (No errors: $?)"
else
echo "$SOURCE_DIR is Not available (Error: $?)"
exit
fi

#destination directory
echo
read -p "Enter directory path you need to save your backup : " BACKUP_DIR
echo "$BACKUP_DIR is Available (No errors: $?)"

#Create the backup filename with current date and time
BACKUP_NAME=$(basename "$SOURCE_DIR")_backup_$(date +%Y%m%d%H%M).tar.gz

#Create the backup using tar
tar -czf "$BACKUP_DIR/$BACKUP_NAME" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"
echo "#: NOTE: This may can take few minutes."

#Check if the backup was successful
echo
if [ $? -eq 0 ]; then
echo "Backup was successful (No errors: $?): $BACKUP_DIR/$BACKUP_NAME"
else
echo "Backup failed! (Error: $?)"
exit
fi
fi

#man
if [ $option == "man" ]; then
echo
echo "##: Here the Manual of MySysAdmin :##"
echo
echo "#: NOTE: Short version of manual is named as a help. if you need to read it, type help and enter."
echo "#: NOTE: In help section you can only see commands. In manual section you can see all the informations about commands."
echo
echo "##: Help menu :##"
echo
echo "> help		|	Print this page.
> clear		|	Clear the terminal.
> exit		|	Exit from tool.
> banner	|	Print banner.
> chekdir	|	Check directory(s).
> checkfile	|	Check file(s).
> backup	| 	Backup file(s).
> sysinfo	|	See system informations.
> info		|	Tool informations.
> man		|	Manual of tool." 
echo

echo "##: Manual :##"
echo
#command explaination.
echo "(help)		-	Print help page. Only can see commands and descriptions."
echo "(clear)		-	Clear the terminal. But don't exit from tool."
echo "(exit)		-	Exit from the tool"
echo "(banner)	-	Print banner of tool. (Just for fun)."
echo "(checkdir)	-	Check directories and print all the real paths. [Very helpful]."
echo "(checkfile)	-	Check files and print all the real paths. [Very helpful]."
echo "(backup)	-	Backup your files. [Enter paths and hit enter which directories do 
			you need to backup | You can backup full directories.]"
echo "(sysinfo)	-	See system informations in one command."
echo "(info)		-	See tool informations."
echo "(man)		-	Print this page."
continue
fi

#linux commands

if [ -z "$option" ]; then
echo
continue
fi

#clear
if [ $option == "clear" ]; then
eval "$option"
cat << "EOF"
                .--.
               |o_o |
               |:_/ |
              //   \ \
             (|     | )
            /'\_   _/`\
            \___)=(___/
         =======================
   Welcome! Type 'help' for commands.
         =======================

EOF
continue
fi

#exit
if [ $option == "exit" ]; then
echo "Exiting..."
sleep 2
echo "Thank you! and check your files. Have a nice day!"
sleep 1
echo "Exited"
eval "$option"
continue
fi
done

else
echo "Sudo permissions required. [ERROR $?]"
echo "Exited."
exit
fi
