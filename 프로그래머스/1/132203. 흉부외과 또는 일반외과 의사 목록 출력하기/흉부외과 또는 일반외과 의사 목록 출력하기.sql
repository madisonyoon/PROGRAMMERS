-- 이름,ID,진료과,고용일자/DOCTOR/CS OR GS/고용일자 내림차순, 이름 오름차순
SELECT DR_NAME, DR_ID, MCDP_CD, DATE_FORMAT(HIRE_YMD,'%Y-%m-%d') AS HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD='CS' OR MCDP_CD='GS'
ORDER BY HIRE_YMD DESC, DR_NAME;