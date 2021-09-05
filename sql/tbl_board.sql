create table tbl_board(
bno int primary key auto_increment,
category varchar(10),
sub_category varchar(10),
title varchar(200),
content varchar(5000),
writer varchar(30),
regdate datetime default now(),
view int default 0,
recomend int default 0,
confirm boolean default false
);

select * from tbl_board order by bno desc;

insert into tbl_board(category,sub_category,title,content,writer)
values('freeBoard','잡담','제목','내용','작성자');

drop table tbl_board;

select * from tbl_board where bno > 0 and category='freeBoard' and sub_category='잡담';

select content from tbl_board where bno = 7;

update tbl_board set view = view + 1 where bno = 1;