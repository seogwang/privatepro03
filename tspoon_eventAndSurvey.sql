create database teaspoon;

USE teaspoon;

CREATE table survey (
sno INT auto_increment PRIMARY KEY,
title VARCHAR(100) NOT NULL,
num INT NOT null
);

create table EVENT(
bno INT AUTO_INCREMENT PRIMARY KEY,  -- 글번호
title VARCHAR(100) not null,   -- 글제목
content VARCHAR(1500) not null,    -- 글내용
regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),   -- 작성일
visited INT DEFAULT 0,    -- 조회수
id VARCHAR(20),    -- 작성자
rec INT DEFAULT 0 -- 추천수
);

create table winner(
bno INT AUTO_INCREMENT PRIMARY KEY,  -- 글번호
title VARCHAR(100) not null,   -- 글제목
content VARCHAR(1500) not null,    -- 글내용
regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),   -- 작성일
visited INT DEFAULT 0,    -- 조회수
id VARCHAR(20),    -- 작성자
rec INT DEFAULT 0 -- 추천수
);

insert into event values(default, '이벤트 글 제목1입니다.', '여기는 이벤트 글1에 대한 내용입니다.', default, DEFAULT, 'admin', default);

COMMIT;

CREATE TABLE survey(
  sno int auto_increment primary key,
  title VARCHAR(200) NOT NULL,
  q1 varchar(200) NOT null,
  q2 varchar(200),
  q3 varchar(200),
  q4 varchar(200),
  q5 varchar(200),
  q6 varchar(200),
  q7 varchar(200),
  q8 varchar(200),
  q9 varchar(200),
  q10 varchar(200),
  regdate timestamp default current_timestamp,
  ans int default 0,
  lev int default 0,
  par INT DEFAULT 0,
  author VARCHAR(100),
  visited INT(11) DEFAULT 0
);

ALTER TABLE survey MODIFY par INT DEFAULT 0;
ALTER TABLE survey ADD COLUMN author VARCHAR(100);
ALTER TABLE survey ADD COLUMN visited INT(11);

ALTER TABLE survey MODIFY visited INT DEFAULT 0;

DESC survey;

select count(*) from survey;


INSERT INTO survey VALUES (DEFAULT, '설문 1', '', '', '', '', '', '', '', '', '', '', DEFAULT, DEFAULT, DEFAULT, NULL);
INSERT INTO survey VALUES (DEFAULT, '설문 2', '', '', '', '', '', '', '', '', '', '', DEFAULT, DEFAULT, DEFAULT, NULL);
INSERT INTO survey VALUES (DEFAULT, '설문 3', '', '', '', '', '', '', '', '', '', '', DEFAULT, DEFAULT, DEFAULT, NULL);
INSERT INTO survey VALUES (DEFAULT, '설문 4', '', '', '', '', '', '', '', '', '', '', DEFAULT, DEFAULT, DEFAULT, NULL);
INSERT INTO survey VALUES (DEFAULT, '설문 5', '', '', '', '', '', '', '', '', '', '', DEFAULT, DEFAULT, DEFAULT, NULL);
INSERT INTO survey VALUES (DEFAULT, '설문 6', '', '', '', '', '', '', '', '', '', '', DEFAULT, DEFAULT, DEFAULT, NULL);
INSERT INTO survey VALUES (DEFAULT, '설문 7', '', '', '', '', '', '', '', '', '', '', DEFAULT, DEFAULT, DEFAULT, NULL);
INSERT INTO survey VALUES (DEFAULT, '설문 8', '', '', '', '', '', '', '', '', '', '', DEFAULT, DEFAULT, DEFAULT, NULL);
INSERT INTO survey VALUES (DEFAULT, '설문 9', '', '', '', '', '', '', '', '', '', '', DEFAULT, DEFAULT, DEFAULT, NULL);
INSERT INTO survey VALUES (DEFAULT, '설문 10', '', '', '', '', '', '', '', '', '', '', DEFAULT, DEFAULT, DEFAULT, NULL);

update survey SET visited=0;

COMMIT;

SELECT * FROM survey;

select * from survey where par=0 and author='admin';

update survey set q1='설문 1', q2='설문 2', q3='설문 3', q4='설문 4', q5='설문 5', q6='설문 6', q7='설문 7', q8='설문 8', q9='설문 9', q10='설문 10' where sno=1;