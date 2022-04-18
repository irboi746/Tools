#!/bin/bash
# simple bash script to fuzz HTTP header
# https://book.hacktricks.xyz/pentesting/pentesting-web/403-and-401-bypasses

read -p 'Header Fuzz list: ' list
read -p 'ouput file: ' outfile
read -p 'webpage to curl: ' webpage

#read list.txt 
mapfile -t array < "$list"

#curl loop
for i in "${array[@]}"
do
   echo "$i" >> "$outfile"
   curl -H "$i" "$webpage" | grep forbidden >> "$outfile"
   echo " " >> "$outfile"
done
