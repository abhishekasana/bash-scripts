#! /bin/bash -x

function backup_file(){
 if [ -f $1 ]
 then
	 local BACKUP="/backups/$(basename $1 ).$( date +%F ).$$"
	 echo "Backing up your file $1 to ${BACKUP}"
	 cp $1 $BACKUP
 else
	 return 1
 fi
}

backup_file $1
if [ $? -eq 1 ]
then
	mkdir "backups"
	echo "Created backups directory"
	backup_file $1
fi

