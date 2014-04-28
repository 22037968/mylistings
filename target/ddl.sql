drop table if exists event;
drop table if exists promoter;
drop table if exists venue;
create table event (id bigint not null auto_increment, version bigint not null, end_time varchar(255) not null, event_date datetime not null, event_name varchar(255) not null, price double precision not null, start_time varchar(255) not null, primary key (id));
create table promoter (id bigint not null auto_increment, version bigint not null, promoter_name varchar(255) not null, promoter_telephone varchar(255) not null, promoter_website varchar(255) not null, promter_email varchar(255) not null, primary key (id));
create table venue (id bigint not null auto_increment, version bigint not null, venue_address varchar(255) not null, venue_name varchar(255) not null, venue_post_code varchar(255) not null, venue_telephone varchar(255) not null, venue_website varchar(255) not null, primary key (id));
