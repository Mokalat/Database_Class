/*DML(data manipulation language)*/

-- INSERT, UPDATE, DELEtE, SELECT(DQL)
-- : 데이터 조작 언어, 테이블에 값을 상비하거나, 수정하거나
-- 삭제하거나, 조회하는 언어

-- INSERT 
-- 새로운 행을 추가하는 구문이다.
-- 테이블 행의 수가 증가한다.

insert into tbl_menu values(null,'바나나해장국', 8500,4 ,'y');

insert  into tbl_menu (
	menu_name ,menu_price ,category_code ,orderable_status 
)values(
	'초콜릭죽',6000,7,'y'
);

-- 등록하는 컬럼의 순서는 상관 없다.
-- 단 컬럼의 순서에 맞는 값을 매칭해야 한다.
insert  into tbl_menu (
	menu_name ,orderable_status ,category_code , menu_price
)values(
	'빽사이즈 아메리카노','y',7,3000
);

-- multi insert
insert into tbl_menu 
	values (null,'바나나 해장국',8500,4,'y'),
 		   (null,'뼈다귀 해장국',8500,4,'y'),
	       (null,'왕뚝배기 해장국',8500,4,'y');
	
	
select *from tbl_menu;


-- update
-- 테이블에서 기록된 컬럼의 값을 수정하는 구문이다.
-- 테이블의 전체 행 갯수는 변화가 없다.

select 
	menu_code,
	category_code
	from tbl_menu
	where menu_name ="바나나해장국";
	

update tbl_menu 
set menu_name ="바나나 탕후루"
where menu_code = 22;

-- 가상의 view를 형성해서 조회
-- mysql은 oracle과 달리 update나 delete 시 자신 테이블의 데이터를 사용하면 1093 에러가 발생한다.
update tbl_menu 
set category_code  =6
where menu_code = (	
	select 
		menu_code 
		from(
			select
				menu_code 
				from tbl_menu 
				where menu_name ="바나나 탕후루"
		) as tmp
);


select * from tbl_menu;

-- DELETE

delete from tbl_menu 
	order by menu_price; desc 
	limit 2;
	
delete from tbl_menu 
where menu_price = 8500;

-- replace
-- insert 시 primary key 또는 unique key가 충돌이 발생 할 수 있다면
-- replace를 통해 중복된 데이터를 덮어 쓸 수 있다.

replace into tbl_menu tm values(12,'참기름라떼', 5000, 10, 'y');
insert into tbl_menu tm values(12,'참기름라떼', 5000, 10, 'y');

select * from tbl_menu;