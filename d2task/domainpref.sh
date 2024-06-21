#! /bin/bash
usname=$(whoami)
rolly=$(<"/home/core/mentees/$(whoami)/rollno.txt")
rm domain_pref.txt
echo "$1-$2-$3" > domain_pref.txt
echo "$usname $rolly $1 --> $2 --> $3 " >> /home/core/mentees_domain.txt
mkdir /home/core/mentees/$(whoami)/$1
mkdir /home/core/mentees/$(whoami)/$2
mkdir /home/core/mentees/$(whoami)/$3



