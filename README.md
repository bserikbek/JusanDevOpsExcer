# JusanDevOpsExcer

# Task1CreateDirFile
[beibitserikbek@localhost ~]$ pwd
/home/beibitserikbek
[beibitserikbek@localhost ~]$ 
[beibitserikbek@localhost ~]$ mkdir MyDirectory
[beibitserikbek@localhost ~]$ cd MyDirectory/
[beibitserikbek@localhost MyDirectory]$ touch MyFile.txt
[beibitserikbek@localhost MyDirectory]$ ll
total 0
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 28 12:33 MyFile.txt

#Task2CopyTxtFiles

[beibitserikbek@localhost MyDirectory]$ touch 1.txt 2.txt 3.txt 4.txt 5.txt
[beibitserikbek@localhost MyDirectory]$ 
[beibitserikbek@localhost MyDirectory]$ 
[beibitserikbek@localhost MyDirectory]$ ll
total 0
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 29 09:36 1.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 29 09:36 2.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 29 09:36 3.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 29 09:36 4.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 29 09:36 5.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 28 12:33 MyFile.txt
[beibitserikbek@localhost MyDirectory]$ cd ..
[beibitserikbek@localhost ~]$ mkdir MySecondDirectory
[beibitserikbek@localhost ~]$ 
[beibitserikbek@localhost ~]$ 
[beibitserikbek@localhost ~]$ cp MyDirectory/*.txt MySecondDirectory/
[beibitserikbek@localhost ~]$ ls -l MySecondDirectory/
total 0
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 29 09:37 1.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 29 09:37 2.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 29 09:37 3.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 29 09:37 4.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 29 09:37 5.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 29 09:37 MyFile.txt
[beibitserikbek@localhost ~]$ ll MyDirectory/

#Task3SearchScript

[root@localhost beibitserikbek]# vim filesearch.sh
[root@localhost beibitserikbek]#
[root@localhost beibitserikbek]#
[root@localhost beibitserikbek]# chmod 775 filesearch.sh
[root@localhost beibitserikbek]# ./filesearch.sh
Usage: grep [OPTION]... PATTERNS [FILE]...
Try 'grep --help' for more information.
[root@localhost beibitserikbek]# ./filesearch.sh My
./MyDirectory:
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 28 12:33 MyFile.txt
./MySecondDirectory:
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 29 09:37 MyFile.txt
[root@localhost beibitserikbek]# cat filesearch.sh
# !bin/bash

ls -l ./* | grep $1

[root@localhost beibitserikbek]# ./filesearch.sh My
-rw-r--r--. 1 root           root            0 Jul 29 09:47 ./MyFile.txt
./MyDirectory:
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 28 12:33 MyFile.txt
./MySecondDirectory:
-rw-r--r--. 1 beibitserikbek beibitserikbek 0 Jul 29 09:37 MyFile.txt


[root@localhost beibitserikbek]# ./filesearch2.sh My
./MyDirectory
./MyDirectory/MyFile.txt
./MyFile.txt
./MySecondDirectory.tar
./MySecondDirectory
./MySecondDirectory/MyFile.txt
./MySecondDirectory/MySecondNestedDirectory
[root@localhost beibitserikbek]# cat filesearch2
cat: filesearch2: No such file or directory
[root@localhost beibitserikbek]# cat filesearch2.sh
# !bin/bash

find . -name "$1*"
[root@localhost beibitserikbek]#


# Task4Archive

[root@localhost beibitserikbek]# find MySecondDirectory/ -name "*"
MySecondDirectory/
MySecondDirectory/1.txt
MySecondDirectory/2.txt
MySecondDirectory/3.txt
MySecondDirectory/4.txt
MySecondDirectory/5.txt
MySecondDirectory/MyFile.txt
MySecondDirectory/MySecondNestedDirectory
MySecondDirectory/MySecondNestedDirectory/archive.csv
MySecondDirectory/TestForArchive


[root@localhost beibitserikbek]# tar -zcvf MySecondDirectory.tar MySecondDirectory
MySecondDirectory/
MySecondDirectory/1.txt
MySecondDirectory/2.txt
MySecondDirectory/3.txt
MySecondDirectory/4.txt
MySecondDirectory/5.txt
MySecondDirectory/MyFile.txt
MySecondDirectory/MySecondNestedDirectory/
MySecondDirectory/MySecondNestedDirectory/archive.csv
MySecondDirectory/TestForArchive/


[root@localhost beibitserikbek]# ll
total 8
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Desktop
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Documents
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Downloads
-rwxrwxr-x. 1 root           root            33 Jul 29 09:45 filesearch.sh
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Music
drwxr-xr-x. 2 beibitserikbek beibitserikbek  89 Jul 29 09:36 MyDirectory
-rw-r--r--. 1 root           root             0 Jul 29 09:47 MyFile.txt
drwxr-xr-x. 4 beibitserikbek beibitserikbek 142 Jul 29 09:51 MySecondDirectory
-rw-r--r--. 1 root           root           296 Jul 29 09:53 MySecondDirectory.tar
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Pictures
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Public
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Templates
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Videos


[root@localhost beibitserikbek]# rm -r MySecondDirectory
rm: descend into directory 'MySecondDirectory'? y
rm: remove regular empty file 'MySecondDirectory/1.txt'? y
rm: remove regular empty file 'MySecondDirectory/2.txt'? y
rm: remove regular empty file 'MySecondDirectory/3.txt'? y
rm: remove regular empty file 'MySecondDirectory/4.txt'? y
rm: remove regular empty file 'MySecondDirectory/5.txt'? y
rm: remove regular empty file 'MySecondDirectory/MyFile.txt'? y
rm: descend into directory 'MySecondDirectory/MySecondNestedDirectory'? y
rm: remove regular empty file 'MySecondDirectory/MySecondNestedDirectory/archive.csv'? y
rm: remove directory 'MySecondDirectory/MySecondNestedDirectory'? y
rm: remove directory 'MySecondDirectory/TestForArchive'? y
rm: remove directory 'MySecondDirectory'? y


[root@localhost beibitserikbek]# tar -xvf MySecondDirectory.tar
MySecondDirectory/
MySecondDirectory/1.txt
MySecondDirectory/2.txt
MySecondDirectory/3.txt
MySecondDirectory/4.txt
MySecondDirectory/5.txt
MySecondDirectory/MyFile.txt
MySecondDirectory/MySecondNestedDirectory/
MySecondDirectory/MySecondNestedDirectory/archive.csv
MySecondDirectory/TestForArchive/


[root@localhost beibitserikbek]# find MySecondDirectory/ -name "*"
MySecondDirectory/
MySecondDirectory/1.txt
MySecondDirectory/2.txt
MySecondDirectory/3.txt
MySecondDirectory/4.txt
MySecondDirectory/5.txt
MySecondDirectory/MyFile.txt
MySecondDirectory/MySecondNestedDirectory
MySecondDirectory/MySecondNestedDirectory/archive.csv
MySecondDirectory/TestForArchive
[root@localhost beibitserikbek]# ll MySecondDirectory/
total 0
-rw-r--r--. 1 beibitserikbek beibitserikbek  0 Jul 29 09:37 1.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek  0 Jul 29 09:37 2.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek  0 Jul 29 09:37 3.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek  0 Jul 29 09:37 4.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek  0 Jul 29 09:37 5.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek  0 Jul 29 09:37 MyFile.txt
drwxr-xr-x. 2 beibitserikbek beibitserikbek 25 Jul 29 09:51 MySecondNestedDirectory
drwxr-xr-x. 2 beibitserikbek beibitserikbek  6 Jul 29 09:51 TestForArchive
[root@localhost beibitserikbek]#


# Task4Archive

[root@localhost beibitserikbek]# find MySecondDirectory/ -name "*"
MySecondDirectory/
MySecondDirectory/1.txt
MySecondDirectory/2.txt
MySecondDirectory/3.txt
MySecondDirectory/4.txt
MySecondDirectory/5.txt
MySecondDirectory/MyFile.txt
MySecondDirectory/MySecondNestedDirectory
MySecondDirectory/MySecondNestedDirectory/archive.csv
MySecondDirectory/TestForArchive


[root@localhost beibitserikbek]# tar -zcvf MySecondDirectory.tar MySecondDirectory
MySecondDirectory/
MySecondDirectory/1.txt
MySecondDirectory/2.txt
MySecondDirectory/3.txt
MySecondDirectory/4.txt
MySecondDirectory/5.txt
MySecondDirectory/MyFile.txt
MySecondDirectory/MySecondNestedDirectory/
MySecondDirectory/MySecondNestedDirectory/archive.csv
MySecondDirectory/TestForArchive/


[root@localhost beibitserikbek]# ll
total 8
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Desktop
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Documents
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Downloads
-rwxrwxr-x. 1 root           root            33 Jul 29 09:45 filesearch.sh
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Music
drwxr-xr-x. 2 beibitserikbek beibitserikbek  89 Jul 29 09:36 MyDirectory
-rw-r--r--. 1 root           root             0 Jul 29 09:47 MyFile.txt
drwxr-xr-x. 4 beibitserikbek beibitserikbek 142 Jul 29 09:51 MySecondDirectory
-rw-r--r--. 1 root           root           296 Jul 29 09:53 MySecondDirectory.tar
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Pictures
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Public
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Templates
drwxr-xr-x. 2 beibitserikbek beibitserikbek   6 Jul 28 12:30 Videos


[root@localhost beibitserikbek]# rm -r MySecondDirectory
rm: descend into directory 'MySecondDirectory'? y
rm: remove regular empty file 'MySecondDirectory/1.txt'? y
rm: remove regular empty file 'MySecondDirectory/2.txt'? y
rm: remove regular empty file 'MySecondDirectory/3.txt'? y
rm: remove regular empty file 'MySecondDirectory/4.txt'? y
rm: remove regular empty file 'MySecondDirectory/5.txt'? y
rm: remove regular empty file 'MySecondDirectory/MyFile.txt'? y
rm: descend into directory 'MySecondDirectory/MySecondNestedDirectory'? y
rm: remove regular empty file 'MySecondDirectory/MySecondNestedDirectory/archive.csv'? y
rm: remove directory 'MySecondDirectory/MySecondNestedDirectory'? y
rm: remove directory 'MySecondDirectory/TestForArchive'? y
rm: remove directory 'MySecondDirectory'? y


[root@localhost beibitserikbek]# tar -xvf MySecondDirectory.tar
MySecondDirectory/
MySecondDirectory/1.txt
MySecondDirectory/2.txt
MySecondDirectory/3.txt
MySecondDirectory/4.txt
MySecondDirectory/5.txt
MySecondDirectory/MyFile.txt
MySecondDirectory/MySecondNestedDirectory/
MySecondDirectory/MySecondNestedDirectory/archive.csv
MySecondDirectory/TestForArchive/


[root@localhost beibitserikbek]# find MySecondDirectory/ -name "*"
MySecondDirectory/
MySecondDirectory/1.txt
MySecondDirectory/2.txt
MySecondDirectory/3.txt
MySecondDirectory/4.txt
MySecondDirectory/5.txt
MySecondDirectory/MyFile.txt
MySecondDirectory/MySecondNestedDirectory
MySecondDirectory/MySecondNestedDirectory/archive.csv
MySecondDirectory/TestForArchive
[root@localhost beibitserikbek]# ll MySecondDirectory/
total 0
-rw-r--r--. 1 beibitserikbek beibitserikbek  0 Jul 29 09:37 1.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek  0 Jul 29 09:37 2.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek  0 Jul 29 09:37 3.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek  0 Jul 29 09:37 4.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek  0 Jul 29 09:37 5.txt
-rw-r--r--. 1 beibitserikbek beibitserikbek  0 Jul 29 09:37 MyFile.txt
drwxr-xr-x. 2 beibitserikbek beibitserikbek 25 Jul 29 09:51 MySecondNestedDirectory
drwxr-xr-x. 2 beibitserikbek beibitserikbek  6 Jul 29 09:51 TestForArchive
[root@localhost beibitserikbek]#


# Task5TextReverse

[root@localhost beibitserikbek]# cat TextFile.txt 
1. Hello World
2. Silly Text
3. Howdy
4. Free Gaza
[root@localhost beibitserikbek]# 
[root@localhost beibitserikbek]# 
[root@localhost beibitserikbek]# ./TextReverse.sh TextFile.txt 
dlroW olleH .1
txeT ylliS .2
ydwoH .3
azaG eerF .4
[root@localhost beibitserikbek]# 
[root@localhost beibitserikbek]# 
[root@localhost beibitserikbek]# cat TextReverse.sh 
# !bin/bash


while read -r line;
do
	echo "$line" | rev;
done < "$1"

[root@localhost beibitserikbek]# 


# Task6Backup

[root@localhost beibitserikbek]# crontab -l
0 2 * * 0 /home/beibitserikbek/backup.sh
[root@localhost beibitserikbek]#
[root@localhost beibitserikbek]#
[root@localhost beibitserikbek]#
[root@localhost beibitserikbek]# cat backup.sh
# !bin/bash

now=$(date +"%d_%m_%Y")

file="backup_MySecondDirctory_$now.tar"

tar -zcvf /home/beibitserikbek/Backup/$file /home/beibitserikbek/MySecondDirectory
[root@localhost beibitserikbek]#
[root@localhost beibitserikbek]#
[root@localhost beibitserikbek]# ll Backup/
total 12
-rw-r--r--. 1 root root 303 Jul 29 11:24 backup_MySecondDirctory_29_07_2024.tar
-rw-r--r--. 1 root root 303 Jul 29 11:24 backup_MySecondDirctory_29_07_2024.tar.tar
-rw-r--r--. 1 root root 303 Jul 29 11:11 backup_MySecondDirctory_.tar
[root@localhost beibitserikbek]#


# Task7WordCounter

[root@localhost beibitserikbek]# cat textCounter.sh
# !bin/bash


wc -w "$1" | awk '{print $1}'
[root@localhost beibitserikbek]# cat TextFile.txt
1. Hello World
2. Silly Text
3. Howdy
4. Free Gaza
[root@localhost beibitserikbek]#
[root@localhost beibitserikbek]# ./textCounter.sh TextFile.txt
11
[root@localhost beibitserikbek]#
