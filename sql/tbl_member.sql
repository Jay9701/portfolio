create database pjh;
use pjh;
create table tbl_member(
mno int primary key auto_increment,
id varchar(20) unique,
pw varchar(20),
name varchar(10),
birth date,
gender varchar(3),
email varchar(50),
nickName varchar(20)
);

drop table tbl_member;

select * from tbl_member;

desc tbl_member;

insert into tbl_member(id,pw) values('qomm9701','1234');

select mno from tbl_member where id = 'qomm9701' and pw = 'nate0109';