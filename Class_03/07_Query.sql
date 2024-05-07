/서브 쿼리/  
select     category_code   
 	from tbl_menu tm  
	where menu_name = '민트미역국';  
select 
	menu_code ,   
	menu_name ,   
	menu_price ,  
	orderable_status 
  	from tbl_menu  
 	 where category_code = 
  		(select       
 		 category_code          
  			 from tbl_menu         
  			where menu_name = "홍어마카롱");
   -- from 절에 쓰인 서브쿼리 
 
  select  
 	 max(count)  
 	 from(      
  			select         
  			count() as 'count'     
  			from tbl_menu      
  			group by 
  			category_code    ) 
  			as countmenu;     
  -- 카테고리별 평균 가격보다 높은 가격의 메뉴 조회 
   select      
	   menu_code ,  
	   menu_name ,  
	   menu_price ,   
	   category_code ,  
	   orderable_status  
  		 from tbl_menu a  
   			where menu_price >(
  			 select            
			   avg(menu_price)  
			   from tbl_menu    
			   where category_code = a.category_code); 
   /*exists*/  
   -- 조회 결과가 있을 때 true 아니면 false  
    select        
   		category_name 
   	 from tbl_category a 
   		 where exists(           
   			 select         
    			1           
   			 from tbl_menu b  
   			 where b.category_code = a,category_code );