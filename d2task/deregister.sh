#! /bin/bash
echo "$1" >> log.txt
latest=$(tail -n 1 domain_pref.txt)
usname=$(whoami)
rolly=$(<"/home/core/mentees/$(whoami)/rollno.txt")
IFS=- read a b c <<< $latest
case $1 in
$a)
echo "$b-$c-" > domain_pref.txt 
rm -r /home/core/mentees/$(whoami)/$1
echo "$usname $rolly $b --> $c -->  " >> /home/core/mentees_domain.txt
;;
$b)
echo "$a-$c-" > domain_pref.txt
rm -r /home/core/mentees/$(whoami)/$1
echo "$usname $rolly $a --> $c -->  " >> /home/core/mentees_domain.txt
;;
$c)
echo "$a-$b-" > domain_pref.txt
rm -r /home/core/mentees/$(whoami)/$1
echo "$usname $rolly $a --> $b -->  " >> /home/core/mentees_domain.txt
;;
esac
