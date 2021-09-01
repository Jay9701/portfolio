create table tbl_board(
bno int primary key auto_increment,
classL varchar(10),
classM varchar(10),
title varchar(200),
content varchar(5000),
writer varchar(30),
regdate datetime default now(),
view int default 0,
recomend int default 0
);

select * from tbl_board;

drop table tbl_board;