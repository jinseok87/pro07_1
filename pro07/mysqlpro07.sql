create database goverment;

use goverment;

create table sample(id varchar(20), pw varchar(20));
insert into sample values('jjs', '1234');
insert into sample values('jin1', '1234');
insert into sample values('jin2', '1234');
commit;	
drop table notice;
desc member;
create table member(
id varchar(50) primary key,
pw varchar(500) not null,
name varchar(20) not null,
tel varchar(20),
addr varchar(30),
regdate datetime default now()); 
select * from member;
insert into member values ('jin','1234','진석','01012345678','인천',default);
insert into member values ('soo','1234','수','01012345678','김포',default);
delete from member where id='admin';
alter table member add addr2 varchar(100);
alter table member add postcode varchar(30);

create table board (
no int not null auto_increment primary key,
title varchar(50) not null,
content varchar(500) not null,
author varchar(20) not null,
regdate datetime default now(),
visited int default 0); 
select * from board;
insert into board (title, content, author) values ('공지사항1','공지사항1 내용','admin');

drop table free;

create table free(no int primary key auto_increment,  -- 글번호
title varchar(100) not null,   -- 글제목
content varchar(1500) not null,    -- 글내용
regdate datetime default now(),   -- 작성일
visited int default 0,    -- 조회수
id varchar(20),    -- 작성자
rec int default 0 -- 추천수
);
insert into free(title,content,id) values ('자유게시판','게시판 내용1','admin');
commit;
select * from free;

drop table qna;
-- 질문 및 답변
create table qna(
    no int primary key auto_increment,
    title varchar(100) not null,
    content varchar(1000) not null,
    author varchar(20) not null,
    regdate datetime default now(),
    lev int default 0,            -- 깊이
    parno INT,          			-- 부모글 번호
    sec char(1),                 -- 비밀글 여부
    visited INT DEFAULT 0
);
delete from qna where no=1;

INSERT INTO qna(title, content, author, lev, parno,sec) VALUES ('질문1','질문1','soo',0,1,'Y');
INSERT INTO qna(title, content, author, lev, parno,sec) VALUES ('질문2','질문2','jin',0,2,'Y');
INSERT INTO qna(title, content, author, lev, parno,sec) VALUES ('질문3','질문3','jin2',0,(select COALESCE(max(no),0)+1 from qna),'Y');
INSERT INTO qna(title, content, author, lev, parno, sec) VALUES ('답변1','답변1','admin',1,1,'Y');
INSERT INTO qna(title, content, author, lev, parno, sec) VALUES ('답변2','답변2','admin',1,2,'Y');
select * from qna order by parno desc, no asc, lev asc;
select * from qna;