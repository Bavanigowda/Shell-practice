#!/bin/bash

Date =$date

echo "timestamp executed =$date"

Start_Time=$(date +%s)

Sleep 10 &

End_time=$(date +%s)

Total_Time=$($end_time-$start-time)

echo "Script executed in: $Total_Time seconds"




