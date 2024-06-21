# Delta SysAd Task1 Submission

The above are all the files needed to set up the 'Gemini Inductions Server' required for the Task1 of SysAd Delta Inductions '24.

### Pre-requisite
The files named **usergen.sh** and **totalalias.sh** are to be run first in that order, and they are run while having all the rest of the script files in the same directory as them. 

## 1.usergen.sh
This file is run first to set up the required users, home directories and files in the server. Required text files are also made from this script.

## 2.totalalias.sh
This file sets up aliases in the .bashrc files of mentees, mentors and core's home directories. The following aliases are added:
1. **domainpref**
2. **mentorallocation**
3. **submitTask** (works for both mentees and mentors)
4. **displayStatus**

   ### Super User Mode aliases

   5. **Deregister**
   6. **setQuiz**

## 3. Setting Up Cronjob
Running totalalias.sh copies the files RunThisAtCore.sh and crong.sh into the core's home directory. After signing into the Core's home directory, run the file **RunThisAtCore.sh** to set up the cronjob directly into the crontab file of the core. **crong.sh** is the script responsible for the tasks the cronjob runs.


