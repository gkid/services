#!/bin/bash

if [ $((GO_STAGE_COUNTER % 2)) -eq 0 ]
then
   echo "$GO_STAGE_COUNTER is even"
else
   echo "$GO_STAGE_COUNTER is odd - failing"
   exit 1 
fi

echo "----------------------------"
echo "done"
