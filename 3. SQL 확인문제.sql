# 날짜 : 2022/01/10
# 이름 : 박종우
# 내용 : 3. SQL 확인문제

#실습하기 3-1
CREATE TABLE `tbl member`(
	`memberID`			VARCHAR(10) PRIMARY KEY,
	`memberName`		VARCHAR(10) NOT NULL,
	`memberHp`	 		CHAR(13) UNIQUE DEFAULT NULL, 
	`memberAge`			INT,
	`memberAddr`		VARCHAR(20),
	);
 
CREATE TABLE `tbl_product`(
	`productCode`	INT AUTO_INCREMENT PRIMARY KEY),
	`productName`	VARCHAR(10) NOT NULL,
	`price`			INT NOT NULL,
	`amount`	VARCHAR(255),
	`company`		VARCHAR(255),
	`makeDate`VARCHAR(255)
);	
INSERT INTO `Product` VALUES('제품번호', 'ProductCode', '숫자', '정수', 'X', '없음'); 
INSERT INTO `Product` VALUES('제품명', 'ProductName', '문자열', '10', 'X', '없음');
INSERT INTO `Product` VALUES('가격', 'price', '숫자', '정수', 'O', 'NULL');
INSERT INTO `Product` VALUES('남은수량', 'amount', '숫자', '정수', 'O', 'NULL');
INSERT INTO `Product` VALUES('제조회사', 'company', '문자열', '10', 'O', 'NULL'); 
INSERT INTO `Product` VALUES('제조일자', 'makeDate', '날짜', '날짜', 'O', 'NULL'); 
#실습하기 3-2
#실습하기 3-3