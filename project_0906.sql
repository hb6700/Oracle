--제약사항 : CONSTRAINT projectActor_seq_pk PRIMARY KEY(seq)
--CREATE : ACTOR
CREATE TABLE projectActor(
	seq NUMBER PRIMARY KEY, 		-- 배우번호
	name VARCHAR2(255) NOT NULL  	-- 이름
);

CREATE SEQUENCE seqActor;

--관계테이블


--INSERT : ACTOR >> 주연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마동석');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '손석구');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최귀화');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '톰 크루즈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마일스 텔러');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '제니퍼 코넬리');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '샘 워싱턴');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조 샐다나');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '시고니 위버');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '스티븐 랭');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '케이트 윈슬렛');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '박해일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '변요한');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '안성기');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '손현주');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김성규');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김성균');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '현빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '유해진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤아');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '다니엘 헤니');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '진선규');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '베네딕트 컴버배치');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '엘리자베스 올슨');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '이정재');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정우성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '전혜진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '허성태');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '고윤정');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김종수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정만식');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '류준열');
--INSERT INTO projectActor (seq, name) VALUES (seqActor, '유해진');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '크리스 프랫');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '브라이스 달라스 하워드');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '신시아');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박은빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '서은수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '진구');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '성유빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조민수');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '크리스 헴스워스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '나탈리 포트만');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '크리스찬 베일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '테사 톰슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '타이카 와이티티');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '스티브 카렐');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '타라지 P.헨슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '양자경');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '피에르 코팽');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '루시 로리스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '장 끌로드 반담');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '레티티아 라이트');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '루피타 뇽오');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '다나이 구리라');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '송강호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이병헌');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '전도연');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김남길');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '임시완');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김소진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박해준');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '톰 홀랜드');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '젠데이아 콜먼');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '고경표');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이이경');

--INSERT INTO projectActor (seq, name) VALUES (seqActor, '박해일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '탕웨이');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이정현');

--INSERT INTO projectActor (seq, name) VALUES (seqActor, '류준열');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김우빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김태리');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '소지섭');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '염정아');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조우진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김의성');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '정성화');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김고은');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '나문희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조재윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '배정남');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이현우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박진주');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '강하늘');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '한효주');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이광수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '권상우');

--INSERT INTO projectActor (seq, name) VALUES (seqActor, '송강호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '강동원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '배두나');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '아이유');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이주영');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '에디 레드메인');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '주드 로');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '매즈 미켈슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '댄 포글러');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '앨리슨 수돌');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '에즈라 밀러');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '류승룡');
--INSERT INTO projectActor (seq, name) VALUES (seqActor, '염정아');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '로버트 패틴슨');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '김래원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이종석');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정상훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박병은');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이상희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조달환');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '라미란');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김무열');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤경호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '서현우');
--INSERT INTO projectActor (seq, name) VALUES (seqActor, '박진주');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '매튜 맥커너히');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '리즈 위더스푼');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '스칼렛 요한슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '태런 에저튼');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '토리 켈리');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '코바야시 유미코');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '나라하시 미키');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '모리카와 토시유키');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '코오로기 사토미');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '드웨인 존슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '노아 센티네오');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '피어스 브로스넌');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '퀸테사 스윈델');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '알디스 호지');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '사라 샤이');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '설경구');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이선균');

--INSERT INTO projectActor (seq, name) VALUES (seqActor, '소지섭');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김윤진');

--INSERT INTO projectActor (seq, name) VALUES (seqActor, '톰 홀랜드');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마크 월버그');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '조진웅');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최우식');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박희순');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '권율');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박명훈');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '미치에다 슌스케');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '후쿠모토 리코');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '오가타 메구미');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '하나자와 카나');

