CREATE TABLE users(						--회원
	id varchar2(20) PRIMARY KEY,		--아이디
	password varchar2(20) NOT NULL,		--비밀번호
	name varchar2(20) NOT NULL,			--이름
	email varchar2(40) NOT NULL,		--이메일
	address varchar2(100) NOT NULL,		--주소
	phone varchar2(20) NOT NULL,		--전화번호
	udate DATE DEFAULT sysdate		  	--가입일
);

CREATE TABLE product(					--상품
	pcode number(5) PRIMARY KEY,		--상품코드
	category varchar2(20) NOT NULL,		--카테고리	
	subcategory varchar2(20) NOT NULL,	--서브카테고리	
	name varchar2(100) NOT NULL,		--이름
	price number(7) NOT NULL,			--가격
	content varchar2(1000) NOT NULL,	--설명
	image varchar2(50) NOT NULL			--사진	
);
CREATE SEQUENCE pcode_seq;				

CREATE TABLE cart(						--장바구니
	ccode number(5) PRIMARY KEY,		--장바구니코드
	id varchar2(20) NOT NULL,			--아이디(FK)
	pcode number(5) NOT NULL,			--상품코드(FK)
	quantity number(5) NOT NULL,		--수량
	totalPrice number(7) NOT NULL,		--총가격
--	FOREIGN KEY (id) REFERENCES users(id),
--	FOREIGN KEY (pcode) REFERENCES product(pcode)
);
CREATE SEQUENCE ccode_seq;

CREATE TABLE orders(					--주문
	ocode number(5) PRIMARY KEY,		--주문코드
	id varchar2(20) NOT NULL,			--아이디(FK)
	pcode number(5) NOT NULL,			--상품코드(FK)
	quantity number(5) NOT NULL,		--수량
	totalPrice number(7) NOT NULL,		--총가격
	odate DATE DEFAULT sysdate,			--주문일
--	FOREIGN KEY (id) REFERENCES users(id),
--	FOREIGN KEY (pcode) REFERENCES product(pcode)
);
ALTER TABLE orders ADD ccode number(5);
ALTER TABLE orders ADD FOREIGN KEY (ccode) REFERENCES cart(ccode);
ALTER TABLE orders ADD FOREIGN KEY (id) REFERENCES users(id); --나중에 실행
CREATE SEQUENCE ocode_seq;

CREATE TABLE review(					--리뷰
	rcode number(5) PRIMARY KEY,		--리뷰코드
	pcode number(5) NOT NULL,			--상품코드(FK)
	ocode number(5) NOT NULL,			--주문코드(FK)
	grade number(5)	NOT NULL,			--평점
	review varchar2(1000) NOT NULL,		--내용
	ip varchar2(20) NOT NULL,			--ip
	rdate DATE DEFAULT sysdate,			--작성일
	FOREIGN KEY (pcode) REFERENCES product(pcode),
	FOREIGN KEY (ocode) REFERENCES orders(ocode)
);
CREATE SEQUENCE rcode_seq;

INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','양곡류','현미',23000,'원산지:전남 신안
용량:4kg
보관법:1.개봉 후에는 반드시 다른용기에 옮겨 보관하세요
	 2.직사광선과 습기를 피해 서늘한 곳에서 보관하세요.'
,'1현미.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','양곡류','찹쌀',13000,'원산지:국내산
용량:2kg
보관법:1.개봉 후 냉장보관을 하세요.
	 2.직사광선과 습기를 피해 서늘한 곳에서 보관하세요.'
,'2찹쌀.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','양곡류','팥',11000,'원산지:국내산
용량:1kg
보관법:1.개봉 후에는 적두를 담은 용기 바닥에 소금을 뿌려 놓으면 더 오래보관이 가능합니다.
	 2.직사광선과 습기를 피해 서늘한 곳에서 보관하세요.'
