# 날짜 : 2022/01/13
# 이름 : 박종우
# 내용 : 5. SQL 연습문제

# 문제1.
CREATE TABLE `Book`(
	`bookid` 	 INT PRIMARY KEY,
	`bookname` 	 VARCHAR(20),
	`publisher`  VARCHAR(20),
	`price` 		 int
);

lucky4527
# 문제2.
CREATE TABLETestOrderer(
	`custid` 	INT AUTO_INCREMENT PRIMARY KEY,
	`name` 		VARCHAR(10),
   `address` 	VARCHAR(100),
   `phone` 		CHAR(13))
   
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES('박지성', '영국 맨체스타', '010-5000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES('김연아', '대한민국 서울', '010-6000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES('장미란', '대한민국 강원도', '010-7000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES('추신수', '미국 클리블랜드', '010-8000-0001');
INSERT INTO `Customer` (`name`, `address`) VALUES('박세리', '대한민국 대전');

# 문제3.
CREATE TABLE `Orders`(
	`orderid`	INT AUTO_INCREMENT PRIMARY KEY,Customer
	`custid` 	INT,
	`bookid` 	INT,
	`saleprice` INT,
	`orderdate`	CHAR(10))
	
INSERT INTO `Orders` (`custid`, `bookid`,`saleprice`, `orderdate`) VALUES(1, 1, 6000,'2014-07-01');
INSERT INTO `Orders` (`custid`, `bookid`,`saleprice`, `orderdate`) VALUES(1, 3, 21000,'2014-07-03');
INSERT INTO `Orders` (`custid`, `bookid`,`saleprice`, `orderdate`) VALUES(2, 5, 8000,'2014-07-03');
INSERT INTO `Orders` (`custid`, `bookid`,`saleprice`, `orderdate`) VALUES(3, 6, 6000,'2014-07-04');
INSERT INTO `Orders` (`custid`, `bookid`,`saleprice`, `orderdate`) VALUES(4, 7, 20000,'2014-07-05');
INSERT INTO `Orders` (`custid`, `bookid`,`saleprice`, `orderdate`) VALUES(1, 2, 12000,'2014-07-07');
INSERT INTO `Orders` (`custid`, `bookid`,`saleprice`, `orderdate`) VALUES(4, 8, 13000,'2014-07-07');
INSERT INTO `Orders` (`custid`, `bookid`,`saleprice`, `orderdate`) VALUES(3, 10, 12000,'2014-07-08');
INSERT INTO `Orders` (`custid`, `bookid`,`saleprice`, `orderdate`) VALUES(2, 10, 7000,'2014-07-09');
INSERT INTO `Orders` (`custid`, `bookid`,`saleprice`, `orderdate`) VALUES(3, 8, 13000,'2014-07-10');

# 문제4.
SELECT `custid`, `name`, `address` FROM `Customer`;

# 문제5.
SELECT `bookname`, `price` FROM `Book`;

# 문제6.
SELECT `price`, `bookname` FROM `Book`;

# 문제7.
SELECT * FROM `Book`;

# 문제8.
SELECT `publisher` FROM `Book`

# 문제9.
SELECT DISTINCT `publisher` FROM `Book`; 

# 문제10.
SELECT * FROM `Book` WHERE `price` >= 20000;

# 문제11.
SELECT * FROM `Book` WHERE `price` < 20000;

# 문제12.
SELECT * FROM `Book` 
WHERE 10000 <= `price` AND `price` <= 20000;

SELECT * FROM `Book` 
WHERE `price` BETWEEN 10000 AND 20000; 

# 문제13.
SELECT `bookid`, `bookname`, `price` FROM `Book` 
WHERE 15000 <= `price` AND `price` <= 30000;

# 문제14.
SELECT * FROM `Book`
WHERE `bookid` IN(2, 3, 5); 

# 문제15.
SELECT * FROM `Book`
WHERE `bookid` % 2 = 0; 

# 문제16.
SELECT * FROM `Customer`
WHERE `name` LIKE '박%';

# 문제17.
SELECT * FROM `Customer`
WHERE `address` LIKE '%대한민국%';

# 문제18.
SELECT * FROM `Customer`
WHERE `phone` != 'NULL'; 

SELECT * FROM `Customer`
WHERE NOT `phone` is 'NULL'; 

# 문제19.
SELECT * FROM `Book`
WHERE `publisher` IN('굿스포츠', '대한미디어');

# 문제20.
SELECT `publisher` FROM `Book`
WHERE `bookname` = '축구의 역사';

# 문제21.
SELECT `publisher` FROM `Book`
WHERE `bookname` LIKE '%축구%' ;

# 문제22.
SELECT * FROM `Book`
WHERE `bookname` LIKE '_구%';

# 문제23.
SELECT * FROM `Book`
WHERE `bookname` LIKE '%축구%' AND `price` >= 20000;

# 문제24.
SELECT * FROM `Book` ORDER BY `bookname`;

# 문제25.???
SELECT * FROM `Book` ORDER BY `price` ASC, `bookname` ASC;

# 문제26.???
SELECT * FROM `Book` ORDER BY `price` DESC, `publisher` ASC;

# 문제27.????
SELECT * FROM `Book` ORDER BY `price` DESC LIMIT 3;

# 문제28.???
SELECT * FROM `Book` ORDER BY `price` ASC LIMIT 3;

# 문제29.
SELECT `name` FROM `Customer` 
WHERE `name` 
NOT IN(SELECT `name` FROM `Customer` WHERE `custid` IN(SELECT `custid` FROM `Orders`)); 

# 문제30.
SELECT SUM(`saleprice`) AS `총판매액` FROM `Orders`;

# 문제31.
SELECT SUM(`saleprice`) AS `총판매액` 
FROM `Orders` WHERE `custid` = 2; 

# 문제32.
SELECT 
	SUM(`saleprice`) AS `합계`,
	AVG(`saleprice`) AS `평균`,
	MIN(`saleprice`) AS `최저가`,
	MAX(`saleprice`) AS `최고가`
FROM 
	`Orders`;

# 문제33.
SELECT COUNT(*) AS `판매건수` 
FROM `Orders`;

# 문제34.
SELECT `bookid`, REPLACE(`bookname`, '야구', '농구') AS `bookname`, `publisher`, `price` FROM `Book`

# 문제35.
SELECT `custid`, COUNT(*) AS `수량` FROM `Orders` 
WHERE `Saleprice` >= 8000
GROUP BY `custid`
HAVING `수량` >= 2;

# 문제36.
SELECT * FROM `Customer` AS a 
JOIN `Orders` AS b
ON a.`custid` = b.`custid`;

# 문제37.
SELECT * FROM `Customer` AS a 
JOIN `Orders` AS b
ON a.`custid` = b.`custid`;
ORDER BY a.`custid`

# 문제38.
SELECT `name`, `saleprice` FROM `Customer` AS a 
JOIN `Orders` AS b
ON a.`custid` = b.`custid`;

# 문제39.
SELECT `name`, SUM(`saleprice`) FROM `Customer` AS a 
	JOIN `Orders` AS b ON a.`custid` = b.`custid`
			GROUP BY a.`custid`
				ORDER BY a.`name` ASC;

# 문제40.
SELECT `name`, `bookname` FROM `Book` AS a
JOIN `Orders` AS b ON a.bookid = b.bookid
JOIN `Customer` AS c ON b.custid = c.custid; 

# 문제41.
SELECT `name`, `bookname` FROM `Book` AS a
JOIN `Orders` AS b ON a.bookid = b.bookid
JOIN `Customer` AS c ON b.custid = c.custid 
WHERE `price`=20000;

# 문제42.
SELECT `name`, `saleprice` FROM `Orders` AS a
JOIN `Customer` AS b ON a.custid = b.custid;

# 문제43.
SELECT `bookname` FROM `Book` WHERE `price` = (SELECT MAX(`price`) FROM `Book`);

# 문제44.
INSERT INTO `Book`(`bookid`, `bookname`,`publisher`) VALUES(11, '스포츠의학','한솔의학서적');

# 문제45.
UPDATE `Customer` SET `address` = '대한민국 부산' WHERE `custid` = 5;

# 문제46.
DELETE FROM `Customer` WHERE `custid` = 5;


mysqluserlucky4527TestOrderTestOrderTestOrderinformation_schema