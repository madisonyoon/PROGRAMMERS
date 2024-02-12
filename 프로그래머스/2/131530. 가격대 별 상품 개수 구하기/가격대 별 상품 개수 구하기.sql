-- 만원 단위 가격대 별로 상품 개수 출력/가격대 기준 오름차순 정렬
SELECT (PRICE-(PRICE%10000)) PRICE_GROUP, COUNT(*) PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP