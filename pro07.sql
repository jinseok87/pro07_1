drop table board;

create table board (
no int primary key,
title varchar2(200) not null,
content varchar2(2000) not null,
writer varchar2(50) not null,
regdate date default sysdate,
visited int default 0
);

--컬럼명 변경  no -> seq;
alter table board rename column seq to no;
insert into board values(1,'제목','내용','admin',sysdate,0);

insert into board(no, title,content,writer) values((select nvl(max(no),0)+1 from board),'제목2','내용2','admin');

commit;

select * from member;
select * from board where no=3;
select * from member where id='jin' and pw='1234';

drop table member;
create table member(
id varchar2(50) PRIMARY key,
pw varchar2(500) not null,
name varchar2(50) not null,
tel varchar2(13) not null,
addr varchar2(200) not null,
addr2 varchar2(200) not null,
postcode varchar2(30) not null,
regdate date default sysdate
);
insert into member(id,pw,name,tel,addr,addr2,postcode) values('jin','1234','진','010-1234-1234','검단','검단','123');
insert into member(id,pw,name,tel,addr,addr2,postcode) values('soo','1234','수','010-1234-1234','인천','인천','123');

DELETE from member where id = 'admin';

commit;
