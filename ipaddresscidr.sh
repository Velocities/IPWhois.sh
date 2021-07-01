#!/bin/bash

LINECOUNT=1
MAXLINECOUNT=`wc -l /list.txt | awk '{print $1}'`
IP=`head -n $LINECOUNT /list.txt | tail -n 1`
while [ $LINECOUNT -le $MAXLINECOUNT ]
do
	whois $IP | grep -i cidr
	LINECOUNT=$(($LINECOUNT + 1))
	IP=`head -n $LINECOUNT /list.txt | tail -n 1`
done