--INSERT INTO projectActor (seq, name) VALUES (seqActor, '마동석');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정경호');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '이선호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김영선');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마츠모토 리카');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '오오타니 이쿠에');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '토요구치 메구미');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '우에다 유지');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '최민식');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김동휘');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '타카야마 미나미');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '야마자키 와카나');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '코야마 리키야');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '여진구');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조이현');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김혜윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '나인우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '배인혁');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '자레드 레토');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '서인국');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '장동윤');
--INSERT INTO projectActor (seq, name) VALUES (seqActor, '최귀화');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '성동일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박호산');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정소민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '고창석');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '장영남');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '손종학');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이성욱');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '이선');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이미자');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김현지');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '홍소영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정미숙');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김서영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김환진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '소연');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김혜성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이장원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '사문영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '엄상현');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '박소담');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '송새벽');
--INSERT INTO projectActor (seq, name) VALUES (seqActor, '김의성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정현준');

--INSERT INTO projectActor (seq, name) VALUES (seqActor, '설경구');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '다니엘 칼루유야');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '케케 팔머');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '스티븐 연');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마이클 윈콧');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '브랜든 페레아');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '이성민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '남주혁');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '랄프 파인즈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '해리스 디킨슨');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '샘 록웰');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마크 마론');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '크레이그 로빈슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '안토니 라모스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '아콰피나');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '정우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김갑수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최무성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '지승현');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이홍내');


--INSERT : ACTOR >> 조연----------------------------------------------------------------
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박지환');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '허동원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '하준');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정재광');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '남문철');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박지영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이주원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '음문석');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김찬형');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이규원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '전진오');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이다일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김영성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '차우진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박광재');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최재훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '백승익');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '우강민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '강덕중');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '송요셉');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '한우열');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '서문호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '권혁범');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박은우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이도은');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김이현');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '허승');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이태규');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최광희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '권태호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '권지훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '전재형');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김상욱');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '전정일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정수용');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정인기');		--특별출현
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤병희');		--특별출현

