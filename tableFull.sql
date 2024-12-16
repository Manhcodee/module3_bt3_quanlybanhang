create database bt3_quanlybanhang;
use bt3_quanlybanhang;

create table customers (
cID int primary key auto_increment,
name varchar(25),
cAge tinyint
);

create table orders (
oID int primary key auto_increment,
cID int,
foreign key (cID) references customers(cID),
oDate datetime,
oTotalPrice int
);

create table products (
pID int primary key auto_increment,
pName varchar(25),
pPrice int
);

create table orderDatail (
oID int,
pID int,
odQTY int,
foreign key (oID) references orders (oID),
foreign key (pID) references products (pID)
);