,'3팥.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','양곡류','쌀',14500,'원산지:국내산
용량:4kg
보관법:1.개봉 후에는 밀폐가능한 용기에 담아 냉장고 채소칸에 보관하면 좋습니다.
	 2.직사광선과 습기를 피해 서늘한 곳에서 보관하세요.'
,'4쌀.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','양곡류','흑미',5600,'원산지:국내산
용량:1kg
보관법:1.개봉 후에는 밀봉한 상태로 냉장실에 보관하세요.
	 2.직사광선과 습기를 피해 서늘한 곳에서 보관하세요.'
,'5흑미.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','채소','쌈(상추&깻잎)',4000,'원산지:국내산
용량:200g
세척법:드시기 전 흐르는 물로 깨끗하게 씻어 주세요.
유의사항:산지 수급상황에 따라 구성되는 채소의 종류 및 품목별 중량이 달라 질수 있어요.'
,'6쌈채소.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','채소','파프리카',4000,'원산지:국내산
용량:200g
세척법:드시기 전 흐르는 물로 깨끗하게 씻은 후, 손으로 꼭지를 뗴면서 안의 씨앗도 함계 제거하세요.
유의사항:원물의 색상과 크기, 총 수량이 조금씩 다를 수 있습니다.'
,'7파프리카.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','채소','청양고추',4300,'원산지:국내산
용량:200g
세척법:베이킹소다를 뿌린뒤 고루 묻도록 섞어주었다가 흐르는 물로 깨끗하게 세척하세요. 
유의사항:특성상 제품마다 크기 및 총 수량이 다를수 있으나 전체 중량은 동일합니다.'
,'8청양고추.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','채소','대파',2400,'원산지:국내산
용량:500g
세척법:드시기 전 흐르는 물로 깨끗하게 씻어 주세요.
유의사항:수확시기 및 환경에 따라 뿌리와 줄기 부분의 비율에 차이가 있을수 있습니다.'
,'9대파.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','채소','밤고구마',3700,'원산지:국내산
용량:800g
보관법:수령 즉시 고구마를 꺼내 신문지 위에 넓게 펼친 뒤, 낮은 온도와 습기를 피해 통풍이 잘되는 상온에 말려주세요.
유의사항:1.고구마 표연에 찍히거나 긁힌 부분이 발견되는건 수확시 자연스럽게 발생하는 현상이므로 안심하세요.
	  2.보내 드리는 고구마는 출하 전 숙성과정을 거치는데 수확과정에서 생긴 일부 상처를 스스로 회복합니다.'
,'10밤고구마.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','채소','마늘',6000,'원산지:국내산
용량:200g
보관법:냉동 보관하세요.
유의사항:해동된 제품은 재냉동 시키지 마세요.'
,'11마늘.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','과일','딸기',11000,'원산지:국내산
용량:500g
보관법:1.딸기를 세척하지 않은상태로 꼭지가 아래를 향하도록 나란히 세워주세요.
	 2.딸기끼리 서로 닿지 않도록 키친타월로 칸막이를 만들어 주세요.
세척법:베이킹소다,과일 세정제 등을 푼 물에 담갔다가 흐르는 물로 가볍게 행궈주시면 좋습니다.'
,'12딸기.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','과일','바나나',4000,'원산지:국내산
용량:1.2kg
보관법:1.초록빛이 도는 원물 수령시 상온에서 1~3일 정도 후숙하세요.
	 2.후숙시 일부 바나나 껍질이 반으로 갈라질수 있는데 원물이 익으면서 생기는 자연스러운 현상이니 참고하세요.
	 3.냉장 보관하세요.'
,'13바나나.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','과일','방울토마토',4700,'원산지:국내산
용량:500g
보관법:상한 방울토마토가 없는지 확인한 후 꼭지를 제거한 상태로 냉장 보관하세요.
세척법:흐르는 물로 가볍게 행궈주세요.'
,'14방울토마토.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','과일','배',10000,'원산지:국내산
용량:3kg
보관법:1.하나씩 신문지나 종이로 감싼 뒤 냉장 보관하세요.
	 2.레몬즙을 뿌린 물이나 설탕물에 살짝 담가두면 갈변 현상을 막을 수 있습니다.
