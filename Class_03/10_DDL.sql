/* ddl (data definition language) */

/* create */
CREATE TABLE IF NOT EXISTS tb1(
   pk int PRIMARY KEY,
   fk int ,
   col1 varchar(255),
   CHECK(col1 IN('y', 'n'))
) ENGINE=INNODB;

DESCRIBE tb1;

INSERT INTO tb1 VALUES(2, 10, 'n');

SELECT * FROM tb1;

-- ALter
-- 테이블에 추가/변경/수정/삭제하는 모든 것을 alter 명령어를 사용해 적용한다.
-- 종류가 너무 많고 복잡하기 때문에 대표적인 것만 사용해볼 것이다.

-- column을 추가하는 경우  
ALTER TABLE tb1
ADD col2 int NOT NULL;
-- not null 제약조건으로 인해 null을 포함할 수 없다.
INSERT INTO tb1 VALUES(2, 10, 'n', null);
DESCRIBE tb1;

-- column을 삭제하는 경우 
ALTER TABLE tb1
DROP COLUMN col2;
DESCRIBE tb1;

-- 열 이름 및 데이터 형식 변경
ALTER TABLE tb1
CHANGE COLUMN fk change_fk int NOT NULL;

DESCRIBE tb1;


-- 테이블 생성
CREATE TABLE IF NOT EXISTS tb2(
   pk int PRIMARY KEY auto_increment,
   fk int ,
   col1 varchar(255),
   CHECK(col1 IN('y', 'n'))
) ENGINE=INNODB;

DESCRIBE tb2;
-- auto_increment가 걸려 있는 컬럼은 primary key 제거가 안되므로 auto_increment를 modify 명령어로 제거한다.
-- modify는 컬럼의 정의를 바꾸는 것이다.
ALTER TABLE tb2
MODIFY pk int;

-- 테이블의 PRIMARY key는 하나만 가질 수 있어 별도의 컬럼을 지정하지 않아도 primary 삭제가 가능하다.
ALTER TABLE tb2
DROP PRIMARY KEY;

DESCRIBE tb2;

-- 테이블 삭제하기
CREATE TABLE IF NOT EXISTS tb5( -- 3,4,5 변경해서 테이블 만들기 
   pk int PRIMARY KEY auto_increment,
   fk int ,
   col1 varchar(255),
   CHECK(col1 IN('y', 'n'))
) ENGINE=INNODB;

DROP TABLE IF EXISTS tb3, tb4, tb5;

SHOW tables;



-- truncate 확인을 위한 테이블 생성
CREATE TABLE IF NOT EXISTS tb3(
   pk int PRIMARY KEY auto_increment,
   fk int ,
   col1 varchar(255),
   CHECK(col1 IN('y', 'n'))
) ENGINE=INNODB;

-- 데이터 insert 
INSERT INTO tb3 VALUES(NULL, 10, 'n');
INSERT INTO tb3 VALUES(null, 10, 'n');
INSERT INTO tb3 VALUES(NULL,10, 'n');
INSERT INTO tb3 VALUES(NULL, 10, 'n');

SELECT * FROM tb3;
DELETE FROM tb3;
-- truncate 
truncate tb3;
-- delete의 차이
