mylistings Web Application
==========================

This web-application is intended to provide a database of events, promoters and venues that users can search.

The aim was to create a central place that information is available for people to access and share.

Users can easily access the information, which is stored on 3 tables, which are linked.

While the application currently has limited functionaility, the idea is to expand on the options available which helps spread the information. An example of this will be notifications of when a favorited promoter lists an event, through an RSS feed.


How to run the App
==================

copy the repository from https://github.com/22037968/mylistings

$ git clone https://github.com/22037968/mylistings.git

$ cd myListings

Before the app is ran, the database will need to be created in MySQL. This can be completed by running the following 3 commands.

create database mylistings default charset utf8 default collate utf8_bin;

grant all on mylistings.* to 'webarch'@'localhost' identified by 'webarch';

grant all on mylistings.* to 'webarch'@'localhost.localdomain' identified by 'webarch';

(the file mylistingsbackupfile.sql has been included in the repository, it is sample data)

$ grails run-app (The build.conf will download all the required dependacies.

You will now be able to view the page on localhost and see the sample data that has been added to the database.

