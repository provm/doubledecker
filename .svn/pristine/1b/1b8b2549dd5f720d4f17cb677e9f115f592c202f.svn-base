#!/bin/bash
ssh 192.168.122.133 /root/ddecker/motivation.sh > out.log 2>&1 &

sleep 30

dx=`cat out.log | grep "done"`
epoch=0
while [ "$dx" = "" ];
do
  c1=`cat /sys/kernel/mm/utmem/0/4/mem_used`
  c2=`cat /sys/kernel/mm/utmem/0/5/mem_used`
#  echo "$epoch $c1"
  echo "$epoch $c1 $c2"
  sleep 5
  epoch=$(($epoch+5)) 
  dx=`cat out.log | grep "done"`
done 
scp 192.168.122.133:ddecker/c*.out .

