-- ID,이름,성별,중성화여부 조회/이름이 Lucy, Ella, Pickle, Rogan, Sabrina, Mitty/ID순 오름차순 정렬
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME='Lucy' OR NAME='Ella' OR NAME='Pickle' OR NAME='Rogan' OR NAME='Sabrina' OR NAME= 'Mitty'
ORDER BY ANIMAL_ID;