-- 전체 조회
SELECT ADMIN_ID
     , ADMIN_PWD
     , NAME
     , FAIL_CNT
  FROM HOME_ADMIN;

-- admin, test 만 조회
SELECT ADMIN_ID
     , ADMIN_PWD
     , NAME
     , FAIL_CNT
  FROM HOME_ADMIN
 WHERE ADMIN_ID IN ('admin', 'test');

-- id 여러 개 FAIL_CNT를 0으로 update
UPDATE HOME_ADMIN
  SET FAIL_CNT = 0
 WHERE ADMIN_ID IN ('test', 'info');

-- update (최종)
-- FAIL_CNT는 0으로 초기화
-- ADMIN_PWD는 1111로 초기화
UPDATE HOME_ADMIN
  SET FAIL_CNT = 0						-- 비밀번호 틀린 횟수 0으로 초기화
    , ADMIN_PWD = 1111					-- password 초기화
 WHERE ADMIN_ID = :P_FAILCNT_ID;	-- 해당 id 입력

-- 181127 쿼리 넘김
UPDATE HOME_ADMIN
  SET FAIL_CNT = 0						-- 비밀번호 틀린 횟수 0으로 초기화
    , ADMIN_PWD = 1111					-- password 1111로 초기화
 WHERE ADMIN_ID = 'admin';			-- id: admin