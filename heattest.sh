#!/bin/bash

#script for quad core Raspberry pi which will test the cpu and show the temps
#sysbench needs to be installed!
#sudo apt-get install sysbench
#go to the folder with the file heattest.sh and start the script:
#bash heattest.sh

#Amanda Kuenzle, 22.07.2019

echo "starting tests..."
echo " "
echo "temperature before testing: "
vcgencmd measure_temp
echo " "
echo "executing test 1..."
time sysbench --test=cpu --cpu-max-prime=5000 --num-threads=4 run >/dev/null 2>&1
echo "...finished test 1"
vcgencmd measure_temp

