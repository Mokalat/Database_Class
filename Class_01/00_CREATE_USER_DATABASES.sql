-- 관리자 계정으로 사용이 가능한 구문 

-- 새로운 계정 만들기
-- CREATE USER 'gangnam'@'%' IDENTIFIED BY 'gangnam';

-- 데이터베이스 목록보기
-- SHOW DATABASES;

-- mysql 데이터베이스 사용하기
-- USE mysql;

-- 현재 접속한 데이터 베이스의 테이블에 목록을 확인한다.
-- SHOW tables;

-- user 테이블의 모든 컬럼을 조회한다.
-- SELECT * FROM USER;

-- gangnam 데이터베이스를 만든다.
-- CREATE DATABASE gangnam;


-- gangnam 데이터베이스에 gangnam 계정에서 PRIVILEGES 권한을 부여하여 사용할 수 있도록함? 
GRANT ALL PRIVILEGES ON gangnam.* TO 'gangnam'@'%';