
drop table qna;

create table qna(
    no int primary key ,
    title varchar2(100) not null,
    content varchar2(1000) not null,
    author varchar2(20) not null,
    regdate date default sysdate,
    lev int default 0,            -- 깊이
    parno INT,          			-- 부모글 번호
    sec char(1),                 -- 비밀글 여부
    visited INT DEFAULT 0
);
delete from qna where no=1;

INSERT INTO qna(no,title, content, author, lev, parno,sec) VALUES ((select nvl(max(no),0)+1 from qna),'질문1','질문1','pjw',0,1,'Y');
INSERT INTO qna(no,title, content, author, lev, parno,sec) VALUES ((select nvl(max(no),0)+1 from qna),'질문2','질문2','pjw',0,2,'Y');

INSERT INTO qna(no,title, content, author, lev, parno, sec) VALUES ((select nvl(max(no),0)+1 from qna),'답변1','답변1','admin',1,1,'Y');
INSERT INTO qna(no,title, content, author, lev, parno, sec) VALUES ((select nvl(max(no),0)+1 from qna),'답변2','답변2','admin',1,2,'Y');

commit;
--------셈플
create table sample(
id varchar2(50) not null,
pw varchar2(200) not null
);

insert into sample(id,pw) values('jjs','1234');
insert into sample(id,pw) values('jjs1','1234');
insert into sample(id,pw) values('jjs2','1234');

