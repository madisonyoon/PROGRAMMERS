-- 가장 최근에 들어온 동물이 언제 들어왔는지 조회 
SELECT DATETIME
FROM ANIMAL_INS
ORDER BY DATETIME DESC
LIMIT 1