select 
   menu_code ,
   menu_name ,
   menu_price
  from tbl_menu
 -- 정렬 해주는 녀석
  order by menu_price desc; -- asc : 오름 차순 정렬 , desc : 내림차순 정렬
  
  -- order by 절을 사용하여 결과 집합의 여러 열로 정렬
  select 
     menu_code , 
     menu_name ,
     menu_price
   from tbl_menu
   order by menu_price desc,
   menu_name asc;
   
  
  -- 메뉴의 코드, 이름 메뉴 코드 * 가격을 조회.
  -- 정렬 기준은 코드의 오름차순
  select 
     menu_code ,
     menu_name ,
     menu_code * menu_price
   from tbl_menu order by menu_code asc;
   
  --
  select
     field('A', 'A', 'B', 'C');
     
 select
    field(orderable_status, 'N', 'Y')
    from tbl_menu;
 
 select
    category_code ,
    category_name ,
    ref_category_code 
   from tbl_category
  order by ref_category_code is null desc;
    
 