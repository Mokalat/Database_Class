/*Transaction*/
-- mysql은 기본적으로 commit이 자동으로 되므로 수동으로 조절하고 싶다면 autocommit 설정을 변경해야한다.
-- auto commit 활성화
set autocommit = 1;
-- 또는
set autocommit = on;

-- autocommit 비황성화

set autocommit = 0;
-- 또는
set autocommit = off;

start transaction;
select * from tbl_menu;

insert into tbl_menu value (null, '바나나해장국',8500,4'y');
update tbl_menu set menu_name= '수정된 메뉴' where menu_code =10;
delete from tbl_menu where menu_code = 7;

commit;
rollback;