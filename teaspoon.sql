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