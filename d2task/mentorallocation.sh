#! /bin/bash
while read -r line; do
    read -r v1 v2 <<< $line
    p1=0
    p2=0
    p3=0
    while read -r lin; do
        read -r var1 var2 var3 <<< $lin
        tick=$(<"/home/core/mentees/$v1/domain_pref.txt")
        IFS=- read -r vu1 vu2 vu3 <<<$tick
        if [[ $p1 -eq 0 ]]
        then
           if [[ $vu1 == $var2 ]]
           then
               read -r par1 par2 <<< $(wc -l /home/core/mentors/$var2/$var1/allocated_mentees.txt)
               if [[ $par1 -le $var3 ]]
               then
                   echo "$v1 $v2" >> /home/core/mentors/$var2/$var1/allocated_mentees.txt
                   echo "$var1 $var2" >> /home/core/mentees/$v1/mentor.txt
                   p1=1
                   fi
                   fi
        elif [[ $p2 -eq 0 ]]
        then
           if [[ $vu2 == $var2 ]]
           then
               read -r par1 par2 <<< $(wc -l /home/core/mentors/$var2/$var1/allocated_mentees.txt)
               if [[ $par1 -le $var3 ]]
               then
                   echo "$v1 $v2" >> /home/core/mentors/$var2/$var1/allocated_mentees.txt
                   echo "$var1 $var2" >> /home/core/mentees/$v1/mentor.txt
                   p2=1
                   fi
                   fi
        elif [[ $p3 -eq 0 ]]
        then
           if [[ $vu3 == $var2 ]]
           then
               read -r par1 par2 <<< $(wc -l /home/core/mentors/$var2/$var1/allocated_mentees.txt)
               if [[ $par1 -le $var3 ]]
               then
                   echo "$v1 $v2" >> /home/core/mentors/$var2/$var1/allocated_mentees.txt
                   echo "$var1 $var2" >> /home/core/mentees/$v1/mentor.txt #this is useful for the cronjob
                   p3=1
                   fi
                   fi
          fi
    done < mentorDetails.txt
done < menteeDetails.txt
