#!/bin/bash

source .env
mysql -u root << EOF
create database cddemo;
GRANT ALL ON cddemo.* TO '$MYSQL_DB_USER'@'localhost' IDENTIFIED BY '$MYSQL_DB_PASS';
GRANT ALL ON cddemo.* TO '$MYSQL_DB_USER'@'%' IDENTIFIED BY '$MYSQL_DB_PASS';
use cddemo;
create table counter (value INT NOT NULL);
insert into counter values (1);
EOF
