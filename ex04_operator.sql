--ex04_operator.sql
/*
1. 산술연산자
+, -, *, /
*/

--산술연산자
SELECT 
    population, 
    area, 
    population + area,
    population - area,
    population * area,
    population / area
FROM 
    tblCountry;
