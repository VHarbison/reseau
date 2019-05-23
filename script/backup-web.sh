#! /bin/bash
#Backup Serveur web	
	TIMESTAMP=$(date +"%F")
	mkdir /etc/backup
	BACKUP_DIR=/etc/backup
	mkdir -p "$BACKUP_DIR/web_dir"
	SRCDIR=/var/www/html/
	DESTDIR=$BACKUP_DIR/web_dir/
	FILENAME=My-WWW-Backup-$TIMESTAMP.tgz
		tar --create --gzip --file=$DESTDIR$FILENAME $SRCDIR

	tar --create --gzip --file=/backups/WEB-$TIMESTAMP.tgz $BACKUP_DIR