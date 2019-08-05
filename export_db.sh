#!/usr/bin/env bash

docker-compose exec -T db sh -c "/usr/bin/mysqldump -u wordpress --password=wordpress wordpress" 2> /dev/null > database.sql

tar -czf database.tar.gz database.sql
