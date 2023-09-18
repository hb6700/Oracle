--movie actor

--번호(PK) 역할명 주조연 배우번호(FK) 영화번호(FK)

CREATE TABLE projectMovieActor(
	seq NUMBER PRIMARY KEY, 								-- 번호
	ROLE VARCHAR2(255) NULL,     							-- 역할명
	mainsub VARCHAR2(255) NOT NULL, 						-- 주/조연
	mseq NUMBER NOT NULL REFERENCES projectmovie(seq),  	-- 영화번호
	aseq NUMBER NOT NULL REFERENCES projectactor(seq) 		-- 배우번호
);

CREATE SEQUENCE maseq;


--[주연]---------------------------------------------------------------------------
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '마석도', '주연', 1, 1);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강해상', '주연', 1, 2);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '전일만', '주연', 1, 3);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '매버릭', '주연', 2, 4);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '루스터', '주연', 2, 5);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '페니', '주연', 2, 6);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '제이크', '주연', 3, 7);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '네이티리', '주연', 3, 8);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '키리', '주연', 3, 9);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '쿼리치', '주연', 3, 10);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '로날', '주연', 3, 11);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이순신', '주연', 4, 12);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '와키자카', '주연', 4, 13);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '어영담', '주연', 4, 14);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '원균', '주연', 4, 15;
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '준사', '주연', 4, 16);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '가토', '주연', 4, 17);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '림철령', '주연', 5, 18);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강진태', '주연', 5, 19);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박민영', '주연', 5, 20);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '잭', '주연', 5, 21);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '장명준', '주연', 5, 22);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '닥터 스트레인지', '주연', 6, 23);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '완다 막시모프/스칼렛 위치', '주연', 6, 24);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박평호', '주연', 7, 25);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김정도', '주연', 7, 26);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '방주경', '주연', 7, 27);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '장철성', '주연', 7, 28);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '조유정', '주연', 7, 29);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '안부장', '주연', 7, 30);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '양보성', '주연', 7, 31);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '전경수', '주연', 8, 32);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '인조', '주연', 8, 19);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오웬 그래디', '주연', 9, 33);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '클레어 디어링', '주연', 9, 34);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '소녀', '주연', 10, 35);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '경희', '주연', 10, 36);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '조현', '주연', 10, 37);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '용두', '주연', 10, 38);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '대길', '주연', 10, 39);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '백', '주연', 10, 40);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '토르', '주연', 11, 41);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '마이티 토르', '주연', 11, 42);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '고르', '주연', 11, 43);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '킹 발키리', '주연', 11, 44);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '코르그(목소리)', '주연', 11, 45);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '그루(목소리)', '주연', 12, 46);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '벨 바텀(목소리)', '주연', 12, 47);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '마스터 조우(목소리)', '주연', 12, 48);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '밥/케빈/스튜어트/미니언즈(목소리)', '주연', 12, 49);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '넌척(목소리)', '주연', 12, 50);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '장 클로드(목소리)', '주연', 12, 51);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '슈리', '주연', 13, 52);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '나키아', '주연', 13, 53);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오코예', '주연', 13, 54);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '인호', '주연', 14, 55);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '재혁', '주연', 14, 56);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '숙희', '주연', 14, 57);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '현수', '주연', 14, 58);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '진석', '주연', 14, 59);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '희진', '주연', 14, 60);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '태수', '주연', 14, 61);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '피터파커/스파이더맨', '주연', 15, 62);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, 'MJ', '주연', 15, 63);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '천우', '주연', 16, 64);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '용호', '주연', 16, 65);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '해준', '주연', 17, 12);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '서래', '주연', 17, 66);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '정안', '주연', 17, 67);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '무륵', '주연', 18, 32);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '가드/썬더', '주연', 18, 68);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이안', '주연', 18, 69);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '문도석', '주연', 18, 70);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '흑설', '주연', 18, 71);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '청운', '주연', 18, 72);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '자장/의사', '주연', 18, 73);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '안중근', '주연', 19, 74);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '설희', '주연', 19, 75);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '조마리아', '주연', 19, 76);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '우덕순', '주연', 19, 77);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '조도선', '주연', 19, 78);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '유동하', '주연', 19, 79);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '마진주', '주연', 19, 80);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '무치', '주연', 20, 81);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '해랑', '주연', 20, 82);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '막이', '주연', 20, 83);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '부흥수', '주연', 20, 84);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '상현', '주연', 21, 55);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '동수', '주연', 21, 85);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '수진', '주연', 21, 86);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '소영', '주연', 21, 87);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이형사', '주연', 21, 88);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '주연', 22, 89);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '주연', 22, 90);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '주연', 22, 91);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '주연', 22, 92);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '주연', 22, 93);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '주연', 22, 94);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강진봉', '주연', 23, 95);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오세연', '주연', 23, 71);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '브루스 웨인/배트맨', '주연', 24, 96);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강도영', '주연', 25, 97);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '전태성', '주연', 25, 98);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오대오', '주연', 25, 99);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '차영한', '주연', 25, 100);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강설영', '주연', 25, 101);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '노정섭', '주연', 25, 102);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '주상숙', '주연', 26, 103);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박희철', '주연', 26, 104);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '봉만식', '주연', 26, 105);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '조태주', '주연', 26, 106);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '봉만순', '주연', 26, 80);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '버스터 문(목소리)', '주연', 27, 107);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '로지타(목소리)', '주연', 27, 108);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '애쉬(목소리)', '주연', 27, 109);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '조니(목소리)', '주연', 27, 110);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '미나(목소리)', '주연', 27, 111);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '노하라 신노스케(짱구)(일본어 목소리)', '주연', 28, 112);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '노하라 미사에(짱구 엄마)(일본어 목소리)', '주연', 28, 113);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '노하라 히로시(짱구 아빠)(일본어 목소리)', '주연', 28, 114);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '노하라 히마와리(짱아)(일본어 목소리)', '주연', 28, 115);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '블랙 아담', '주연', 29, 116);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '알 로스스타인/아톰 스마셔', '주연', 29, 117);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '페이트 박사/켄트 넬슨', '주연', 29, 118);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '맥신 혼켈/사이클론', '주연', 29, 119);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '카터 홀/호크맨', '주연', 29, 120);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아드리아나 토마즈/아이시스', '주연', 29, 121);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김운범', '주연', 30, 122);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '서창대', '주연', 30, 123);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '유민호', '주연', 31, 70);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이희정', '주연', 31, 124);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '네이션', '주연', 32, 62);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '설리', '주연', 32, 125);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박강윤', '주연', 33, 126);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '최민재', '주연', 33, 127);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '황인호', '주연', 33, 128);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '나영빈', '주연', 33, 129);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '나영빈', '주연', 33, 130);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '카미야 토루', '주연', 34, 131);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '히노 마오리', '주연', 34, 132);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '옷코츠 유타(목소리)', '주연', 35, 133);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오리모토 리카(목소리)', '주연', 35, 134);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '대국', '주연', 36, 1);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '지우', '주연', 36, 135);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '(한국어 목소리)', '주연', 37, 136);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '(한국어 목소리)', '주연', 37, 137);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '사토시(일본어 목소리)', '주연', 37, 138);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '피카츄(일본어 목소리)', '주연', 37, 139);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '카스미(일본어 목소리)', '주연', 37, 140);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '타케시(일본어 목소리)', '주연', 37, 141);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이학성', '주연', 38, 142);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '한지우', '주연', 38, 143);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '에도가와 코난(일본어 목소리)', '주연', 39, 144);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '모리 란(일본어 목소리)', '주연', 39, 145);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '모리 코고로(일본어 목소리)', '주연', 39, 146);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김용', '주연', 40, 147);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김무늬', '주연', 40, 148);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '서한솔', '주연', 40, 149);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오영지', '주연', 40, 150);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김은성', '주연', 40, 151);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '모비우스', '주연', 41, 152);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박종두', '주연', 42, 153);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이도일', '주연', 42, 154);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '알파', '주연', 42, 3);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오대웅', '주연', 42, 155);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이석우', '주연', 42, 156);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이다연', '주연', 42, 157);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '고건배', '주연', 42, 158);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '최명주', '주연', 42, 159);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '손수철', '주연', 42, 160);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이경호', '주연', 42, 161);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '뽀로로(목소리)', '주연', 43, 162);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '크롱(목소리)', '주연', 43, 163);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '에디(목소리)', '주연', 43, 164);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '루피(목소리)', '주연', 43, 165);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '패티(목소리)', '주연', 43, 166);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '해리(목소리)', '주연', 43, 167);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '포비(목소리)', '주연', 43, 168);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '꼬마아서/내레이션(목소리)', '주연', 43, 169);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '게드(목소리)', '주연', 43, 170);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '볼트(목소리)', '주연', 43, 171);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '캡틴(목소리)', '주연', 43, 172);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아서 드래곤(목소리)', '주연', 43, 173);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '은하', '주연', 44, 174);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '조경필', '주연', 44, 175);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '백사장', '주연', 44, 73);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '서원', '주연', 44, 176);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강호창', '주연', 45, 122);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, 'OJ헤이우드', '주연', 46, 177);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '에메랄드 헤이우드', '주연', 46, 178);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '리키 주프 박', '주연', 46, 179);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '앤틀러스 홀스트', '주연', 46, 180);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '엔젤', '주연', 46, 181);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '한필주', '주연', 47, 182);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박인규', '주연', 47, 183);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '옥스포드 공작', '주연', 48, 184);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '콘래드', '주연', 48, 185);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '울프(목소리)', '주연', 49, 186);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '스네이크(목소리)', '주연', 49, 187);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '샤크(목소리)', '주연', 49, 188);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '피라냐(목소리)', '주연', 49, 189);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '타란툴라(목소리)', '주연', 49, 190);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '희수', '주연', 50, 191);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '손영감', '주연', 50, 192);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '용강', '주연', 50, 193);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '철진', '주연', 50, 194);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아미', '주연', 50, 195);

