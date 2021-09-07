create table tbl_board(
bno int primary key auto_increment,
category varchar(10),
sub_category varchar(10),
title varchar(200),
content varchar(5000),
writer varchar(30),
regdate datetime default now(),
view int default 0,
recomend int default 0
);

insert into tbl_board(category, sub_category, title, content, writer) values('freeBoard','잡담','테스트제목','테스트내용','사용자');
insert into tbl_board(category, sub_category, title, content, writer) values('freeBoard','공지','테스트공지 제목','테스트공지 내용','운영자');
insert into tbl_board(category, sub_category, title, content, writer) values('freeBoard','기타','기타 제목','기타 내용','부운영자');

insert into tbl_board(category, sub_category, title, content, writer) values('issueBoard','서버1','버그 제보','버그 제보 내용','사용자');
insert into tbl_board(category, sub_category, title, content, writer) values('issueBoard','서버2','테스트제목','테스트내용','운영자');
insert into tbl_board(category, sub_category, title, content, writer) values('issueBoard','서버3','테스트제목','테스트내용','운영자');

select * from tbl_board;

drop table tbl_board;