세척법:흐르는 물로 가볍게 행궈주세요.'
,'15배.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'농산물','과일','곶감',75000,'원산지:국내산
용량:1.5kg
보관법:냉동보관'
,'16곶감.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'수산물','생선','삼치',10000,'원산지:국내산
용량:500g
보관법:냉동보관'
,'17삼치.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'수산물','생선','갈치',18500,'원산지:국내산
용량:400g
보관법:냉동보관'
,'18갈치.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'수산물','생선','동태전',6000,'원산지:국내산
용량:300g
보관법:냉동보관'
,'19동태전.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'수산물','생선','연어회',12000,'원산지:국내산
용량:200g
보관법:냉장보관'
,'20연어회.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'수산물','생선','참다랑어뱃살',33000,'원산지:국내산
용량:200g
보관법:1.냉동보관
	 2.5일이내에 드셔야 고유의 품질과 맛을 느낄수 있어요.'
,'21참다랑어뱃살.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'수산물','갑각류','새우살',6300,'원산지:국내산
용량:200g
보관법:냉동실에 보관하시고 해동 후에는 다시 냉동하지 마세요.'
,'22새우살.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'수산물','패류','꼬막',8600,'원산지:국내산
용량:1kg
보관법:냉장 보관하세요.
세척법:흐르는 물에 껍데기를 서로 부딪혀 가며 여러번 씻어주세요.'
,'23꼬막.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'수산물','패류','전복',16500,'원산지:국내산
용량:250g
보관법:냉장 보관하세요.
세척법:1.전복을 흐르는 물에 깨끗하게 씻은 후 솔을 이용해 패각과 살부분을 말끔하게 한번 더 씻으세요.
	 2.숟가락을 전복의 살과 패각 사이에 깊숙이 밀어 넣어 패각과 전복 살을 분리합니다.
	 3.전복 살에 붙어 있는 내장을 잘라내세요.'
,'24전복.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'수산물','패류','조개',9500,'원산지:국내산
용량:1kg
보관법:냉장 보관하세요.
세척법:1.흐르는 물에 깨끗하게 씻은 후 소금물에 넣어주세요.
	 2.검정 비닐로 덮은 뒤 최소 반나절 정도 냉장고에 넣어주세요.
	 3.소금으로 비벼 준 뒤 흐르는 물로 불순물을 다시 한번 씻어주세요.'