--[조연]---------------------------------------------------------------------------

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '장이수', '조연', 1, 196);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오동균', '조연', 1, 197);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강홍석', '조연', 1, 198);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김상훈', '조연', 1, 199);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '최춘백', '조연', 1, 200);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김인숙', '조연', 1, 201);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박영사', '조연', 1, 202);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '장기철', '조연', 1, 203);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '장순철', '조연', 1, 204);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '두익', '조연', 1, 205);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '유종훈', '조연', 1, 206);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이종두', '조연', 1, 207);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김기백', '조연', 1, 208);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '최용기 ', '조연', 1, 209);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박실장 ', '조연', 1, 210);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '사마귀', '조연', 1, 211);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '은갈치', '조연', 1, 212);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '라꾸', '조연', 1, 213);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '까불이', '조연', 1, 214);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '베트남 형사 트란', '조연', 1, 215);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '애꾸선장', '조연', 1, 216);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '식용유 ', '조연', 1, 217);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '짱구', '조연', 1, 218);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '슈퍼 여대생', '조연', 1, 219);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '슈퍼 주인', '조연', 1, 220);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '여비서', '조연', 1, 221);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '화교 살수1', '조연', 1, 222);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '화교 살수2 ', '조연', 1, 223);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '미얀마 살수1', '조연', 1, 224);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '미얀마 살수2', '조연', 1, 225);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '미얀마 살수3', '조연', 1, 226);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '미얀마 살수4', '조연', 1, 227);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '공항 택시기사', '조연', 1, 228);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '외사과 간부', '조연', 1, 229);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '베트남 도박장 건달1', '조연', 1, 230);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '금천경찰서장', '조연', 1, 231);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '휘발유', '조연', 1, 232);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아이스맨 ', '조연', 2, 233);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '혼도', '조연', 2, 234);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '사이클론', '조연', 2, 235);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '월록', '조연', 2, 236);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '피닉스', '조연', 2, 237);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '밥', '조연', 2, 238);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '페이백', '조연', 2, 239);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '팬보이', '조연', 2, 240);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '행맨', '조연', 2, 241);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '프리츠', '조연', 2, 242);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '헤일로 ', '조연', 2, 243);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '코요테', '조연', 2, 244);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '하버드', '조연', 2, 245);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '예일', '조연', 2, 246);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '사라', '조연', 2, 247);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '케인 해군 소장', '조연', 2, 248);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아멜리아', '조연', 2, 249);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오마하', '조연', 2, 250);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '토노와리', '조연', 3, 251);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '노엄', '조연', 3, 252);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '모아트', '조연', 3, 253);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아드모어 장군', '조연', 3, 254);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '스코어스비 ', '조연', 3, 255);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '가빈 박사 ', '조연', 3, 256);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '네테이엄 ', '조연', 3, 257);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '로아크', '조연', 3, 258);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '투크', '조연', 3, 259);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '스파이더 ', '조연', 3, 260);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '츠이레야', '조연', 3, 261);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아오눙', '조연', 3, 262);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '로초', '조연', 3, 263);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '파커', '조연', 3, 264);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '어린 로아크 ', '조연', 3, 265);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '정보름', '조연', 4, 266);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '임준영', '조연', 4, 267);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이억기', '조연', 4, 268);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '나대용', '조연', 4, 196);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '마나베 사마노조', '조연', 4, 77);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '구로다 칸베에', '조연', 4, 269);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이운룡', '조연', 4, 270);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '와타나베 시치에몬', '조연', 4, 271);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '와키자카 사헤에 ', '조연', 4, 272);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '정운', '조연', 4, 273);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '송희립', '조연', 4, 274);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '구키 요시타카', '조연', 4, 275);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '황박', '조연', 4, 276);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이언량', '조연', 4, 277);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김완', '조연', 4, 278);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '신호', '조연', 4, 279);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '권준', '조연', 4, 280);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이기남', '조연', 4, 281);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '정담', '조연', 4, 282);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '고바야카와 다카카케', '조연', 4, 283);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김천손', '조연', 4, 284);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이영남', '조연', 4, 285);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이봉수', '조연', 4, 286);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이광', '조연', 4, 287);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '권율', '조연', 4, 288);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '의병장', '조연', 4, 289);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '어영담부장', '조연', 4, 290);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '안코쿠지', '조연', 4, 291);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 4, 292);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 4, 293);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 4, 294);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 4, 295);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 4, 296);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '권율부장', '조연', 4, 297);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '기생7', '조연', 4, 298);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 4, 299);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '사헤에첩보대7', '조연', 4, 300);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '사헤에첩보대1(사헤에부장)', '조연', 4, 301);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '도도 다카도라', '조연', 4, 302);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '초계변씨(이순신 모)', '조연', 4, 303);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박소연', '조연', 5, 159);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박상위 ', '조연', 5, 270);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김상사', '조연', 5, 304);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김철수', '조연', 5, 305);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강연아 ', '조연', 5, 306);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '원형술', '조연', 5, 307);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김정택', '조연', 5, 308);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '표반장', '조연', 5, 309);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '서형사', '조연', 5, 310);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오덕', '조연', 5, 311);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '종구', '조연', 5, 312);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '양복쟁이', '조연', 5, 313);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '선호', '조연', 5, 314);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '조사장', '조연', 5, 315);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 5, 316);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '보이스피싱팀원1', '조연', 5, 317);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '보이스피싱팀장', '조연', 5, 318);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '보이스피싱팀원2', '조연', 5, 319);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '세르게이', '조연', 5, 320);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '한광성 ', '조연', 5, 102);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '웡', '조연', 6, 321);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아메리카 차베즈', '조연', 6, 322);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '모르도', '조연', 6, 323);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '크리스틴 팔머', '조연', 6, 324);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 6, 325);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 6, 326);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 6, 327);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 6, 328);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 6, 329);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '운반자', '조연', 7, 330);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '천보산', '조연', 7, 331);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '정재성', '조연', 7, 332);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강부장', '조연', 7, 323);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '정도 아내', '조연', 7, 334);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '보안사', '조연', 7, 304);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김순식 장군', '조연', 7, 335);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '남한 대통령', '조연', 7, 336);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, 'CIA 지부장', '조연', 7, 337);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '신기철', '조연', 7, 338);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강기자', '조연', 7, 339);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '목성사 사내2', '조연', 7, 340);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '목성사 사내4', '조연', 7, 341);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '국내팀 요원1', '조연', 7, 342);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강령군 북한군10', '조연', 7, 343);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강령군 북한군12', '조연', 7, 344);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '동경지부 요원6', '조연', 7, 345);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강령군 북한군1', '조연', 7, 346);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강령군 북한군2', '조연', 7, 347);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '목성사 소각 남직원 ', '조연', 7, 348);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '해외팀 요원2', '조연', 7, 349);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '정도 둘째 아들', '조연', 7, 350);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, 'CIA 요원1', '조연', 7, 351);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '동경지부요원1', '조연', 7, 352);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '동경지부요원2', '조연', 7, 72);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '동경지부요원3', '조연', 7, 58);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '동경지부요원4', '조연', 7, 353);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '리중좌', '조연', 7, 354);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '조원식', '조연', 7, 182);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '최대표', '조연', 7, 355);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이형익', '조연', 8, 193);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '최대감', '조연', 8, 356);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '만식', '조연', 8, 130);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '소현세자', '조연', 8, 357);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '소용조씨', '조연', 8, 358);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강빈', '조연', 8, 359);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '석철', '조연', 8, 202);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '서상궁', '조연', 8, 360);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '내금위장', '조연', 8, 361);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '청사신', '조연', 8, 280);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '최상궁', '조연', 8, 362);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '선배의원', '조연', 8, 363);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '대신1', '조연', 8, 364);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '침맞는내관', '조연', 8, 228);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '경수인솔별감1', '조연', 8, 291);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '사내1', '조연', 8, 365);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 8, 366);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강빈(세자)궁녀1', '조연', 8, 367);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '선생', '조연', 8, 368);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '엘리 새틀러', '조연', 9, 369);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '앨런 그랜트', '조연', 9, 370);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이안 말콤', '조연', 9, 371);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '케일라 와츠', '조연', 9, 372);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '램지 콜', '조연', 9, 373);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '메이지 록우드', '조연', 9, 374);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '루이스 독슨 ', '조연', 9, 375);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '헨리 우 박사', '조연', 9, 376);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '배리 셈벤', '조연', 9, 377);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 9, 378);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 9, 379);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 9, 380);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 9, 381);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 9, 382);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 9, 383);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 9, 384);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '변박', '조연', 10, 385);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '톰', '조연', 10, 386);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '미영', '조연', 10, 387);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '토우 여자1', '조연', 10, 388);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '토우 여자2', '조연', 10, 389);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '토우 여자3', '조연', 10, 390);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '토우 미소년', '조연', 10, 391);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '미영친구', '조연', 10, 392);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '흉터소녀', '조연', 10, 393);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '여자아이', '조연', 10, 394);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '산월패션 남직원1 ', '조연', 10, 395);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '조현 팀원1', '조연', 10, 396);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '용두패2', '조연', 10, 317);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '사내1', '조연', 10, 213);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '토우 소녀', '조연', 10, 397);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '장 수하2', '조연', 10, 398);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '용두패7', '조연', 10, 399);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '사내3 ', '조연', 10, 300);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '양주임', '조연', 10, 400);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '장', '조연', 10, 98);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '자윤', '조연', 10, 401);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '마트 행인', '조연', 10, 402);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '제우스', '조연', 11, 403);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '시프', '조연', 11, 404);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '피터 퀼/스타로드', '조연', 11, 33);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '드랙스', '조연', 11, 405);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '네뷸라', '조연', 11, 406);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '맨티스', '조연', 11, 407);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '크래글린', '조연', 11, 408);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '그루트(목소리)', '조연', 11, 409);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '로켓(목소리)', '조연', 11, 410);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 11, 411);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 11, 412);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 11, 413);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '말레나 그루(목소리)', '조연', 12, 414);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '스벤전스(목소리)', '조연', 12, 415);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '스트롱홀드(목소리) ', '조연', 12, 416);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '와일드 너클스(목소리)', '조연', 12, 417);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '네파리오 박사(목소리)', '조연', 12, 418);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '(목소리)', '조연', 12, 419);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '음바쿠', '조연', 13, 420);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '라몬다', '조연', 13, 421);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '네이머', '조연', 13, 422);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '에버렛 로스 ', '조연', 13, 423);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '리리', '조연', 13, 424);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아요', '조연', 13, 425);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아네카', '조연', 13, 426);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아투마', '조연', 13, 427);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '나모라', '조연', 13, 428);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 13, 429);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 13, 430);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 13, 431);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 13, 432);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 13, 433);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 13, 434);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '혜윤', '조연', 14, 435);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박윤철', '조연', 14, 287);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '한박사', '조연', 14, 303);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '임태은 승무원', '조연', 14, 436);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '구민정', '조연', 14, 437);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박수민', '조연', 14, 438);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '미량', '조연', 14, 439);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '원동연 기장', '조연', 14, 330);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박시영 승무원', '조연', 14, 440);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '종수', '조연', 14, 304);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '장영석 기장', '조연', 14, 441);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '윤석', '조연', 14, 338);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '청와대 안보실장', '조연', 14, 442);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '석필호', '조연', 14, 443);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '백장관 보건 복지부 장관', '조연', 14, 444);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오성훈', '조연', 14, 445);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '혜윤친구들', '조연', 14, 446);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '건설사 출장 직원들', '조연', 14, 229);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '취업기념 여행자', '조연', 14, 447);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '백장관 보자관', '조연', 14, 448);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '도쿄 관제소 팀장', '조연', 14, 340);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '도쿄 관제소 팀원', '조연', 14, 449);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '윤석 가족', '조연', 14, 450);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '승무원 동생', '조연', 14, 451);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '외국인 커플', '조연', 14, 452);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '취업기념 여행자', '조연', 14, 453);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '시위대', '조연', 14, 454);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '골프회원', '조연', 14, 455);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '골프회원', '조연', 14, 456);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, 'NSC 앞 기자', '조연', 14, 457);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '브리콤 경비', '조연', 14, 458);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '관제탑 군인', '조연', 14, 346);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '관제팀장2', '조연', 14, 459);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '관제팀원', '조연', 14, 211);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '대응팀 질본위', '조연', 14, 460);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '골프회원', '조연', 14, 461);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '여고생 가족', '조연', 14, 462);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '다이빙 동호회', '조연', 14, 463);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '골프회원', '조연', 14, 464);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '혜윤친구들', '조연', 14, 465);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '비행감시팀장', '조연', 14, 466);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '뉴스앵커', '조연', 14, 467);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '뉴스 아나운서', '조연', 14, 468);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '닥터 스트레인지', '조연', 15, 23);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '네드 리즈', '조연', 15, 469);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '해피 호건', '조연', 15, 470);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '맥스 딜런/일렉트로 ', '조연', 15, 471);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '노먼 오스본/그린 고블린', '조연',15 , 472);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오토 옥타비우스/닥터 옥토퍼스', '조연', 15, 473);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '웡', '조연', 15, 321);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '플래시 톰슨', '조연', 15, 474);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '메이 파커', '조연', 15, 475);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '피터 파커/스파이더맨', '조연', 15, 476);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '피터 파커/스파이더맨', '조연', 15, 477);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '베티 브랜트', '조연', 15, 478);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '클리어리 요원', '조연', 15, 479);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, 'MIT 부총장', '조연', 15, 480);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '윌슨', '조연', 15, 481);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '해링턴', '조연', 15, 482);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '델', '조연',15 , 483);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, 'J. 조나 제임슨', '조연', 15, 484);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '커트 코너스 박사/리저드', '조연', 15, 485);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '맷 머독', '조연', 15, 486);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 15, 487);


INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강대위', '조연', 16, 203);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '연희 ', '조연', 16, 488);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '승일', '조연', 16, 489);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '만철', '조연', 16, 490);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '철진', '조연', 16, 491);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이벤트남', '조연', 16, 492);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '보급관 ', '조연', 16, 493);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김광철', '조연', 16, 232);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '대대장', '조연', 16, 276);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '신병', '조연', 16, 494);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '하중사', '조연', 16, 495);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '북한군들', '조연', 16, 343);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이벤트걸1', '조연', 16, 496);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '최영철 ', '조연', 16, 497);


INSERT INTO projectMovieActor VALUES (maseq.nextVal, '수완', '조연', 17, 64);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '연수', '조연', 17, 498);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '월요일 할머니', '조연', 17, 499);


INSERT INTO projectMovieActor VALUES (maseq.nextVal, '민개인', '조연', 18, 529);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '우왕', '조연', 18, 530);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '좌왕', '조연',18 , 531);


INSERT INTO projectMovieActor VALUES (maseq.nextVal, '최지용', '조연', 19, 550);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이토 히로부미 ', '조연', 19, 551);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '와다', '조연', 19, 318);


INSERT INTO projectMovieActor VALUES (maseq.nextVal, '해금', '조연', 20, 561);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '한궁', '조연', 20, 562);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강섭', '조연', 20, 563);


