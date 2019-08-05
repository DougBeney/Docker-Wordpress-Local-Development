#!/usr/bin/env bash

tar -xvf database.tar.gz

cat database.sql | docker-compose exec -T db sh -c "/usr/bin/mysql -u wordpress --password=wordpress wordpress"