INSERT INTO projectActor (seq, name) VALUES (seqActor, '발 킬머');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '바쉬르 살라후딘');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '존 햄');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '찰스 파넬');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '모니카 바바로');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '루이스 풀먼');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '제이 엘리스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '대니 라미레스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '글렌 파월');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '매니 자신토');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '왕중흔');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '그렉 타잔 데이비스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '제이크 피킹');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '레이몬드 리');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '진 루이자 켈리');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '에드 해리스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '릴리아나 레이');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '잭 슈마허');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '클리프 커티스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조엘 무어');
INSERT INTO projectActor (seq, name) VALUES (seqActor, 'C.C.H.파운더');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '에디 팔코');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '브렌던 코웰');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '저메인 클레멘트');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '제이미 플래터스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '브리테인 돌턴');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '트리니티 조-리 블리스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '잭 챔피언');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '베일리 베이스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '필리프 겔조');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '듀언 에반스 주니어');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '지오바니 리비시');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '클로에 콜맨');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '김향기');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '택연');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '공명');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박지환');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조재윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤제문');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박재민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이서준');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김재영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤진영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김강일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이준혁');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김민재');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김구택');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '손경원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '안성봉');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이운산');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김영웅');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '공정환');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '배현성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김대명');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정예훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '현봉식');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김한민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김현태');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김문종');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '고한민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '현직');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김한솔');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박인국');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이상군');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '함진성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '곽민호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '강보라');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김무섭');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최홍락');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김기호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김명곤');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '문숙');				--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '장영남');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '임성재');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤상화');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박민하');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '전국환');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '전배수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이해영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '서동원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이승훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이제연');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박형수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이민지');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박종환');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '한아름별');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최동구');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김중희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '설찬미');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김원해');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조달환');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '베네딕트 웡');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '소치틀 고메즈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '치웨텔 에지오포');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '레이첼 맥아담스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마이클 스털버그');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '셰일라 아팀');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '에덴 나덴슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '애덤 허길');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '아코 미첼');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '임형국');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정경순');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정재성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '송영창');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '강경헌');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '임성재');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정성모');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '손성호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '폴배틀');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김학선');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '오만석');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박윤희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김찬영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정용식');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '태윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박중근');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김동형');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김시원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박정환');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최우준');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '권은성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조나단 에런 그로프');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박성웅');				--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조우진');				--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김남길');				--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '주지훈');				--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '황정민');				--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이성민');				--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '유재명');				--우정출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '최무성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조성하');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박명훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김성철');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '안은진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조윤서');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이주원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김예은');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정석원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '안성봉');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김채원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '류성현');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김승태');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김상욱');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '고한민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '노정현');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '안지안');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '온유리');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '강진휘');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '로라 던');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '샘 닐');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '제프 골드블럼');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '드완다 와이즈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마무드 애시');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이사벨라 서먼');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '캠벨 스코트');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '비디 웡');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '오마르 사이');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '저스티스 스미스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '다니엘라 피네다');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '스콧 헤이즈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '디첸 라크맨');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '크리스토퍼 폴라하');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '프레야 파커');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '알렉산더 오웬');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '차순배');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '저스틴 하비');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '변서윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '채원빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '서이라');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정라엘');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김기해');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '장재영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정예진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '신연우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '모그');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '지민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최동구');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '우강민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '방예인');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤기창');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정진우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최홍락');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '신영옥');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이종석');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김다미');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '엄태구');			--우정출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '러셀 크로우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '제이미 알렉산더');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '크리스 프랫');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '데이브 바티스타');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '카렌 길런');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '폼 클레멘티프');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '숀 건');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '빈 디젤');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '브래들리 쿠퍼');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '벤 팔콘');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '스테판 커리');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '데일리 피어슨');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '줄리 앤드류스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '돌프 룬드그렌');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '대니 트레조');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '알란 아르킨');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '러셀 브랜드');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '르자');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '윈스턴 듀크');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '안젤라 바셋');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '테노치 우에르타 메히야');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마틴 프리먼');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '도미니크 손');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '플로렌스 카숨바');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '미카엘라 코엘');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '알렉스 리비놀리');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마벨 카데나');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이자크 드 방콜레');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '대니 사파니');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '자이나브 자흐');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '소프 알루코');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '코니 치우메');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '트레버 노아');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '우미화');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '현봉식');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '문숙');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '설인아');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '권한솔');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김보민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김국희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '임형국');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이열음');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '임성재');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이상현');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김학선');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '남명렬');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정종열');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김호정');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이현균');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이수미');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '전정일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '지웅배');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이하은');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박윤희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '서해윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김소운');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '옥윤중');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '모리스 터너 주니어');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤민수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김한상');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '황현빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '변우종');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '강준석');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '하수호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김동형');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김진혁');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최재훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '강영구');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤세웅');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이미라');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '석보배');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '오재균');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '진미사');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '변진수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '왕종명');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이재은');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '베네딕트 컴버배치');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '제이콥 배털런');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '존 파브로');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '제이미 폭스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윌렘 데포');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '알프레드 몰리나');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '베네딕트 웡');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '토니 레볼로리');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마리사 토메이');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '앤드류 가필드');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '토비 맥과이어');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '앵거리 라이스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '아리안 모아예드');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '폴라 뉴섬');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '한니발 버레스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마틴 스타');
INSERT INTO projectActor (seq, name) VALUES (seqActor, 'J.B. 스무브');
INSERT INTO projectActor (seq, name) VALUES (seqActor, 'J. K. 시몬스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '리스 이판');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '찰리 콕스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '토마스 헤이든 처치');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '음문석');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박세완');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이순원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '곽동연');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김민호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김재민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '류승수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤병희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이준혁');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '신원호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '서정우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정용식');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '오혜금');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '남도윤');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '고경표');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김신영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정영숙');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '유승목');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '서현우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정이서');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이학주');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정소리');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '황재원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '신안진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김도연');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '고민시');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '차서원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '주인영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '손관호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정혁');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤성원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최선자');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '진용욱');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '안진상');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정하담');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최대훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김미화');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '곽은진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '안성봉');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김성곤');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '문순주');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '현직');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '한서울');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김도담');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '문정대');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이재하');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박용우');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박정민');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '유태오');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '이하늬');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '신정근');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이시훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김대명');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최유리');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김기천');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤병희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '차건우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤경호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '옥자연');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이현결');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김민서');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김민준');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이선희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '백현주');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최광제');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '심달기');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김제인');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김루아');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김강일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김단비');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '장윤우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김찬형');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김선혁');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '변진수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김해숙');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '유재명');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '전여빈');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '장기용');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김승락');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김중희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '나오토 노지마');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이기동');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '엄지성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '허유리');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '류인영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김중돈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '지웅배');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '권라희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이우진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조우진');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '장영남');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이일화');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '채수빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '세훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김성오');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박지환');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이정현');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '성동일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김기두');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '한재영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '원우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김상경');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김기방');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '최희진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '류지안');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '칼럼 터너');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '제시카 윌리엄스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '빅토리아 예이츠');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윌리엄 나디람');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '리차드 코일');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '박세완');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '옹성우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '심달기');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '하현상');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김다인');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '유순웅');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이세령');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김민정');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '전무송');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박영규');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김혜옥');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '신신애');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김종수');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '고창석');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '염혜란');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김선영');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '류현경');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '폴 다노');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조 크라비츠');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '콜린 파렐');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '앤디 서키스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '제프리 라이트');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '피터 사스가드');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '존 터투로');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '제이미 로슨');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '우지현');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '노성은');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '신윤주');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이종욱');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박진수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '한민엽');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '남태훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이화영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '신영찬');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김동연');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조강혁');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '나현우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이민기');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '차은우');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김슬기');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '강경헌');			--우정출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '김용림');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '신재휘');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '배해선');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '성열석');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이진희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '장원형');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최지혜');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '장윤우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '강숙');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '홍인아');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '고성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤두준');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '유준상');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김재화');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김지성');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '온주완');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤사봉');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '나문희');			--우정출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '할시');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '퍼렐 윌리엄스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '보노');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '가스제닝스');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '히로하시 료');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '무라세 아유무');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '야마구치 타로');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '사이토 아야카');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이나다 테츠');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '카메이 요시코');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '사쿠마 레이');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '나카 리이사');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '후와짱');				--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '조셉 갯');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '나탈리 번');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마르완 켄자리');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '비올라 데이비스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '울리 라투케푸');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '유재명');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조우진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박인환');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이해영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김성오');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '전배수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '서은수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김종수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤경호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박형수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김새벽');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정재성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤세웅');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최광제');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '송요셉');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '성일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박세준');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '임승민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김병철');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '배종옥');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '진선규');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이재원');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김지훈');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김주령');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '장인섭');			--우정출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '나나');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최광일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '홍서준');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박미현');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '서영주');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '황선희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '한갑수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김용호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이강진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김단비');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김병남');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박현숙');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '안토니오 반데라스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '소피아 알리');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '타티 가브리엘');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '스티븐 웨딩턴');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조셉 발더라마');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '앨라나 보든');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '이얼');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이현욱');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '백현진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박정범');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '원현준');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '손인용');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '연제욱');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '차엽');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이도군');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤진영');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김그림');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '임철형');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '곽민석');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '남문철');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박상훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박재철');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김상욱');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정수용');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김선웅');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '변동준');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '강후재');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '후루카와 코토네');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마츠모토 호노카');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '노마구치 토오루');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '미즈노 마키');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '하기와라 마사토');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마에다 코키');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '니시가키 쇼');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '노나미 마호');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '코마츠 미카코');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '우치야마 코우키');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '세키 토모카즈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '나카무라 유이치');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '사쿠라이 타카히로');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이와타 미츠오');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '쿠로다 타카야');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '야마데라 코이치');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '토쿠이 소라');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이토 시즈카');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '하야미 쇼');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마츠다 리사에');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마츠다 사츠미');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '엔도 아야');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '하야시 이사무');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '미츠이시 코토노');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '미키 신이치로');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '츠다 켄지로');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '키무라 스바루');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '히노 사토시');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '쿠기미야 리에');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이노우에 마리나');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '아카사키 치나츠');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '마츠오카 요시츠구');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '오나라');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최병모');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김혜원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박민관');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김선웅');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '장윤우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '오연서');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '나카무라 시도');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '코자쿠라 에츠코');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '하야시바라 메구미');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '미키 신이치로');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이누야마 이누코');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이시즈카 운쇼');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '야마데라 코이치');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '나카가와 쇼코');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '미나미 아키나');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '박병은');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박해준');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조윤서');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최재훈');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '후루야 토루');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '타카기 와타루');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '유야 아츠코');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '시라이시 마이');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '노재원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '남민우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '신주협');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '여주하');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '임유빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김보윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박서후');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '맷 스미스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '아드리아 아르조나');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '자레드 해리스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '알 마드리갈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '타이레스 깁슨');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '우민지');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정문성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '홍지윤');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '권오율');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김문학');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김찬형');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정수교');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '심우성');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정재훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '유현수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김기창');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '엄준기');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박봉준');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '신성민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '강신철');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이승훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이승훈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '안지혜');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '강정우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김대한');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김진만');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조성구');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤기창');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '성령');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김민철');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '유상재');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '임주환');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '신승환');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정성일');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '권율');				--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '권수현');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이홍내');			--우정출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김강훈');			--우정출연