INSERT INTO projectMovieActor VALUES (maseq.nextVal, '미숙', '조연',21 ,569 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '윤아', '조연', 21,570 );

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 22,571 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 22,572 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 22,573 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 22,574 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 22,575 );

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '여고생 세연', '조연', 23,488 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박정우', '조연', 23, 576);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '여고생 현정', '조연', 23, 542);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '에드워드 내쉬턴 / 리들러', '조연', 24,589 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '셀리나 카일 / 캣우먼', '조연', 24, 590);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오스왈드 코블팟 / 펭귄 역', '조연',24 ,591 );

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김유택', '조연',25 ,597 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '조리장', '조연', 25,598 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강설영', '조연', 25, 599);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '시어머니', '조연',26 ,612 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '고건식', '조연', 26, 613);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박권자 ', '조연',26 ,614 );

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '포르쉐 (목소리)', '조연', 27,628 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '알폰소 (목소리)', '조연', 27,629 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '클레이 (목소리)', '조연', 27,630);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아츠키 치시오 (일본어 목소리)', '조연', 28,632 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '마메자와 사스가 (일본어 목소리)', '조연', 28,633 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '학원장 (일본어 목소리)', '조연', 28,634 );

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연',29 ,641 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 29,642 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 29,643 );

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김영호', '조연', 30,355 );
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이실장', '조연',30 , 72);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강인상', '조연',30 ,646 );

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김세희', '조연',31,657);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '한영석', '조연', 31,658);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '장태수', '조연', 31,659);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '몬카다 ', '조연', 32,668);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '클로이', '조연', 32,669);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '브래독 ', '조연', 32,670);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '서중호 ', '조연', 33,674);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, NULL, '조연', 33,675);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, NULL, '조연', 33,676);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '와타야 이즈미', '조연',34 ,691);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '카미야 사나에', '조연', 34,692);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '히노 코지', '조연', 34,693);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '젠인 마키 (목소리)', '조연', 35,699);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이누마키 토게 (목소리) ', '조연', 35,700);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '판다 (목소리)', '조연', 35,701);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '미정', '조연', 36,723);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '태천', '조연', 36,724);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '왕회장 통역', '조연', 36,725);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '제로 (일본어 목소리)', '조연', 37,728);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '폿챠마 (일본어 목소리)', '조연', 37,729);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '무사시 (일본어 목소리) ', '조연', 37,730);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김근호', '조연',38,100);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '안기철', '조연', 38, 61);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박보람', '조연', 38, 359);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아무로 토오루 (일본어 목소리)', '조연',39 ,735);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '코지마 겐타 (일본어 목소리)', '조연', 39,736);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '사토 미와코 (일본어 목소리) ', '조연', 39,737);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '주근태', '조연', 40,739);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박남해', '조연', 40,740);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박만수', '조연', 40,741);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '마일로 역', '조연',41,746);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '마르틴 역', '조연',41,747);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, 'Jared Harris', '조연',41,748);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, 'Al Madrigal', '조연',41,749);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, 'Tyrese Gibson', '조연',41,750);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, null, '조연',42,751);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김규태 역', '조연',42,752);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '송은지 역', '조연',42,753);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '형사 (이웅재) 역', '조연',42,754);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '형사 (김진석) 역', '조연',42,755);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '형사 (박재우) 역', '조연',42,204);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '두식 역', '조연',44,778);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '한과장 역', '조연',44,586);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아시프 역', '조연',44,779);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '상훈 역', '조연',44,197);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '우실장 역', '조연',44,780);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김씨 역', '조연',44,781);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '도지열 역', '조연',45,789);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '송정욱 역', '조연',45,790);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '건우엄마 역', '조연',45,791);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '정선생 역', '조연',45,158);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박무택 역', '조연',45,792);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '교장 역', '조연',45,793);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, null, '조연',46,177);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, null, '조연',46,799);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, null, '조연',46,800);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, null, '조연',46,801);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, null, '조연',46,802);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, null, '조연',46,803);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, null, '조연',46,804);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김치덕 역', '조연',47,808);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강형사 역', '조연',47,31);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김무진 역', '조연',47,269);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '정백진 역', '조연',47,333);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '양교수 역', '조연',47,809);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '도조 히사시 역', '조연',47,810);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '폴리 역', '조연',48,817);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '숄라 역', '조연',48,818);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '라스푸틴 역', '조연',48,485);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '국왕 역', '조연',48,819);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '모튼 역', '조연',48,820);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '에릭 얀 하누센 역', '조연',48,821);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '마멀레이드 교수 (목소리) 역', '조연',49,827);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '다이앤 폭싱턴 (목소리) 역', '조연',49,828);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, 'TMZ 기자 (목소리) 역', '조연',49,829);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '경찰 서장 (목소리) 역', '조연',49,830);

