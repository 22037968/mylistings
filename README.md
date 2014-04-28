mylistings
==========

Web Arch Assignment 2

CREATING THE DATABASE


Once the project has been cloned you will need to login to MySQL and create the database.

After logging in, please run these three commands:

create database mylistings default charset utf8 default collate utf8_bin;

grant all on mylistings.* to 'webarch'@'localhost' identified by 'webarch'

grant all on mylistings.* to 'webarch'@'localhost.localdomain' identified by 'webarch';
