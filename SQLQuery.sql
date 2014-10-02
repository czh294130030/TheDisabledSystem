---------数据库操作-------------
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
---------数据表操作-------------
use TheDisabledDB  
go
---------管理员表-------------
if exists (select * from sysobjects where name='d_admin')  
	drop table d_admin
go  
create table d_admin  
(  
	id int primary key identity(1,1),
	username nvarchar(50),
	password nvarchar(50)
) 
