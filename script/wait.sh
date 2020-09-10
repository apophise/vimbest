#!/bin/bash

echo "wait $1"

pid_list=$(ps ux --sort start | grep $1)

#echo $pid_list

pid=$(echo $pid_list | sed -n "1p" | awk '{print $2}')

echo $pid

while kill -0 "$pid" > /dev/null 2>&1
do
  sleep 1
done
