#!/bin/bash

ipAddressRnage="192.168.1.1/24" #ip adress range
echo "before"
result=$(nmap -sn $ipAddressRnage | grep "report for" | awk '{print "Host is up: "$5" ("$6")"}')
echo "after"
echo "$result"
