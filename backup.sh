#!/bin/bash

filename="backup_`date +%d`_`date +%m`_`date +%Y`.tar";

tar cvf /mnt/backups/$filename /root/octosystems.net/vault-warden

find "/mnt/backups" -type f -mtime +14 -exec rm {} \;


