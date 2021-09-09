use pjh;

create table tbl_reply(
	rno int primary key auto_increment,
    bno int,
    mno int,
    reply varchar(200),
    replyer varchar(20),
    replydate datetime default now(),
    updatedate date
);

select * from tbl_reply;

insert tbl_reply(bno, mno, reply, replyer) values(354,1,'354번 게시글에 처음다는 댓글입니다.','user');