#!/bin/bash

clear

read -p "Enter Website: " website
read -p "File Name: " webtestfile
echo "File Name: " $webtestfile.txt >> $webtestfile.txt
script_path="$(realpath "$0")"
echo "Current script path: $script_path" >> $webtestfile.txt


echo -e "\n\n" >> $webtestfile.txt
echo "Test Date & Time: " $(date) "-----"$website"------" >>$webtestfile.txt
echo "-------------------------------------" >> $webtestfile.txt
curl -I $website >> $webtestfile.txt
echo "-------------------------------------" >> $webtestfile.txt
echo "Test Date & Time: " $(date) >> $webtestfile.txt

curl -s -w 'Testing Website Response Time for :%{url_effective}\n\nLookup 
Time:\t%{time_namelookup}\nConnect Time:\t%{time_connect}\nAppCon 
Time:\t%{time_appconnect}\nRedirect Time:\t%{time_redirect}\nPre-transfer 
Time:\t%{time_pretransfer}\nStart-transfer Time:\t%{time_starttransfer}\n\nTotal 
Time:\t%{time_total}\n' -o /dev/null $website >> $webtestfile.txt

echo "---------------------------------------------" >> $webtestfile.txt
echo "---------------------------------------------" >> $webtestfile.txt
echo -e "\n" >> $webtestfile.txt
clear
nano $webtestfile.txt

