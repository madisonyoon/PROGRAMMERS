-- IN 중성화 X, OUT 중성화 O된 동물의 아이디, 생물 종, 이름/아이디 순

SELECT ANIMAL_ID, I.ANIMAL_TYPE, I.NAME
FROM ANIMAL_INS I
    JOIN ANIMAL_OUTS O 
    USING(ANIMAL_ID)
WHERE I.SEX_UPON_INTAKE != O.SEX_UPON_OUTCOME
ORDER BY 1
;