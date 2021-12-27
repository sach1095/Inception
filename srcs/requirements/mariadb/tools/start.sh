#!/bin/bash
if [ ! -d "/tmp/ok" ]; then
	mkdir -p /tmp/ok
	echo coucou
	service mysql start && mysql < create_db.sql
fi
