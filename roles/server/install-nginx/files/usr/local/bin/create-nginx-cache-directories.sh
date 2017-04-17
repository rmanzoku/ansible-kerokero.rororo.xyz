#!/bin/sh

TMPFS_DIRECTORY=/etc/nginx/cache-conf/tmpfs_directories
if [ -e $TMPFS_DIRECTORY ]; then
    while read line
    do
	if [ ! -e $line ]; then
	    mkdir -p $line
	    chown -R nginx:root $line
	fi
    done < $TMPFS_DIRECTORY
fi
