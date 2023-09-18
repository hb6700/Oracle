--제약사항 : CONSTRAINT projectActor_seq_pk PRIMARY KEY(seq)
--CREATE : ACTOR
CREATE TABLE projectActor(
	seq NUMBER PRIMARY KEY, 		-- 배우번호
	name VARCHAR2(255) NOT NULL  	-- 이름
);

CREATE SEQUENCE seqActor;

SELECT * FROM projectActor;
SELECT * FROM projectActor ORDER BY name;
--관계테이블
DROP TABLE projectactor;
DROP SEQUENCE seqActor;

--INSERT : ACTOR >> 주연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마동석');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '손석구');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최귀화');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '톰 크루즈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마일스 텔러');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '제니퍼 코넬리');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '샘 워싱턴');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조 샐다나');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '시고니 위버');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '스티븐 랭');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '케이트 윈슬렛');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박해일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '변요한');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '안성기');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '손현주');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김성규');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김성균');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '현빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유해진');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤아');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '다니엘 헤니');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '진선규');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '베네딕트 컴버배치');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '엘리자베스 올슨');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이정재');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정우성');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '전혜진');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '허성태');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '고윤정');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김종수');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정만식');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '류준열');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유해진');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '크리스 프랫');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '브라이스 달라스 하워드');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '신시아');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박은빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '서은수');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '진구');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '성유빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조민수');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '크리스 헴스워스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '나탈리 포트만');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '크리스찬 베일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '테사 톰슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '타이카 와이티티');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '스티브 카렐');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '타라지 P.헨슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '양자경');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '피에르 코팽');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '루시 로리스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '장 끌로드 반담');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '레티티아 라이트');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '루피타 뇽오');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '다나이 구리라');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '송강호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이병헌');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '전도연');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김남길');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '임시완');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김소진');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박해준');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '톰 홀랜드');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '젠데이아 콜먼');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '고경표');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이이경');

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박해일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '탕웨이');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이정현');

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '류준열');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김우빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김태리');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '소지섭');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '염정아');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조우진');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김의성');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정성화');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김고은');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '나문희');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조재윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '배정남');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이현우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박진주');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '강하늘');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '한효주');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이광수');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '권상우');

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '송강호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '강동원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '배두나');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '아이유');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이주영');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '에디 레드메인');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '주드 로');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '매즈 미켈슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '댄 포글러');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '앨리슨 수돌');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '에즈라 밀러');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '류승룡');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '염정아');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '로버트 패틴슨');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김래원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이종석');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정상훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박병은');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이상희');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조달환');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '라미란');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김무열');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤경호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '서현우');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박진주');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '매튜 맥커너히');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '리즈 위더스푼');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '스칼렛 요한슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '태런 에저튼');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '토리 켈리');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '코바야시 유미코');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '나라하시 미키');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '모리카와 토시유키');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '코오로기 사토미');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '드웨인 존슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '노아 센티네오');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '피어스 브로스넌');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '퀸테사 스윈델');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '알디스 호지');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '사라 샤이');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '설경구');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이선균');

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '소지섭');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김윤진');

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '톰 홀랜드');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마크 월버그');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조진웅');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최우식');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박희순');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '권율');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박명훈');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '미치에다 슌스케');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '후쿠모토 리코');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '오가타 메구미');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '하나자와 카나');

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마동석');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정경호');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이선호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김영선');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마츠모토 리카');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '오오타니 이쿠에');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '토요구치 메구미');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '우에다 유지');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최민식');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김동휘');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '타카야마 미나미');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '야마자키 와카나');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '코야마 리키야');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '여진구');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조이현');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김혜윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '나인우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '배인혁');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '자레드 레토');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '서인국');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '장동윤');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최귀화');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '성동일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박호산');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정소민');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '고창석');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '장영남');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '손종학');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이성욱');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이선');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이미자');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김현지');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '홍소영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정미숙');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김서영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김환진');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '소연');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김혜성');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이장원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '사문영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '엄상현');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박소담');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '송새벽');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김의성');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정현준');

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '설경구');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '다니엘 칼루유야');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '케케 팔머');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '스티븐 연');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마이클 윈콧');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '브랜든 페레아');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이성민');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '남주혁');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '랄프 파인즈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '해리스 디킨슨');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '샘 록웰');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마크 마론');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '크레이그 로빈슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '안토니 라모스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '아콰피나');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김갑수');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최무성');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '지승현');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이홍내');


