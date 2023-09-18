--      1. 조회수 순서대로 가져오시오.(순위, 영화명)
SELECT seq, title
FROM movie
ORDER BY audience asc;

--      2. '유해진' 배우가 출연한 영화를 가져오시오.
SELECT *
FROM movie m
INNER JOIN movieactor ma ON m.seq = ma.mseq
INNER JOIN actor a ON ma.aseq = a.seq
WHERE a.name = '유해진';

--      3. '박희곤' 감독이 제작한 영화를 가져오시오.
SELECT *
FROM movie m
INNER JOIN moviedirector ma ON m.seq = md.mseq
INNER JOIN director d ON ma.aseq = d.seq
WHERE d.name = '박희곤';

--      4. 수상 내역이 있는 영화를 가져오시오.
SELECT *
FROM movie
WHERE award IS NOT NULL;

--      5. 관객 평점 9.0 이상 받은 영화를 가져오시오.
SELECT *
FROM movie
WHERE rate > 9;

--      6. 네티즌 평점이 8점 이상인 영화를 가져오시오.
SELECT *
FROM movie
WHERE rate > 8;

--      7. 영화의 명대사를 영화 제목과 함께 가져오시오.
SELECT m.name, l.line
FROM movie m
INNER JOIN movieline ml ON m.seq = ml.mseq
INNER JOIN line l ON ml.aseq = l.seq;

--      8. 등록된 50개의 영화중 가장 많은 영화에 참여한 배우를 가져오시오.
SELECT a.name
FROM movie m
INNER JOIN movieactor ma ON m.seq = ma.mseq
INNER JOIN actor a ON ma.aseq = a.seq
GROUP BY ma.aseq 
HAVING count(*) = (SELECT max(count(*)) FROM movieactor INNER JOIN actor ON movieactor.aseq = actor.seq GROUP BY movieactor.aseq);

--      9. '드라마'와 '코미디' 2개 장르에 속한 영화를 가져오시오.
SELECT *
FROM movie m
INNER JOIN moviegenre mg ON m.seq = mg.mseq
INNER JOIN genre g ON mg.aseq = g.seq
WHERE g.name = '드라마' AND g.name = '코미디';

--      10. 러닝타임이 120분 미만인 영화를 가져오시오.
SELECT *
FROM movie
WHERE runningtime < 120

--      11. 15세 이상 관람가 영화를 가져오시오.
SELECT *
FROM movie m
INNER JOIN moviegenre mg ON m.seq = mg.mseq
INNER JOIN grade g ON mg.aseq = g.seq
WHERE g.name = '15세이용가' OR g.name = '청소년관람불가';

--      12. 누적 관객 10,000,000명이 넘는 영화를 가져오시오.
SELECT *
FROM movie
WHERE audience >= 10000000;


