#! /bin/bash
if id -nG "$(whoami)" | grep -qw "mentees"; then
    echo "$1 $2 $3 $4" >> /home/core/mentees/$(whoami)/task_submitted.txt
    mkdir /home/core/mentees/$(whoami)/$2/$1
    touch /home/core/mentees/$(whoami)/$2/$1/submit.txt
else 
    while read -r line; do
        read -r v1 v2 <<< $line
        categ=$(<"./categ.txt") 
        ln -s /home/core/mentees/$v1/$categ/task1 $(pwd)/submittedTasks/task1/$v1
        ln -s /home/core/mentees/$v1/$categ/task2 $(pwd)/submittedTasks/task2/$v1
        ln -s /home/core/mentees/$v1/$categ/task3 $(pwd)/submittedTasks/task3/$v1
        if [[ -n "$(find /home/core/mentees/$v1/$categ/task1 -mindepth 1 -maxdepth 1)" ]]; then
            echo "$v1 $v2 task 1 completed" >> /home/core/mentees/$v1/task_completed.txt
        elif [[ -n "$(find /home/core/mentees/$v1/$categ/task2 -mindepth 1 -maxdepth 1)" ]]; then
            echo "$v1 $v2 task 2 completed" >> /home/core/mentees/$v1/task_completed.txt
        elif [[ -n "$(find /home/core/mentees/$v1/$categ/task3 -mindepth 1 -maxdepth 1)" ]]; then
            echo "$v1 $v2 task 3 completed" >> /home/core/mentees/$v1/task_completed.txt
        fi
    done < allocated_mentees.txt 
fi
