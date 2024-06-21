#! /bin/bash
./displaystatus.sh
while read -r line; do
    read -r v1 v2 <<< $line
    while read -r lin; do
        read -r domm <<< $lin
        while -r liny; do
            read -r sensei <<< $liny
            if [ -d /home/core/mentors/$domm/$sensei/submittedTasks/task1/$v1 ] ; then
             rm -rf /home/core/mentors/$domm/$sensei/submittedTasks/task1/$v1
            fi
            if [ -d /home/core/mentors/$domm/$sensei/submittedTasks/task2/$v1 ] ; then
             rm -rf /home/core/mentors/$domm/$sensei/submittedTasks/task2/$v1
            fi
            if [ -d /home/core/mentors/$domm/$sensei/submittedTasks/task3/$v1 ] ; then
             rm -rf /home/core/mentors/$domm/$sensei/submittedTasks/task3/$v1
            fi
            sed -i "/$v1 $v2/d" /home/core/mentors/$domm/$sensei/allocated_mentees.txt
        
        done < mentor.txt
    
    done < log.txt                                               #chunk of code used to remove the mentee if dereg from all
    checker=$(<"/home/core/mentees/$v1/domain_pref.txt")         #3 domains
    if [[ $checker == "--" ]]; then
     rm -rf /home/core/mentees/$v1
    fi 
    
done < menteeDetails.txt
