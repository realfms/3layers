#!/bin/bash

mysql -u root << EOF
create database cddemo;
GRANT ALL ON cddemo.* TO 'cduser'@'localhost' IDENTIFIED BY 'cduser';
GRANT ALL ON cddemo.* TO 'cduser'@'%' IDENTIFIED BY 'cduser';
use cddemo;
create table counter (value INT NOT NULL);
insert into counter values (1);
EOF

mysql_secure_installation
