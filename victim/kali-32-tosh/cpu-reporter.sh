#!/bin/bash

#show cpu usage before pings
mpstat >> cpu-stats.xlsx

#show cpu usage while getting pinged
mpstat >> cpu-stats.xlsx

#show cpu usange after getting pinged
mpstat >> cpu-stats.xlsx

#add a line
echo "\n" >> cpu-stats.xlsx

#add to git
git add .
git commit -m "adding cpu stats to excel"
git push origin master
