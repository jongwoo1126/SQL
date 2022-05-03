#날짜 : 2022/02/14
#이름 : 박종우
#내용 : JSP 게시판 테이블 생성

#약관테이블
CREATE TABLE `Board_terms` (
	`terms`		TEXT,
	`privacy`	TEXT
);

# 회원테이블
CREATE TABLE `Board_user` (
	`uid` 	VARCHAR(20) PRIMARY KEY,
	`pass`	VARCHAR(255),
	`name`	VARCHAR(20),
	`nick`	VARCHAR(20) UNIQUE,
	`email`	VARCHAR(60) UNIQUE,
	`hp`		CHAR(13) UNIQUE,
	`grade`	TINYINT DEFAULT 2,
	`zip`		CHAR(5),
	`addr1`	VARCHAR(255),
	`addr2`	VARCHAR(255),
	`regip`	VARCHAR(100),
	`rdate`	DATETIME
);
#게시판테이블
CREATE TABLE `Board_article` (
	`id`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT DEFAULT 0,
	`comment`	INT DEFAULT 0,
	`cate`		VARCHAR(20) DEFAULT 'free',
	`title`		VARCHAR(255),
	`content`	TEXT NOT NULL,
	`file` 		TINYINT  DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`uid`			VARCHAR(20) NOT NULL,
	`regip`		VARCHAR(100) NOT NULL,
	`rdate` 		DATETIME
);
#파일테이블
CREATE TABLE `Board_file` (
	`fid`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT NOT NULL,
	`oName`		VARCHAR(255) NOT NULL,
	`nName`		VARCHAR(255) NOT NULL,
	`download`	INT DEFAULT 0,
	`rdate`		DATETIME
);
