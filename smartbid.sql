create database smartbid;
use smartbid;
create table addresses(
 id int auto_increment primary key,
 userid varchar(25) not null,
 shipping tinytext not null,
 home_phone varchar(15) not null,
 office_phone varchar(15) not null,
 status char(1) default '0',
 created_at datetime not null,
 updated_at datetime,
 deleted_at datetime
);

create table auctions (
 id int auto_increment primary key,
 description varchar(254) not null,
 realvalue float(12,4) not null,
 auctionprice float(12,4) not null,
 bidvalue int not null,
 bidsclose char(1) default '0',
 mainpix varchar(50) not null,
 status char(1) default '0',
 created_at datetime not null,
 updated_at datetime,
 deleted_at datetime
);
 
create table bideds(
 id int auto_increment primary key,
 bidder varchar(25) not null,
 bid_amount float(12,4),
 bid_value int not null,
 bid_date datetime not null,
 created_at datetime not null,
 updated_at datetime,
 deleted_at datetime
);

create table bidpacks(
 id int auto_increment primary key,
 userid varchar(25) not null,
 alloted float(12,4) not null,
 datealloted datetime not null,
 expirydate datetime not null,
 created_at datetime not null,
 updated_at datetime,
 deleted_at datetime
);
 
create table bidwallets(
 id int auto_increment primary key,
 userid varchar(25) not null,
 narration tinytext not null,
 credit float(12,4) not null,
 debit float(12,4) not null,
 trans_date datetime not null,
 value_date date not null,
 trans_ref varchar(25),
 channel varchar(25),
 created_at datetime not null,
 updated_at datetime,
 deleted_at datetime
);

create table buyds(
 id int auto_increment primary key,
 auction_id int not null,
 buyer varchar(25) not null,
 amount float(12,4) not null,
 buy_date datetime not null,
 created_at datetime not null,
 updated_at datetime,
 deleted_at datetime
);

create table pixes(
 id int auto_increment primary key,
 aid int not null,
 file_name varchar(50) not null,
 description varchar(254) not null,
 uploadedby varchar(25) not null,
 status char(1) default'0',
 created_at datetime not null,
 updated_at datetime,
 deleted_at datetime
);

create table users(
 id int auto_increment primary key,
 userid varchar(25) not null,
 name varchar(30) not null,
 password varchar(50),
 email varchar(50) not null,
 phone varchar(15) not null,
 gender varchar(6) not null,
 uonline char(1) default '0',
 status char(1) default '0',
 created_at datetime not null,
 updated_at datetime,
 deleted_at datetime,
 authentication_token varchar(30));

create table winbids(
 id int auto_increment primary key,
 userid varchar(25) not null,
 auction_id int not null,
 price float(12,4) not null,
 datewon datetime not null,
 datepaid datetime not null,
 status char(1) default '0',
 created_at datetime not null,
 updated_at datetime,
 deleted_at datetime 
);
