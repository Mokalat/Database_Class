-- group by
-- 같은 값을 묶을때 사용하는 키워드이다.

SELECT 
 	category_code,
 	count(*) 
  FROM tbl_menu
  GROUP BY category_code ;
 
 
 SELECT 
  category_code,
  sum(menu_price)
   FROM tbl_menu
  GROUP BY category_code;

 SELECT
  category_code ,
  avg(menu_price)
  FROM tbl_menu
  GROUP BY category_code;
 
 -- 여러 값을 묶는 경우
 SELECT 
 	category_code,
 	menu_price,
 	count(*)
   FROM tbl_menu 
  GROUP BY category_code , menu_price ;
 
 SELECT * FROM tbl_menu WHERE category_code  =10;
 -- 그룹에 조건을 부여하기
 -- having
SELECT 
	category_code
  FROM tbl_menu 
 WHERE category_code > 6 -- SQL 쿼리의 전체의 대한 조건
 GROUP BY category_code 
 HAVING category_code BETWEEN 5 AND 8; -- HAVING 그룹 집합의 대한 조건
 