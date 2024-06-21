#! /bin/bash
sudo touch .bashrc
sudo useradd -m -s /bin/bash core
sudo echo "core:admin" | sudo chpasswd
sudo groupadd mentors
sudo groupadd mentees
sudo mkdir /home/core/mentees
sudo mkdir /home/core/mentors
sudo touch -f /home/core/cronlogs.txt
sudo mkdir /home/core/mentors/app /home/core/mentors/web /home/core/mentors/sysad
sudo touch /home/core/mentees_domain.txt
sudo chmod 720 /home/core/mentees_domain.txt
sudo echo "Olivia 10222074
Liam 10232199
Emma 10242008
Noah 10252081
Ava 10262046
Elijah 10272133
Sophia 10282236
William 10292048
Mia 10302059
James 10312107
Charlotte 10322095
Benjamin 10332104
Isabella 10342085
Lucas 10352071
Amelia 10362023
Oliver 10372178
Harper 10382018
Henry 10392049
Evelyn 10402017
Alexander 10412105
Abigail 10422088
Michael 10432059
Elizabeth 10442021
Ethan 10452103
Emily 10462037
Daniel 10472184
Sofia 10482011
Matthew 10492003
Avery 10502016
Madison 10512055
Jackson 10522149
Scarlett 10532096
Aiden 10542038
Grace 10552177
Samuel 10562063
Victoria 10572183
David 10582075
Lily 10592093
Carter 10602011
Chloe 10612199
Gabriel 10622166
Zoey 10632055
Christopher 10642046
Nora 10652184
Andrew 10662084
Layla 10672101
Joshua 10682142
Riley 10692054
Ella 10702027
Christopher 10712174
Hannah 10722058
Nathan 10732073
Addison 10742183
Christian 10752026
Aubrey 10762126
Joshua 10772125
Eleanor 10782137
Jonathan 10792161
Scarlett 10802088
Lincoln 10812039
Ellie 10822199
Jaxon 10832177
Maya 10842039
Landon 10852174
Mia 10862003
Hazel 10872182
Dylan 10882058
Mila 10892192
Caleb 10902065
Stella 10912126
Grayson 10922172
Adalynn 10932159
Caleb 10942121
Avery 10952176
Luke 10962189
Penelope 10972028
Levi 10982173
Luna 10992159
Julian 101002081
Leah 101012065
Ryan 101022006
Clara 101032077
Evan 101042083
Vivian 101052008
Nolan 101062004
Sarah 101072009
Ian 101082085
Audrey 101092028
Cooper 101102082
Lucy 101112057
Mateo 101122054
Paisley 101132006
Hudson 101142017
Ellie 101152009
Caroline 101162005
Samuel 101172001
Sydney 101182004
Tyler 101192008
Eva 101202006
Colton 101212004" > menteeDetails.txt
while read -r line; do
    read -r v1 v2 <<< $line
    sudo mkdir /home/core/mentees/$v1
    sudo useradd -d /home/core/mentees/$v1 $v1 
    sudo mkdir /home/core/mentees/$v1/quiz_answers
    sudo touch /home/core/mentees/$v1/quiz_answers/log.txt
    echo "$v1:$v2" | sudo chpasswd
    sudo touch /home/core/mentees/$v1/domain_pref.txt
    sudo touch /home/core/mentees/$v1/task_completed.txt
    sudo touch /home/core/mentees/$v1/task_submitted.txt
    sudo echo "$v2" > /home/core/mentees/$v1/rollno.txt
    sudo usermod -a -G core $v1
    sudo usermod -a -G mentees $v1
    sudo chmod -R 700 /home/core/mentees/$v1
    sudo setfacl -R -m u:$v1:rwx /home/core/mentees/$v1
    sudo setfacl -R -m g:$v1:rwx /home/core/mentees/$v1
    sudo setfacl -R -m u:$v1:w /home/core/mentees_domain.txt
done < menteeDetails.txt
sudo echo "vishrudh web 17
purav sysad 10
avyyukt sysad 9
jagan sysad 21
mukund sysad 8
sriman web 12
guru sysad 15
shubham web 11
suhail web 19
abhinav web 23
ram app 22
subasri web 7
akhshay web 25
kavin web 20
khadeer app 14
ashwani sysad 16
selva app 13
ashwin app 18
ansh app 24
ameya sysad 6
jey sysad 7
nitish app 8
akshay web 9
akshayv app 10
kavina web 11
dhasarathan web 12
vignesh web 13
mani web 14
arjun web 15
karthik web 16
raghav web 17
pawan app 18
nithin app 19
sarvesh app 20
devesh web 21
bhoopesh web 22
aadit sysad 23" > mentorDetails.txt
while read -r line; do
    read -r v1 v2 v3 <<< $line
    sudo mkdir /home/core/mentors/$v2/$v1
    sudo useradd -d /home/core/mentors/$v2/$v1 $v1 
    echo "$v1:$v3" | sudo chpasswd
    sudo usermod -a -G mentors $v1
    sudo touch /home/core/mentors/$v2/$v1/allocated_mentees.txt
    sudo touch /home/core/mentors/$v2/$v1/categ.txt
    sudo echo "$v2">>/home/core/mentors/$v2/$v1/categ.txt
    sudo mkdir /home/core/mentors/$v2/$v1/submittedTasks
    sudo mkdir /home/core/mentors/$v2/$v1/submittedTasks/task1
    sudo mkdir /home/core/mentors/$v2/$v1/submittedTasks/task2
    sudo mkdir /home/core/mentors/$v2/$v1/submittedTasks/task3
    sudo chmod -R 700 /home/core/mentors/$v2/$v1
    sudo setfacl -R -m u:$v1:rwx /home/core/mentors/$v2/$v1
    sudo setfacl -R -m u:$v1:rwx /home/core/mentees
done < mentorDetails.txt
sudo setfacl -R -m u:core:rwx /home/core
sudo setfacl -R -m u:core:rwx /home/core/mentees
sudo setfacl -R -m g:mentors:rwx /home/core/mentees
sudo setfacl -R -m u:core:rwx /home/core/mentors



