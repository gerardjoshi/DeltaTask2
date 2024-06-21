#! /bin/bash
while read -r line; do
    read -r v1 v2 <<< $line
    sed -i "/^echo/d" /home/core/mentees/$v1/.bashrc
    echo "echo $(<"$1")" >> /home/core/mentees/$v1/.bashrc
    echo "$1" >> /home/core/mentees/$v1/quiz_answers/log.txt
    
done < allocated_mentees.txt