INSERT INTO projectMovieActor VALUES (maseq.nextVal, '양동 역', '조연',50,831);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '인숙 역', '조연',50,832);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '천달호 역', '조연',50,833);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '남회장 역', '조연',50,834);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '달자 역', '조연',50,835);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '옥사장 역', '조연',50,385);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '도다리 역', '조연',50,197);
INSERT INTO projectMovieActor VALUES (maseq.nextVal, '단가 역', '조연',50,836);


------------------------------------------------------------------------------------------------
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강대위 ', '조연',16 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '연희 ', '조연',16 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '승일', '조연',16 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '만철', '조연',16 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '철진', '조연',16 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이벤트남 ', '조연',16 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '보급관 ', '조연',16 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김광철', '조연',16 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '대대장', '조연',16 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '신병', '조연',16 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '하중사', '조연',16, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '북한군들', '조연',16 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이벤트걸1', '조연',16 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '최영철 ', '조연',16 , );
--
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '수완', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '연수', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '월요일 할머니', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '기도수', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '철성', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '미지', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이지구', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, 'PC방 알바', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '장하주', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '산악구조대 ', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '응급실 의사 ', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '[흰꽃] 무녀 ', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '[흰꽃] 류선생', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '간병업체실장', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '계봉석', '조연',17 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '의경', '조연',17 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '서장', '조연',17 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '서래엄마', '조연',17 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '심사국장 ', '조연',17 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강력1팀장 ', '조연',17 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오가인', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '수면클리닉의사 ', '조연',17 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '자라아줌마', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '[적색비상] 지민 ', '조연',17 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '[적색비상] 고빈 ', '조연',17 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이포 형사1 ', '조연',17 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이포 형사2', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '증인 커플녀', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '증인 커플남 ', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '발전소직원1', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '발전소직원1 ', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '경찰청 조사관 ', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '철성친구1', '조연', 17, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '철성친구3 ', '조연', 17, );
--
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '민개인', '조연', 18, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '우왕', '조연', 18, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '좌왕', '조연',18 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '썬더비행체', '조연',18 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '어린이안', '조연',18 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '개똥이', '조연',18 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '무당도사/외계로봇목소리', '조연',18 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '살인귀', '조연',18 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '삼식이 ', '조연',18 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '동료의사 ', '조연',18 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '무당도사2', '조연',18 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '민선 ', '조연',18 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '어린무륵', '조연',18 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '물안개주막주모', '조연', 18, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '교장', '조연', 18, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '최대감', '조연', 18, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '신부', '조연', 18, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아기 이안', '조연', 18, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아기 이안', '조연',18 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '물안개주막노인', '조연', 18, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '지산병원/하바도심 ', '조연',18 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '기자', '조연',18 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '도둑', '조연', 18, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이안신고경찰/청지기밀본도사', '조연', 18, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '최대감댁 청지기 ', '조연', 18, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '밀본노파 ', '조연', 18, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '현감', '조연', 18, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '홍언년', '조연', 18, );
--
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '최지용', '조연', 19, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이토 히로부미 ', '조연', 19, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '와다', '조연', 19, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '치바', '조연', 19, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '다이스케', '조연', 19, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '어린 의용군 ', '조연', 19, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '궁녀', '조연', 19, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '궁녀', '조연', 19, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '안정근', '조연', 19, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '일본포로', '조연', 19, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '안현생', '조연', 19, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '특별열차 경비 ', '조연', 19, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '마두식 ', '조연', 19, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김아려', '조연', 19, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '명성황후 ', '조연', 19, );
--
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '해금', '조연', 20, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '한궁', '조연', 20, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강섭', '조연', 20, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '아귀', '조연', 20, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '앵두', '조연', 20, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '망초 ', '조연', 20, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 20, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '곰치', '조연', 20, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이방원', '조연', 20, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '평양상인', '조연', 20, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 20, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', ,20 );
--
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '미숙', '조연', 21, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '윤아', '조연', 21, );
--
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 22, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 22, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 22, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 22, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 22, );
--
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '여고생 세연', '조연', 23, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '박정우', '조연', 23, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '여고생 현정', '조연', 23, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강서진', '조연', 23, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강예진', '조연', 23, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '목포사진관 주인 ', '조연', 23, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '민정엄마', '조연', 23, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 23, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '최씨 할아버지', '조연', 23, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '진봉 부 ', '조연', 23, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '진봉 모 ', '조연',23 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '동탄집 아줌마', '조연', 23, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '목포고 당직교사', '조연',23 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '사무장', '조연', 23, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '현정', '조연', 23, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '정아', '조연', 23, );
--
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '예진 담임선생님', '조연', 24, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '예진 담임선생님', '조연', 24, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '에드워드 내쉬턴/리들러', '조연', 24, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '셀리나 카일/캣우먼', '조연', 24, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '오스왈드 코블팟/펭귄 역', '조연',24 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '알프레드 페니워스', '조연', 24, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '제임스 고든', '조연', 24, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '길 콜슨', '조연', 24, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연',24 , );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '', '조연', 24, );
--
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김유택', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '조리장', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '강설영', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '이준위', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '국방부장관', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '김소위', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '수영', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '승조원5', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '승조원9', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '승조원12', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '승조원18', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '성우', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '황영우', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '전태룡', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '한미녀', '조연', 25, );
--INSERT INTO projectMovieActor VALUES (maseq.nextVal, '주임', '조연', 25, );


