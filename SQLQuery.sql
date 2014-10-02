---------���ݿ����-------------
use master
go
if exists (select * from sysdatabases where name='TheDisabledDB')
	drop database TheDisabledDB
go
create database TheDisabledDB
on primary
(
	name='TheDisabledDB_data',
	filename='E:\TheDisabledSystem\TheDisabledDB_data.mdf',
	size=5mb,
	maxsize=100mb,
	filegrowth=15%
)
log on 
(
	name='TheDisabledDB_log',
	filename='E:\TheDisabledSystem\TheDisabledDB_log.ldf',
	size=2mb,
	filegrowth=1mb
)
go
---------���ݱ����-------------
use TheDisabledDB  
go
---------�������ͱ�-------------
if exists (select * from sysobjects where name='d_adminType')  
	drop table d_adminType
go  
create table d_adminType  
(  
	id int primary key identity(1,1),
	name nvarchar(50)
)
insert into d_adminType(name)values('��������Ա');
insert into d_adminType(name)values('����Ա');
--select * from d_adminType;
---------����Ա��-------------
if exists (select * from sysobjects where name='d_admin')  
	drop table d_admin
go  
create table d_admin  
(  
	id int primary key identity(1,1),
	username nvarchar(50),
	password nvarchar(50),
	typeId int
) 
insert into d_admin(username,password,typeId) values('admin','123456',1);
insert into d_admin(username,password,typeId) values('chad','123456',2);
--select * from d_admin;
