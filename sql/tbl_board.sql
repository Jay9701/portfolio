use pjh;

create table tbl_board(
bno int primary key auto_increment,
category varchar(10),
sub_category varchar(10),
title varchar(200),
content varchar(5000),
writer varchar(30),
regdate datetime default now(),
view int default 0,
recommend int default 0,
confirm boolean default 0
);

insert into tbl_board(category,sub_category,title,content,writer)
values('freeBoard','잡담','testTitle','testContent','user'),
('freeBoard','잡담','testTitle','testContent','user'),
('freeBoard','잡담','testTitle','testContent','user'),
('freeBoard','기타','testTitle','testContent','user'),
('freeBoard','기타','testTitle','testContent','user'),
('freeBoard','잡담','testTitle','testContent','user'),
('freeBoard','잡담','testTitle','testContent','user'),
('freeBoard','잡담','testTitle','testContent','user'),
('freeBoard','잡담','testTitle','testContent','user'),
('freeBoard','기타','testTitle','testContent','user'),
('freeBoard','잡담','testTitle','testContent','user');

insert into tbl_board(category,sub_category,title,content,writer)
values('freeBoard','기타','testTitle','testContent','user');

insert into tbl_board(category,sub_category,title,content,writer)
values('issueBoard','이슈','testTitle','testContent','user');

insert into tbl_board(category,sub_category,title,content,writer)
values('issueBoard','토론','testTitle','testContent','user');

insert into tbl_board(category,sub_category,title,content,writer)
values('issueBoard','버그','testTitle','testContent','user');

insert into tbl_board(category,sub_category,title,content,writer)
values('issueBoard','기타','testTitle','testContent','user');

drop table tbl_board;

select * from tbl_board where bno > 0 and category='freeBoard' and sub_category='잡담';

select content from tbl_board where bno = 7;

update tbl_board set view = view + 1 where bno = 1;

update tbl_board set confirm = 1 where bno = 12;

alter table tbl_board add confirm boolean default 0;

alter table tbl_board change recomend recommend int default 0;

select * from tbl_board order by bno desc;

SELECT @ROWNUM := @ROWNUM + 1 AS rownum, board.* FROM
        (SELECT * FROM tbl_board ORDER BY bno DESC) board, 
        (SELECT @ROWNUM := 0 ) rownum;
        
select * from
		(select @rownum:=@rownum+1 as rownum, tbl_board.*
		from (select @rownum:=0) as rownum
		, tbl_board order by bno desc) pageboard;

select count(*) from tbl_board where category='freeboard';