--INSERT : ACTOR >> 조연----------------------------------------------------------------
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박지환');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '허동원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '하준');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정재광');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '남문철');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박지영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이주원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '음문석');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김찬형');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이규원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '전진오');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이다일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김영성');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '차우진');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박광재');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최재훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '백승익');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '우강민');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '강덕중');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '송요셉');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '한우열');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '서문호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '권혁범');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박은우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이도은');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김이현');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '허승');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이태규');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최광희');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '권태호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '권지훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '전재형');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김상욱');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '전정일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정수용');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정인기');		--특별출현
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤병희');		--특별출현

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '발 킬머');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '바쉬르 살라후딘');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '존 햄');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '찰스 파넬');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '모니카 바바로');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '루이스 풀먼');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '제이 엘리스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '대니 라미레스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '글렌 파월');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '매니 자신토');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '왕중흔');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '그렉 타잔 데이비스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '제이크 피킹');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '레이몬드 리');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '진 루이자 켈리');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '에드 해리스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '릴리아나 레이');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '잭 슈마허');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '클리프 커티스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조엘 무어');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, 'C.C.H.파운더');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '에디 팔코');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '브렌던 코웰');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '저메인 클레멘트');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '제이미 플래터스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '브리테인 돌턴');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '트리니티 조-리 블리스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '잭 챔피언');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '베일리 베이스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '필리프 겔조');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '듀언 에반스 주니어');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '지오바니 리비시');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '클로에 콜맨');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김향기');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '택연');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '공명');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박지환');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조재윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤제문');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박재민');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이서준');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김재영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤진영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김강일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이준혁');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김민재');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김구택');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '손경원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '안성봉');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이운산');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김영웅');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '공정환');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '배현성');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김대명');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정예훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '현봉식');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김한민');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김현태');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김문종');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '고한민');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '현직');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김한솔');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박인국');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이상군');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '함진성');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '곽민호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '강보라');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김무섭');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최홍락');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김기호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김명곤');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '문숙');				--특별출연

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '장영남');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '임성재');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤상화');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박민하');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '전국환');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '전배수');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이해영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '서동원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이승훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이제연');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박형수');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이민지');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박종환');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '한아름별');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최동구');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김중희');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '설찬미');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김원해');			--특별출연
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조달환');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '베네딕트 웡');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '소치틀 고메즈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '치웨텔 에지오포');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '레이첼 맥아담스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마이클 스털버그');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '셰일라 아팀');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '에덴 나덴슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '애덤 허길');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '아코 미첼');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '임형국');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정경순');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정재성');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '송영창');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '강경헌');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '임성재');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정성모');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '손성호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '폴배틀');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김학선');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '오만석');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박윤희');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최민');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김찬영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정용식');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '태윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박중근');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김동형');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김시원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박정환');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최우준');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '권은성');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조나단 에런 그로프');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박성웅');				--우정출연
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조우진');				--우정출연
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김남길');				--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '주지훈');				--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '황정민');				--우정출연
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이성민');				--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유재명');				--우정출연

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최무성');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조성하');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박명훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김성철');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '안은진');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조윤서');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이주원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김예은');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정석원');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '안성봉');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김채원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '류성현');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김승태');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김상욱');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '고한민');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '노정현');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '안지안');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '온유리');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '강진휘');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '로라 던');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '샘 닐');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '제프 골드블럼');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '드완다 와이즈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마무드 애시');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이사벨라 서먼');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '캠벨 스코트');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '비디 웡');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '오마르 사이');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '저스티스 스미스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '다니엘라 피네다');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '스콧 헤이즈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '디첸 라크맨');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '크리스토퍼 폴라하');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '프레야 파커');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '알렉산더 오웬');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '차순배');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '저스틴 하비');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '변서윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '채원빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '서이라');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정라엘');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김기해');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '장재영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정예진');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '신연우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '모그');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '지민');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최동구');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '우강민');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '방예인');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤기창');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정진우');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최홍락');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '신영옥');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이종석');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김다미');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '엄태구');			--우정출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '러셀 크로우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '제이미 알렉산더');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '크리스 프랫');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '데이브 바티스타');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '카렌 길런');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '폼 클레멘티프');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '숀 건');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '빈 디젤');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '브래들리 쿠퍼');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '벤 팔콘');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '스테판 커리');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '데일리 피어슨');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '줄리 앤드류스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '돌프 룬드그렌');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '대니 트레조');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '알란 아르킨');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '러셀 브랜드');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '르자');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윈스턴 듀크');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '안젤라 바셋');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '테노치 우에르타 메히야');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마틴 프리먼');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '도미니크 손');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '플로렌스 카숨바');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '미카엘라 코엘');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '알렉스 리비놀리');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마벨 카데나');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이자크 드 방콜레');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '대니 사파니');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '자이나브 자흐');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '소프 알루코');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '코니 치우메');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '트레버 노아');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '우미화');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '현봉식');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '문숙');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '설인아');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '권한솔');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김보민');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김국희');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '임형국');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이열음');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '임성재');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이상현');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김학선');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '남명렬');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정종열');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김호정');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이현균');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이수미');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '전정일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '지웅배');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이하은');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박윤희');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '서해윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김소운');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '옥윤중');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '모리스 터너 주니어');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤민수');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김한상');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '황현빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '변우종');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '강준석');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '하수호');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김동형');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김진혁');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최재훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '강영구');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤세웅');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이미라');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '석보배');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '오재균');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '진미사');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '변진수');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '왕종명');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이재은');			--특별출연

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '베네딕트 컴버배치');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '제이콥 배털런');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '존 파브로');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '제이미 폭스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윌렘 데포');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '알프레드 몰리나');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '베네딕트 웡');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '토니 레볼로리');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마리사 토메이');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '앤드류 가필드');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '토비 맥과이어');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '앵거리 라이스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '아리안 모아예드');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '폴라 뉴섬');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '한니발 버레스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마틴 스타');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, 'J.B. 스무브');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, 'J. K. 시몬스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '리스 이판');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '찰리 콕스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '토마스 헤이든 처치');

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '음문석');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박세완');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이순원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '곽동연');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김민호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김재민');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '류승수');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤병희');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이준혁');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '신원호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '서정우');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정용식');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '오혜금');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '남도윤');

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '고경표');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김신영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정영숙');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유승목');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '서현우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정이서');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이학주');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정소리');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '황재원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '신안진');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김도연');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '고민시');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '차서원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '주인영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '손관호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정혁');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤성원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최선자');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '진용욱');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '안진상');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정하담');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최대훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김미화');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '곽은진');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '안성봉');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김성곤');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '문순주');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '현직');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '한서울');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김도담');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '문정대');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이재하');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박용우');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박정민');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유태오');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이하늬');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '신정근');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이시훈');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김대명');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최유리');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김기천');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤병희');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '차건우');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤경호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '옥자연');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이현결');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김민서');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김민준');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이선희');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '백현주');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최광제');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '심달기');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김제인');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김루아');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김강일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김단비');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '장윤우');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김찬형');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김선혁');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '변진수');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김해숙');			--특별출연
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유재명');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '전여빈');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '장기용');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김승락');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김중희');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '나오토 노지마');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이기동');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '엄지성');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '허유리');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '류인영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김중돈');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '지웅배');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '권라희');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이우진');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조우진');			--특별출연
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '장영남');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이일화');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '채수빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '세훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김성오');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박지환');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이정현');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박훈');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '성동일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김기두');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '한재영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '원우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김상경');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김기방');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최희진');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '류지안');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '칼럼 터너');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '제시카 윌리엄스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '빅토리아 예이츠');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윌리엄 나디람');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '리차드 코일');

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박세완');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '옹성우');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '심달기');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '하현상');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김다인');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유순웅');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이세령');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김민정');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '전무송');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박영규');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김혜옥');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '신신애');			--특별출연
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김종수');			--특별출연
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '고창석');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '염혜란');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김선영');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '류현경');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '폴 다노');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조 크라비츠');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '콜린 파렐');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '앤디 서키스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '제프리 라이트');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '피터 사스가드');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '존 터투로');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '제이미 로슨');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '우지현');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '노성은');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '신윤주');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이종욱');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박진수');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '한민엽');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '남태훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이화영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '신영찬');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김동연');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조강혁');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '나현우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이민기');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '차은우');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김슬기');			--특별출연
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '강경헌');			--우정출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김용림');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '신재휘');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '배해선');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '성열석');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이진희');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '장원형');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최지혜');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '장윤우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '강숙');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '홍인아');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '고성');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤두준');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유준상');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김재화');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김지성');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '온주완');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤사봉');			--우정출연
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '나문희');			--우정출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '할시');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '퍼렐 윌리엄스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '보노');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '가스제닝스');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '히로하시 료');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '무라세 아유무');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '야마구치 타로');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '사이토 아야카');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이나다 테츠');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '카메이 요시코');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '사쿠마 레이');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '나카 리이사');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '후와짱');				--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조셉 갯');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '나탈리 번');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마르완 켄자리');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '비올라 데이비스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '울리 라투케푸');

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유재명');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조우진');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박인환');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이해영');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김성오');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '전배수');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '서은수');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김종수');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤경호');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박형수');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김새벽');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정재성');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤세웅');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최광제');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '송요셉');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '성일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박세준');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '임승민');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김병철');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '배종옥');			--특별출연
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '진선규');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이재원');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김지훈');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김주령');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '장인섭');			--우정출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '나나');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최광일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '홍서준');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박미현');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '서영주');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '황선희');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '한갑수');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김용호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이강진');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김단비');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김병남');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박현숙');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '안토니오 반데라스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '소피아 알리');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '타티 가브리엘');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '스티븐 웨딩턴');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조셉 발더라마');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '앨라나 보든');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이얼');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이현욱');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '백현진');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박정범');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '원현준');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '손인용');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '연제욱');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '차엽');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이도군');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤진영');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김그림');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '임철형');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '곽민석');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '남문철');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박상훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박재철');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김상욱');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정수용');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김선웅');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '변동준');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '강후재');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '후루카와 코토네');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마츠모토 호노카');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '노마구치 토오루');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '미즈노 마키');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '하기와라 마사토');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마에다 코키');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '니시가키 쇼');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '노나미 마호');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '코마츠 미카코');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '우치야마 코우키');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '세키 토모카즈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '나카무라 유이치');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '사쿠라이 타카히로');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이와타 미츠오');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '쿠로다 타카야');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '야마데라 코이치');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '토쿠이 소라');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이토 시즈카');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '하야미 쇼');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마츠다 리사에');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마츠다 사츠미');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '엔도 아야');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '하야시 이사무');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '미츠이시 코토노');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '미키 신이치로');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '츠다 켄지로');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '키무라 스바루');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '히노 사토시');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '쿠기미야 리에');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이노우에 마리나');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '아카사키 치나츠');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '마츠오카 요시츠구');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '오나라');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최병모');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김혜원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박민관');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김선웅');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '장윤우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '오연서');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '나카무라 시도');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '코자쿠라 에츠코');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '하야시바라 메구미');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '미키 신이치로');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이누야마 이누코');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이시즈카 운쇼');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '야마데라 코이치');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '나카가와 쇼코');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '미나미 아키나');

