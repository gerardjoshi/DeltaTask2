#! /bin/bash
while read -r line; do
    read -r v1 v2 <<< $line
    sudo rm /home/core/mentees/$v1/domainpref.sh 2>/dev/null
    sudo cp domainpref.sh /home/core/mentees/$v1
    sudo chmod +x /home/core/mentees/$v1/domainpref.sh
    sudo echo 'alias domainpref="./domainpref.sh"'>> /home/core/mentees/$v1/.bashrc    #for alias domainPref for mentees
done < menteeDetails.txt
sudo rm /home/core/mentorallocation.sh 2>/dev/null
sudo rm /home/core/mentorDetails.txt 2>/dev/null
sudo rm /home/core/menteeDetails.txt 2>/dev/null
sudo cp mentorallocation.sh /home/core
sudo cp mentorDetails.txt /home/core
sudo cp menteeDetails.txt /home/core
sudo chmod +x /home/core/mentorallocation.sh
sudo touch /home/core/.bashrc
sudo echo 'alias mentorallocation="./mentorallocation.sh"' >> /home/core/.bashrc   #for mentorallocation alias for core
while read -r line; do
    read -r v1 v2 <<< $line
    sudo rm /home/core/mentees/$v1/submittask.sh 2>/dev/null
    sudo cp submittask.sh /home/core/mentees/$v1
    sudo chmod +x /home/core/mentees/$v1/submittask.sh
    sudo echo 'alias submittask="./submittask.sh"'>> /home/core/mentees/$v1/.bashrc #for submittask for mentees
done < menteeDetails.txt
while read -r line; do
    read -r v1 v2 v3 <<< $line
    sudo rm /home/core/mentors/$v2/$v1/submittask.sh
    sudo cp submittask.sh /home/core/mentors/$v2/$v1
    sudo chmod +x /home/core/mentors/$v2/$v1/submittask.sh
    sudo echo 'alias submittask="./submittask.sh"'>> /home/core/mentors/$v2/$v1/.bashrc #for submittask for mentors
done < mentorDetails.txt
sudo rm /home/core/displaystatus.sh 2>/dev/null
sudo rm /home/core/mentorDetails.txt 2>/dev/null
sudo rm /home/core/menteeDetails.txt 2>/dev/null
sudo cp displaystatus.sh /home/core
sudo cp mentorDetails.txt /home/core
sudo cp menteeDetails.txt /home/core
sudo chmod +x /home/core/displaystatus.sh
sudo echo 'alias displaystatus="./displaystatus.sh 2>/dev/null"' >> /home/core/.bashrc #for display status alias run by core
while read -r line; do
    read -r v1 v2 <<< $line
    sudo rm /home/core/mentees/$v1/deregister.sh 2>/dev/null
    sudo cp deregister.sh /home/core/mentees/$v1
    sudo chmod +x /home/core/mentees/$v1/deregister.sh
    sudo echo 'alias deregister="./deregister.sh"'>> /home/core/mentees/$v1/.bashrc #for deregister alias by the mentee
done < menteeDetails.txt
while read -r line; do
    read -r v1 v2 v3 <<< $line
    sudo rm /home/core/mentors/$v2/$v1/setquiz.sh 2>/dev/null
    sudo cp setquiz.sh /home/core/mentors/$v2/$v1
    sudo chmod +x /home/core/mentors/$v2/$v1/setquiz.sh
    sudo echo 'alias setquiz="./setquiz.sh"'>> /home/core/mentors/$v2/$v1/.bashrc #for the setquiz alias by the mentor
done < mentorDetails.txt
sudo rm /home/core/crong.sh 2>/dev/null
sudo rm /home/core/RunThisAtCore.sh  2>/dev/null
sudo cp crong.sh /home/core
sudo cp RunThisAtCore.sh /home/core
sudo chmod +x /home/core/crong.sh
sudo chmod +x /home/core/RunThisAtCore.sh
