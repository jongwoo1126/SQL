#날짜 : 2022/05/03
#이름 : 박종우
#내용 : 케이마켓 테이블 설계

#회원 테이블
CREATE TABLE `km_member`(
	`uid` 			VARCHAR(20) PRIMARY KEY,
	`pass` 			VARCHAR(255),
	`name`			VARCHAR(20),
	`gender`			TINYINT,
	`hp`				CHAR(13),
	`email`			VARCHAR(100),
	`type`			TINYINT,
	`point`			INT DEFAULT 0,
	`grade`			TINYINT DEFAULT 1,
	`zip`				CHAR(5),
	`addr1`			VARCHAR(255),
	`addr2`			VARCHAR(255),
	`company`		VARCHAR(20),
	`ceo`				VARCHAR(20),
	`bizRegNum`		CHAR(12),
	`commRepNum`	VARCHAR(100),
	`tel`				VARCHAR(20),
	`manager`		VARCHAR(20),
	`managerHp`		CHAR(13),
	`fax`				VARCHAR(20),
	`ip`				VARCHAR(100),
	`leaveDate`		DATETIME,
	`rdate`			DATETIME,
	`etc1`			INT, 
	`etc2`			INT,
	`etc3`			VARCHAR(100),
	`etc4`			VARCHAR(100),
	`etc5`			VARCHAR(100)
);
	
#회원 약관 테이블
CREATE TABLE 	`km_member_terms`(
	`terms`		TEXT,
	`privacy`	TEXT,
	`location`	TEXT,
	`finance`	TEXT,
	`tax`			TEXT
);

#회원 포인트 테이블
CREATE TABLE 	`km_member_point`(
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`uid` 	VARCHAR(20),
	`pid`		INT,
	`price`	INT,
	`point`	INT,
	`rdate`	INT
);

#상품 테이블
CREATE TABLE `km_product` (
	`pid`			INT(10) ZEROFILL AUTO_INCREMENT PRIMARY KEY,
	`cate1`		TINYINT,
	`cate2`		TINYINT,
	`name`		VARCHAR(100),
	`desc`		VARCHAR(100),
	`company`	VARCHAR(100),
	`seller`		VARCHAR(20),
	`price`		INT DEFAULT 0,
	`discount`	TINYINT,
	`point`		INT DEFAULT 0,
	`stock`		INT DEFAULT 0,
	`sold`		INT DEFAULT 0,
	`delivery`	INT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`score`		INT DEFAULT 0,
	`review`		INT DEFAULT 0,
	`thumb1`		VARCHAR(255),
	`thumb2`		VARCHAR(255),
	`thumb3`		VARCHAR(255),
	`detail`		VARCHAR(255),
	`status`		VARCHAR(20),
	`dutyFree`	VARCHAR(20),
	`receipt`	VARCHAR(20),
	`bizClass`	VARCHAR(20),
	`origin`		VARCHAR(20),
	`ip`			VARCHAR(100),
	`rdate`		DATETIME,
	`etc1`		INT,
	`etc2`		INT,
	`etc3`		VARCHAR(100),
	`etc4`		VARCHAR(100),
	`etc5`		VARCHAR(100)
);
	 	 	 

#상품 1차 카테고리 테이블
CREATE TABLE `km_product_cate1`(
	`cate1`	TINYINT PRIMARY KEY,
	`title`	VARCHAR(100)
);

#상품 2차 카테고리 테이블
CREATE TABLE `km_product_cate2`(
	`cate1`	TINYINT,
	`cate2`	TINYINT,
	`title`	VARCHAR(100)
);

#상품 장바구니 테이블
CREATE TABLE `km_product_cart`(
	`cid` 			INT AUTO_INCREMENT PRIMARY KEY,
	`uid` 			VARCHAR(20),
	`pid`				INT,
	`count`			INT,
	`price`			INT,
	`discount`		INT,
	`point`			INT,
	`delivery`		INT,
	`total`			INT,
	`rdate`			DATETIME
);	

#상품 주문 테이블
CREATE TABLE `km_product_order`(
	`oid` 			INT AUTO_INCREMENT PRIMARY KEY,
	`uid` 			VARCHAR(20),
	`count`			INT DEFAULT 0,
	`price`			INT DEFAULT 0,
	`discount`		INT DEFAULT 0,
	`point`			INT DEFAULT 0,
	`usePoint`		INT DEFAULT 0,
	`delivery`		INT DEFAULT 0,
	`total`			INT DEFAULT 0,
	`orderer`		VARCHAR(20),
	`hp`				CHAR(13),
	`zip`				CHAR(5),
	`addr1`			VARCHAR(255),
	`addr2`			VARCHAR(255),
	`payment`		TINYINT,
	`complete`		TINYINT,
	`rdate`			DATETIME,
	`completeDate`	DATETIME
); 

#상품 주문 상세 테이블
CREATE TABLE `km_product_order_detail`(
	`seq` INT AUTO_INCREMENT PRIMARY KEY,
	`oid` INT,
	`pid`	INT,
	`cnt`	INT
);

#상품 리뷰 테이블
CREATE TABLE `km_product_review`(
	`rid` 		INT AUTO_INCREMENT PRIMARY KEY,
	`pid`			INT,
	`content` 	VARCHAR(255),
	`uid` 		VARCHAR(20),
	`rating`		TINYINT,
	`ip` 			VARCHAR(100),
	`rdate` 		DATETIME
);



