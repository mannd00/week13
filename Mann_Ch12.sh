#! /bin/bash

echo "Welcome to Chapter 12!"

echo -e "\nThe Topic today is File Transfers."
ehco -e "\nOne simple way to perform a backup of a directory for example is to use rsync to backup over ssh."

rsync -nva ~/ 127.0.0.1:/mnt/Backups

echo -e "\nRsync also offeres the capibility to compress the files to be transfered usng -z."
rsync -nvaz ~/ 127.0.0.1:/mnt/Backups

echo -e "\n Rsync also works for pulling files from a remote host to store locally, simply switch the source and desitnation arguments."
rsync -nvaz 127.0.0.1:/mnt/Backups ~/Backups/
