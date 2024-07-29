# !bin/bash

now=$(date +"%d_%m_%Y")

file="backup_MySecondDirctory_$now.tar"

tar -zcvf /home/beibitserikbek/Backup/$file /home/beibitserikbek/MySecondDirectory
