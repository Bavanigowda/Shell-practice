#!/bin/bash

#Date=$date

START_TIME=$(date +%s)

Sleep 10 &

End_TIME=$(date +%s)

TOTAL_TIME=$($END_TIME-$START-TIME)

echo "Script executed in: $Total_TIME seconds"




