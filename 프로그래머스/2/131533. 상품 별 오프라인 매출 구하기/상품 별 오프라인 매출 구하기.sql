-- 매출액 합계 출력/ 매출액 기준 내림차순 정렬, 상품코드 기준 오름차순 정렬
SELECT P.PRODUCT_CODE, SUM(O.SALES_AMOUNT*P.PRICE) AS SALES
FROM PRODUCT P JOIN OFFLINE_SALE O USING (PRODUCT_ID)
GROUP BY P.PRODUCT_CODE
ORDER BY 2 DESC, 1