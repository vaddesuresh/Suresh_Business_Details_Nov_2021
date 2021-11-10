use master;--considering the database as working database	
create database db_8am_2;
use db_8am_2;
create schema human_resource1;
create table human_resource1.emp
(
eid integer constraint pk primary key,
enm varchar(30),
did smallint constraint chk check(did<100),
jdate date
)
select * from human_resource1.emp
select eid,enm from human_resource1.emp
insert into human_resource1.emp
values(2,'suresh',20,'2021-10-16'),
(4,'suresh',30,'2021-10-16'),
(5,'suresh',40,'2021-10-16'),
(6,'suresh',50,'2021-10-16')
create table emp
(
eid integer constraint pk primary key,
enm varchar(30),
did smallint constraint chk check(did<100),
jdate date
)
select * from human_resource1.emp where did>10
order by eid asc

sp_help emp