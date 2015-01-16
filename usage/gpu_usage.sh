#!/bin/sh


while true
do
    for i in `seq 0 3`
    do
	cat /proc/resch/vd${i}/compute_bandwidth_used >> vd${i}_compute.log
	printf "\n" >> vd${i}_compute.log

    done
    perl -MTime::HiRes -e 'Time::HiRes::usleep 100000'  
done