--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박병은');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박해준');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조윤서');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최재훈');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '후루야 토루');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '타카기 와타루');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유야 아츠코');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '시라이시 마이');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '노재원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '남민우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '신주협');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '여주하');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '임유빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김보윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박서후');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '맷 스미스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '아드리아 아르조나');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '자레드 해리스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '알 마드리갈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '타이레스 깁슨');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '우민지');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정문성');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '홍지윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '권오율');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김문학');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김찬형');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정수교');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '심우성');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정재훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유현수');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김기창');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '엄준기');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박봉준');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '신성민');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '강신철');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이승훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '안지혜');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '강정우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김대한');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김진만');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조성구');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤기창');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '성령');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김민철');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유상재');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '임주환');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '신승환');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정성일');			--우정출연
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '권율');				--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '권수현');			--우정출연
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이홍내');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김강훈');			--우정출연

--뽀로로 조연 없음

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '연우진');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '염혜란');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '한현민');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '허동원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '오륭');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '조희봉');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '백도겸');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '권혁범');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤대열');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '신수오');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유이준');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '전석호');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최덕문');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유승호');			--우정출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '오달수');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '천우희');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '문소리');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '고창석');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김홍파');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '강신일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '남기애');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이미은');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '전국향');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '성유빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유재상');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정택현');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이승훈');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '렌 슈미트');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '키스 데이비드');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '데본 그레이에');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '테리 노타리');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '바비 페레이라');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '도너 밀스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '오즈 퍼킨스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '제니퍼 라플러');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '앤드류 패트릭 랄스톤');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박근형');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정만식');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤제문');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '송영창');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '문창길');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박병호');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최민철');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '남문철');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '양현민');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박세현');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박서연');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김율호');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '홍인아');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김홍파');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '젬마 아터튼');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '디몬 하운수');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '리스 이판');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '톰 홀랜더');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '매튜 구드');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '다니엘 브륄');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '찰스 댄스');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '아론 테일러-존슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '크리스티안 반츨 네크라소프');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '알렉산드라 마리아 라라');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '스탠리 투치');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '리처드 아이오와디');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '재지 비츠');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '릴리 싱');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '알렉스 보스타인');

INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김해곤');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤지혜');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정호빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김종구');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이영석');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '차순배');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '허동원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이호철');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '이성우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '배명진');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정기섭');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김강일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '성낙경');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '현봉식');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '유순웅');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최홍일');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '백수희');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '허지원');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '양희명');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정영록');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤대열');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤탁');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '최광제');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '양지수');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '서정우');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김주희');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '박진수');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김단비');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '노민아');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '한희림');
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '애주');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '김병남');
--INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '윤제문');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor.nextVal, '정영주');			--특별출연

