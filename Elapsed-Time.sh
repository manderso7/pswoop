#!/bin/bash
#how long does aide take to run on this box
START_TIME=$SECONDS
nice -19 /usr/bin/aide -C
ELAPSED_TIME=$(($SECONDS - $START_TIME))
echo "$(($ELAPSED_TIME/60)) min $(($ELAPSED_TIME%60)) sec"
