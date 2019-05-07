#!/bin/bash
echo "start"
while :
do
    let SLEEPTIME="$RANDOM % 10"
    sleep $SLEEPTIME
    curl server/api/RFID?cardId=$1
done