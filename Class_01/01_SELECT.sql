-- 단일 컬럼의 값을 조회한다.
SELECT menu_name FROM tbl_menu;


-- select 문을 사용하여 여러 열의 데이터를 검색한다.
SELECT
	menu_code ,
	menu_name , 
	menu_price
  FROM tbl_menu;
  
 -- 모든 열의 데이터를 검색
 SELECT 
 	*
   FROM tbl_menu;
   
-- 연산자
SELECT 6*3;
-- 현재 시간을 조회함
SELECT now();


-- 문자열을 합침
SELECT concat('홍', '길동');

-- 컬럼 별칭 
SELECT concat('홍', '길동') AS 이름; 



SELECT
	concat(menu_code, " : " , menu_name) AS "이 름"
  FROM tbl_menu;