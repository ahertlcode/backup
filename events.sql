create database events;
use events;
create table user(
 id int auto_increment primary key,
 username varchar(15) not null,
 name varchar(45) not null,
 email varchar(25) not null,
 officephone varchar(15) not null,
 mobilephone varchar(15) not null,
 gender varchar(6) not null,
 registered_by varchar(25) not null,
 status char(1) default '0',
 created_at datetime not null,
 updated_at datetime,
 deleted_at datetime
);

create table address(
 id int auto_increment primary key,
 csn int not null,
 block varchar(5) not null,
 street_name tinytext not nul,
 landmark varchar(50),
 neighborhood varchar(50),
 location varchar(25),
 latlng varchar(15),
);

create table admin(
 id int auto_increment primary key,
 username varchar(15) not null,
 role varchar(25),
 online char(1) default '0',
 lastlogin datetime
);

create table centre(
 id int auto_increment primary key,
 centre_name tinytext not null,
 capacity int not null,
 rent float(12,4) not null,
 facilities tinytext not null,
 imaged varchar(50),
 contactperson varchar(15) not null,
 created_at datetime not null,
 updated_at datetime,
 deleted_at datetime
);

create table location(
 id int auto_increment primary key,
 town tinytext not null,
 city tinytext not null,
 state varchar(45) not null,
 country varchar(50),
);

create table pix(
 id int auto_increment primary key,
 csn int not null,
 pic_file_name varchar(20) not null,
 description tinytext,
 uploadedby varchar(25) not null,
 status char(1) default '0',
);

