-- distinct
-- 중복값을 제거한다.

-- 단일 열 DISTINCT
-- 아래의 데이터를 조회시 중복되는 category_code가 출력된다.
SELECT 
	category_code
  FROM tbl_menu 
 ORDER BY category_code ;
 
-- distinct를 이용하면 중복값을 제거하고 출력할 수 있게 된다.
SELECT 
	DISTINCT category_code
  FROM tbl_menu;
  
 
 -- null값을 포함한 열의 distinct
 SELECT 
 	ref_category_code
   FROM tbl_category ;
   
 SELECT 
 	DISTINCT ref_category_code
   FROM tbl_category ;
   
  
 -- 열이 여러 개인 distinct
 SELECT 
  	category_code ,
  	orderable_status 
  FROM tbl_menu ;
  
 
 SELECT DISTINCT
 	category_code,
 	orderable_status
   FROM tbl_menu;
  
  
  SELECT DISTINCT  
 	 orderable_status,
 	category_code
   FROM tbl_menu;
   
  