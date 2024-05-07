/* cast functions */
-- 데이터베이스에서 데이터의 형변환을 이해한다.

SELECT AVG(menu_price) FROM tbl_menu;
SELECT CAST(AVG(menu_price) AS SIGNED INTEGER) AS '평균 메뉴 가격' FROM tbl_menu;
SELECT CONVERT(AVG(menu_price), SIGNED INTEGER) AS '평균 메뉴 가격' FROM tbl_menu;

SELECT CAST('2023$5$30' AS DATE);
SELECT CAST('2023/5/30' AS DATE);
SELECT CAST('2023%5%30' AS DATE);
SELECT CAST('2023@5@30' AS DATE);

-- 카테고리별 메뉴 가격 합계 구하기
SELECT CONCAT(CAST(menu_price AS CHAR(5)), '원') FROM tbl_menu;

-- 카테고리별 메뉴 가격 합계 구하기
SELECT category_code, CONCAT(CAST(SUM(menu_price) AS CHAR(10)), '원') FROM tbl_menu GROUP BY category_code;

/* 암시적 형변환(Implicit Conversion) */
SELECT '1' + '2';    -- 각 문자가 정수로 변환됨
SELECT CONCAT(menu_price, '원') FROM tbl_menu;    -- menu_price가 문자로 변환됨
SELECT 3 > 'MAY';    -- 문자는 0으로 변환된다.
SELECT 5 > '6MAY';   -- 문자에서 첫번째로 나온 숫자는 정수로 전환된다.
SELECT 5 > 'M6AY';   -- 숫자가 뒤에 나오면 문자로 인식되어 0으로 변환된다.
SELECT '2023-5-30';  -- 날짜형으로 바뀔 수 있는 문자는 DATE형으로 변환된다.