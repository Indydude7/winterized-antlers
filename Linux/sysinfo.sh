#!/bin/bash

echo -e "Todays date is: $(date) \n"

echo -e "Uname Info: $(uname -a) \n"

echo -e "IP info: $(ip addr | head -9 | tail -1) \n"

echo -e "My hostname is: $(hostname) \n"

#mkdir ~/research

sudo find /home -type f -perm 777 >> ~/research/sysinfo.txt

sudo ps aux --sort -%mem | awk {'print $1, $2, $3, $4, $11'} >> ~/research/sysinfo.txt

#creates research directory
if [ -d ~/research ]
then
 echo "research exists"
else
mkdir ~/research
fi

#removes sysinfo file
if [ ! -f ~/research/sysinfo.txt ]
then
 echo "no sysinfo bro"
else
 rm ~/research/sysinfo.txt
fi

#prints etc paths
etcpath=('/etc/shadow' '/etc/passwd')

for path in ${etcpath[@]}
do
  ls -l $path
done

