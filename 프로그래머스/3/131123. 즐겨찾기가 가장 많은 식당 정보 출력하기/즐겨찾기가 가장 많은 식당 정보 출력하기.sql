-- 음식종류별 즐겨찾기수가 가장 많은 식당의 FOOD_TYPE, REST_NAME, FAVORITES/ 음식종류 기준 내림차순
SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
FROM REST_INFO
WHERE FAVORITES IN (SELECT MAX(FAVORITES) FROM REST_INFO GROUP BY FOOD_TYPE)
GROUP BY FOOD_TYPE
ORDER BY FOOD_TYPE DESC