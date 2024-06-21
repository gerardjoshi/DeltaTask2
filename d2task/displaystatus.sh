#! /bin/bash
dun=0
tot=0
dun1=0
tot1=0
dun2=0
tot2=0
ndun=0
ndun1=0
ndun2=0

case "$1" in
   
"web")
dun=0
tot=0
dun1=0
tot1=0
dun2=0
tot2=0
ndun=0
ndun1=0
ndun2=0
    while read -r line; do
    read -r v1 v2 <<< $line
    touch /home/core/mentees/$v1/web/lastcheck.txt
    touch /home/core/mentees/$v1/web/lastcheck1.txt
    touch /home/core/mentees/$v1/web/lastcheck2.txt
    lasc=$(<"/home/core/mentees/$v1/web/lastcheck.txt")
    lasc1=$(<"/home/core/mentees/$v1/web/lastcheck1.txt")
    lasc2=$(<"/home/core/mentees/$v1/web/lastcheck2.txt")
    if [[ -n "$(find /home/core/mentees/$v1/web/task1 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  web task1" 
        (( dun+=1 ))
        (( tot+=1 ))
        if [[ $lasc != "done" ]]; then 
        (( ndun+=1 )) 
        echo "done" >> /home/core/mentees/$v1/web/lastcheck.txt
        fi
    else
       
        (( tot+=1 ))
    fi
     if [[ -n "$(find /home/core/mentees/$v1/web/task2 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  web task2" 
        (( dun1+=1 ))
        (( tot1+=1 ))
        if [[ $lasc1 != "done" ]]; then 
        (( ndun1+=1 )) 
        echo "done" >> /home/core/mentees/$v1/web/lastcheck1.txt
        fi
    else
        
        (( tot1+=1 ))
    fi 
    if [[ -n "$(find /home/core/mentees/$v1/web/task3 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  web task3" 
        (( dun2+=1 ))
        (( tot2+=1 ))
        if [[ $lasc2 != "done" ]]; then 
        (( ndun2+=1 )) 
        echo "done" >> /home/core/mentees/$v1/web/lastcheck2.txt
        fi
    else
       
        (( tot2+=1 ))
    fi
    done < menteeDetails.txt
echo "$dun/$tot of the web tasks1 or $(( (dun*100)/tot )) percentage of the web tasks are completed" 
echo "$dun1/$tot2 of the web tasks2 or $(( (dun1*100)/tot1 )) percentage of the web tasks are completed" 
echo "$dun2/$tot2 of the web task3 or $(( (dun2*100)/tot2 )) percentage of the web tasks are completed" 
echo "$ndun no of task1s, $ndun1 no of task2s and $ndun2 no of task3s have been newly completed since last update"
;;
"app")
dun=0
tot=0
dun1=0
tot1=0
dun2=0
tot2=0
ndun=0
ndun1=0
ndun2=0
    while read -r line; do
    read -r v1 v2 <<< $line
    touch /home/core/mentees/$v1/app/lastcheck.txt
    touch /home/core/mentees/$v1/app/lastcheck1.txt
    touch /home/core/mentees/$v1/app/lastcheck2.txt
    lasc=$(<"/home/core/mentees/$v1/app/lastcheck.txt")
    lasc1=$(<"/home/core/mentees/$v1/app/lastcheck1.txt")
    lasc2=$(<"/home/core/mentees/$v1/app/lastcheck2.txt")
    if [[ -n "$(find /home/core/mentees/$v1/app/task1 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  app task1" 
        (( dun+=1 ))
        (( tot+=1 ))
        if [[ $lasc != "done" ]]; then 
        (( ndun+=1 )) 
        echo "done" >> /home/core/mentees/$v1/app/lastcheck.txt
        fi
    else
       
        (( tot+=1 ))
    fi
     if [[ -n "$(find /home/core/mentees/$v1/app/task2 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  app task2" 
        (( dun1+=1 ))
        (( tot1+=1 ))
        if [[ $lasc1 != "done" ]]; then 
        (( ndun1+=1 )) 
        echo "done" >> /home/core/mentees/$v1/app/lastcheck1.txt
        fi
    else
        
        (( tot1+=1 ))
    fi 
    if [[ -n "$(find /home/core/mentees/$v1/app/task3 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  app task3" 
        (( dun2+=1 ))
        (( tot2+=1 ))
        if [[ $lasc2 != "done" ]]; then 
        (( ndun2+=1 )) 
        echo "done" >> /home/core/mentees/$v1/app/lastcheck2.txt
        fi
    else
       
        (( tot2+=1 ))
    fi
    done < menteeDetails.txt
echo "$dun/$tot of the app tasks1 or $(( (dun*100)/tot )) percentage of the app tasks are completed" 
echo "$dun1/$tot2 of the app tasks2 or $(( (dun1*100)/tot1 )) percentage of the app tasks are completed" 
echo "$dun2/$tot2 of the app task3 or $(( (dun2*100)/tot2 )) percentage of the app tasks are completed" 
echo "$ndun no of task1s, $ndun1 no of task2s and $ndun2 no of task3s have been newly completed since last update"
;;
"sysad")
dun=0
tot=0
dun1=0
tot1=0
dun2=0
tot2=0
ndun=0
ndun1=0
ndun2=0
    while read -r line; do
    read -r v1 v2 <<< $line
    touch /home/core/mentees/$v1/sysad/lastcheck.txt
    touch /home/core/mentees/$v1/sysad/lastcheck1.txt
    touch /home/core/mentees/$v1/sysad/lastcheck2.txt
    lasc=$(<"/home/core/mentees/$v1/sysad/lastcheck.txt")
    lasc1=$(<"/home/core/mentees/$v1/sysad/lastcheck1.txt")
    lasc2=$(<"/home/core/mentees/$v1/sysad/lastcheck2.txt")
    if [[ -n "$(find /home/core/mentees/$v1/sysad/task1 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  sysad task1" 
        (( dun+=1 ))
        (( tot+=1 ))
        if [[ $lasc != "done" ]]; then 
        (( ndun+=1 )) 
        echo "done" >> /home/core/mentees/$v1/sysad/lastcheck.txt
        fi
    else
       
        (( tot+=1 ))
    fi
     if [[ -n "$(find /home/core/mentees/$v1/sysad/task2 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  sysad task2" 
        (( dun1+=1 ))
        (( tot1+=1 ))
        if [[ $lasc1 != "done" ]]; then 
        (( ndun1+=1 )) 
        echo "done" >> /home/core/mentees/$v1/sysad/lastcheck1.txt
        fi
    else
        
        (( tot1+=1 ))
    fi 
    if [[ -n "$(find /home/core/mentees/$v1/sysad/task3 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  sysad task3" 
        (( dun2+=1 ))
        (( tot2+=1 ))
        if [[ $lasc2 != "done" ]]; then 
        (( ndun2+=1 )) 
        echo "done" >> /home/core/mentees/$v1/sysad/lastcheck2.txt
        fi
    else
       
        (( tot2+=1 ))
    fi
    done < menteeDetails.txt
echo "$dun/$tot of the sysad tasks1 or $(( (dun*100)/tot )) percentage of the sysad tasks are completed" 
echo "$dun1/$tot2 of the sysad tasks2 or $(( (dun1*100)/tot1 )) percentage of the sysad tasks are completed" 
echo "$dun2/$tot2 of the sysad task3 or $(( (dun2*100)/tot2 )) percentage of the sysad tasks are completed" 
echo "$ndun no of task1s, $ndun1 no of task2s and $ndun2 no of task3s have been newly completed since last update"
;;
*)
dun=0
tot=0
dun1=0
tot1=0
dun2=0
tot2=0
ndun=0
ndun1=0
ndun2=0
    while read -r line; do
    read -r v1 v2 <<< $line
    touch /home/core/mentees/$v1/web/lastcheck.txt
    touch /home/core/mentees/$v1/web/lastcheck1.txt
    touch /home/core/mentees/$v1/web/lastcheck2.txt
    wlasc=$(<"/home/core/mentees/$v1/web/lastcheck.txt")
    wlasc1=$(<"/home/core/mentees/$v1/web/lastcheck1.txt")
    wlasc2=$(<"/home/core/mentees/$v1/web/lastcheck2.txt")
    touch /home/core/mentees/$v1/sysad/lastcheck.txt
    touch /home/core/mentees/$v1/sysad/lastcheck1.txt
    touch /home/core/mentees/$v1/sysad/lastcheck2.txt
    slasc=$(<"/home/core/mentees/$v1/sysad/lastcheck.txt")
    slasc1=$(<"/home/core/mentees/$v1/sysad/lastcheck1.txt")
    slasc2=$(<"/home/core/mentees/$v1/sysad/lastcheck2.txt")
    touch /home/core/mentees/$v1/app/lastcheck.txt
    touch /home/core/mentees/$v1/app/lastcheck1.txt
    touch /home/core/mentees/$v1/app/lastcheck2.txt
    alasc=$(<"/home/core/mentees/$v1/app/lastcheck.txt")
    alasc1=$(<"/home/core/mentees/$v1/app/lastcheck1.txt")
    alasc2=$(<"/home/core/mentees/$v1/app/lastcheck2.txt")
    if [[ -n "$(find /home/core/mentees/$v1/web/task1 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  web task1" 
        (( dun+=1 ))
        (( tot+=1 ))
         if [[ $wlasc != "done" ]]; then 
        (( ndun+=1 )) 
        echo "done" >> /home/core/mentees/$v1/web/lastcheck.txt
        fi
    else
       
        (( tot+=1 ))
    fi
     if [[ -n "$(find /home/core/mentees/$v1/web/task2 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  web task2" 
        (( dun1+=1 ))
        (( tot1+=1 ))
         if [[ $wlasc1 != "done" ]]; then 
        (( ndun1+=1 )) 
        echo "done" >> /home/core/mentees/$v1/web/lastcheck1.txt
        fi
    else
      
        (( tot1+=1 ))
    fi 
    if [[ -n "$(find /home/core/mentees/$v1/web/task3 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  web task3" 
        (( dun2+=1 ))
        (( tot2+=1 ))
         if [[ $wlasc2 != "done" ]]; then 
        (( ndun2+=1 )) 
        echo "done" >> /home/core/mentees/$v1/web/lastcheck2.txt
        fi
    else
       
        (( tot2+=1 ))
    fi
     if [[ -n "$(find /home/core/mentees/$v1/app/task1 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  app task1" 
        (( dun+=1 ))
        (( tot+=1 ))
        if [[ $alasc != "done" ]]; then 
        (( ndun+=1 )) 
        echo "done" >> /home/core/mentees/$v1/app/lastcheck.txt
        fi
    else
      
        (( tot+=1 ))
    fi
     if [[ -n "$(find /home/core/mentees/$v1/app/task2 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  app task2" 
        (( dun1+=1 ))
        (( tot1+=1 ))
        if [[ $alasc1 != "done" ]]; then 
        (( ndun1+=1 )) 
        echo "done" >> /home/core/mentees/$v1/app/lastcheck1.txt
        fi
    else
       
        (( tot1+=1 ))
    fi
     if [[ -n "$(find /home/core/mentees/$v1/app/task3 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  app task3" 
        (( dun2+=1 ))
        (( tot2+=1 ))
        if [[ $alasc2 != "done" ]]; then 
        (( ndun2+=1 )) 
        echo "done" >> /home/core/mentees/$v1/app/lastcheck2.txt
        fi
    else
        
        (( tot2+=1 ))
    fi
     if [[ -n "$(find /home/core/mentees/$v1/sysad/task1 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  sysad task1" 
        (( dun+=1 ))
        (( tot+=1 ))
         if [[ $slasc != "done" ]]; then 
        (( ndun+=1 )) 
        echo "done" >> /home/core/mentees/$v1/sysad/lastcheck.txt
        fi
    else
        
        (( tot+=1 ))
    fi
     if [[ -n "$(find /home/core/mentees/$v1/sysad/task2 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  sysad task2" 
        (( dun1+=1 ))
        (( tot1+=1 ))
         if [[ $slasc1 != "done" ]]; then 
        (( ndun1+=1 )) 
        echo "done" >> /home/core/mentees/$v1/sysad/lastcheck1.txt
        fi
    else
       
        (( tot1+=1 ))
    fi
     if [[ -n "$(find /home/core/mentees/$v1/sysad/task3 -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
        echo "$v1 completed  sysad task3" 
        (( dun2+=1 ))
        (( tot2+=1 ))
         if [[ $slasc2 != "done" ]]; then 
        (( ndun2+=1 )) 
        echo "done" >> /home/core/mentees/$v1/sysad/lastcheck2.txt
        fi
    else
       
        (( tot2+=1 ))
    fi
done < menteeDetails.txt
echo "$dun/$tot of the tasks1 or $(( (dun*100)/tot )) percentage of the tasks have been finished"
echo "$dun1/$tot1 of the tasks2 or $(( (dun1*100)/tot1 )) percentage of the tasks have been finished"
echo "$dun2/$tot2 of the tasks3 or $(( (dun2*100)/tot2 )) percentage of the tasks have been finished"
echo "$ndun of task1s, $ndun1 of task2s and $ndun2 of task3s have been completed after the last update."
;;
esac


 
