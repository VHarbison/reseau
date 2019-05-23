#! /bin/bash
#Backup Base 
	TIMESTAMP=$(date +"%F")
	BACKUP_DIR=/temp/My-Backup-$TIMESTAMPMYSQL_USER="USERName"
	MYSQL=/usr/bin/mysql
	MYSQL_PASSWORD="mot de passe"
	MYSQLDUMP=/usr/bin/mysqldump
	DATABASE= #NOMBASE

	mkdir -p "$BACKUP_DIR/mysql"

	$MYSQLDUMP --force --opt --user=$MYSQL_USER -p$MYSQL_PASSWORD $DATABASE | gzip > "$BACKUP_DIR/mysql/$DATABASE.gz"