,'25조개.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'수산물','패류','홍합',5000,'원산지:국내산
용량:1kg
보관법:냉장 보관하세요.
세척법:1.흐르는 물에 깨끗하게 씻으세요.'
,'26홍합.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'축산물','우육','한우안심',25000,'원산지:국내산
용량:250g
보관법:냉장 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'27한우안심.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'축산물','우육','한우등심',18600,'원산지:국내산
용량:250g
보관법:냉장 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'28한우등심.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'축산물','우육','한우장조림',13000,'원산지:국내산
용량:250g
보관법:냉장 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'29한우장조림.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'축산물','우육','한우채끝살',16000,'원산지:국내산
용량:250g
보관법:냉장 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'30한우채끝살.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'축산물','우육','한우스테이크',30000,'원산지:국내산
용량:200g
보관법:냉장 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'31한우스테이크.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'축산물','돈육','삼겹살',15000,'원산지:국내산
용량:600g
보관법:냉동 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'32삼겹살.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'축산물','돈육','힌돈대패삼겹살',13000,'원산지:국내산
용량:1kg
보관법:냉동 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'33한돈대패삼겹살.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,  '축산물',  '돈육',  '힌돈목살',  15000,  '원산지:국내산
용량:600g
보관법:냉장 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'34한돈목살.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,  '축산물',  '돈육',  '힌돈갈비',  13000,  '원산지:국내산
용량:800g
보관법:냉동 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'35한돈갈비.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,  '축산물',  '돈육',  '힌돈앞다리',  7000,  '원산지:국내산
용량:600g
보관법:냉동 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'36한돈앞다리.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,  '축산물',  '오리',  '훈제오리',  11000,  '원산지:국내산
용량:500g
보관법:냉동 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'37훈제오리.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,  '축산물',  '오리',  '오리슬라이스',  12000,  '원산지:국내산
용량:500g
보관법:냉장 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'38오리슬라이스.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,  '축산물',  '닭고기',  '닭다리',  7000,  '원산지:국내산
용량:400g
보관법:냉장 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'39닭다리.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,  '축산물',  '닭고기',  '닭날개',  7000,  '원산지:국내산
용량:300g
보관법:냉장 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'40닭날개.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,  '축산물','닭고기','닭볶음용',7500,'원산지:국내산
용량:800g
보관법:냉장 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'41닭볶음용.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'축산물','닭고기','닭안심살',10000,'원산지:국내산
용량:800g
보관법:냉동 보관하세요.
참고:특성상 모양과 크기는 조금씩 다를수 있습니다.'
,'42닭안심살.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','햄류','스모크햄',5000,'원산지:국내산
용량:500g
보관법:냉장 보관하세요.
알레르기 유발물질:대두, 밀, 돼지고기, 쇠고기, 조개류.'
,'43스모크햄.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','햄류','컨츄리소시지',5400,'원산지:국내산
용량:350g
보관법:냉장 보관하세요.
알레르기 유발물질:대두, 돼지고기, 쇠고기.'
,'44컨츄리소시지.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','만두','군만두',7000,'원산지:국내산
용량:1.4kg
보관법:냉동 보관하세요.
알레르기 유발물질:대두, 밀, 돼지고기, 쇠고기, 우유.'
,'45군만두.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','만두','찐만두',9700,'원산지:국내산
용량:1.4kg
보관법:냉동 보관하세요.
알레르기 유발물질:대두, 밀, 돼지고기, 쇠고기, 우유.'
,'46찐만두.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','만두','물만두',11200,'원산지:국내산
용량:1.3kg
보관법:냉동 보관하세요.
알레르기 유발물질:대두, 밀, 돼지고기, 쇠고기.'
,'47물만두.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','튀김','김말이튀김',7700,'원산지:국내산
용량:1kg
보관법:냉동 보관하세요.
알레르기 유발물질:대두, 밀, 우유, 쇠고기.'
,'48김말이튀김.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','튀김','동태전튀김',20300,'원산지:국내산
용량:1kg
보관법:냉동 보관하세요.
알레르기 유발물질:대두, 밀, 계란.'
,'49동태전튀김.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','튀김','생선까스',37000,'원산지:국내산
용량:1.2kg
보관법:냉동 보관하세요.
알레르기 유발물질:대두, 밀, 계란, 새우.'
,'50생선까스.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','튀김','돈까스',17950,'원산지:국내산
용량:1.8kg
보관법:냉동 보관하세요.
알레르기 유발물질:대두, 밀, 우유, 돼지고기.'
,'51돈까스.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','부침','김치전',11150,'원산지:국내산
용량:1kg
보관법:냉동 보관하세요.
알레르기 유발물질:대두, 밀, 우유, 쇠고기, 새우, 오징어.'
,'52김치전.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','부침','해물파전',12550,'원산지:국내산
용량:1kg
보관법:냉동 보관하세요.
알레르기 유발물질:대두, 밀, 우유, 쇠고기, 새우, 오징어.'
,'53해물파전.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','조미료','맛소금',2100,'원산지:국내산
용량:1kg
보관법:직사광선을 피하고 서늘한 실온에 보관하여 주십시오.
유통기한: 제조일로부터 5년까지'
,'54맛소금.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','조미료','식초',3900,'원산지:국내산
용량:1.8L
보관법:이물질이 들어가지 않도록 사용 후 캡을 닫아 서늘한 장소에 보관하여 주십시오.
유통기한: 하단 표시일 까지'
,'55식초.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','장류','고추장',24550,'원산지:국내산
용량:3kg
보관법:직사 광선을 피하시고 냉장보관 하세요.
유통기한: 후면 표시일 까지'
,'56고추장.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','장류','쌈장',4750,'원산지:국내산
용량:500g
보관법:직사 광선을 피하시고 냉장보관 하세요.
유통기한: 별도 표시일 까지'
,'57쌈장.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'가공식품','장류','된장',3500,'원산지:국내산
용량:500g
보관법:직사 광선을 피하시고 냉장보관 하세요.
유통기한: 후면 중앙 표시일 까지'
,'58된장.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','일회용품','빨대',5600,'생산지:국내산
수량:500개
반품 및 교환장소: 구입처'
,'59빨대.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','일회용품','숟가락',3000,'생산지:국내산
수량:100개
반품 및 교환장소: 구입처'
,'60숟가락.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','일회용품','포크',3000,'생산지:국내산
수량:100개
반품 및 교환장소: 구입처'
,'61포크.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','일회용품','그릇',12000,'생산지:국내산
수량:10개
반품 및 교환장소: 구입처'
,'62일회용그릇.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','일회용품','종이컵',19000,'생산지:국내산
수량:2000개
반품 및 교환장소: 구입처'
,'63종이컵.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','일회용품','냅킨',14800,'생산지:국내산
수량:80밴드
반품 및 교환장소: 구입처'
,'64냅킨.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','일회용품','물티슈',12500,'생산지:국내산
수량:1개=100매
반품 및 교환장소: 구입처'
,'65물티슈.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','주방용퓸','호일',3000,'생산지:국내산
치수:25cm X 30Ho
반품 및 교환장소: 구입처'
,'66호일.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','주방용퓸','크린백',4600,'생산지:국내산
규격:30cm X 45cm, 100매
반품 및 교환장소: 구입처'
,'67크린백.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','주방용퓸','크린랲',2900,'생산지:국내산
규격:25cm X 35cm, 100매
반품 및 교환장소: 구입처'
,'68크린랲.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','주방용퓸','위생장갑',900,'생산지:국내산
수량:50매
반품 및 교환장소: 구입처'
,'69위생장갑.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','기타','노트',2400,'생산지:국내산
수량:1개=600원
반품 및 교환장소: 구입처'
,'70노트.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','기타','볼펜',9000,'생산지:국내산
수량:1개=1000원
반품 및 교환장소: 구입처'
,'71볼펜.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','기타','화이트',14400,'생산지:국내산
수량:1개=1200원
반품 및 교환장소: 구입처'
,'72화이트.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','기타','건전지',14000,'생산지:국내산
수량:AAA 40개
반품 및 교환장소: 구입처'
,'73건전지.PNG'
);
INSERT INTO Product VALUES (pcode_seq.nextval,'소모품','기타','USB',8500,'생산지:국내산
타입:3.0 C타입
용량:32GB
반품 및 교환장소: 구입처'
,'74USB.PNG'
);
SELECT * FROM Product ts;

--필요시 테이블 및 데이터 삭제
DROP TABLE users;
DROP TABLE product;
DROP TABLE cart;
DROP TABLE orders;
DROP TABLE review;
TRUNCATE TABLE users;
TRUNCATE TABLE product;
TRUNCATE TABLE cart;
TRUNCATE TABLE orders;
TRUNCATE TABLE review;
DROP SEQUENCE pcode_seq;
DROP SEQUENCE ccode_seq;
DROP SEQUENCE ocode_seq;
DROP SEQUENCE rcode_seq;