--뽀로로 조연 없음

INSERT INTO projectActor (seq, name) VALUES (seqActor, '연우진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '염혜란');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '한현민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '허동원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '오륭');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '조희봉');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '백도겸');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '권혁범');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '권혁범');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤대열');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '신수오');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '유이준');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '전석호');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최덕문');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '유승호');			--우정출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '오달수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '천우희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '문소리');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '고창석');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김홍파');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '강신일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '남기애');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이미은');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '전국향');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '성유빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '유재상');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이미은');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정택현');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이승훈');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '렌 슈미트');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '키스 데이비드');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '데본 그레이에');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '테리 노타리');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '바비 페레이라');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '도너 밀스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '오즈 퍼킨스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '오즈 퍼킨스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '제니퍼 라플러');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '앤드류 패트릭 랄스톤');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '박근형');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정만식');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤제문');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '송영창');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '문창길');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박병호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최민철');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '남문철');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '양현민');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박세현');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박서연');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김율호');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '홍인아');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김홍파');			--특별출연

INSERT INTO projectActor (seq, name) VALUES (seqActor, '젬마 아터튼');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '디몬 하운수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '리스 이판');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '톰 홀랜더');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '매튜 구드');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '다니엘 브륄');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '찰스 댄스');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '아론 테일러-존슨');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '크리스티안 반츨 네크라소프');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '알렉산드라 마리아 라라');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '스탠리 투치');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '리처드 아이오와디');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '재지 비츠');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '릴리 싱');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '알렉스 보스타인');

INSERT INTO projectActor (seq, name) VALUES (seqActor, '김해곤');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤지혜');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정호빈');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김종구');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이영석');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '차순배');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '허동원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이호철');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '이성우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '배명진');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정기섭');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김강일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '성낙경');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '현봉식');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '유순웅');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최홍일');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '백수희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '허지원');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '양희명');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정영록');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤대열');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤탁');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '최광제');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '양지수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '서정우');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김주희');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '박진수');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김단비');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '노민아');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '한희림');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '애주');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '김병남');
INSERT INTO projectActor (seq, name) VALUES (seqActor, '윤제문');			--특별출연
INSERT INTO projectActor (seq, name) VALUES (seqActor, '정영주');			--특별출연

