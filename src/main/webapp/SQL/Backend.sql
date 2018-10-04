

/* Create Sequences */

CREATE SEQUENCE SEQ_comments_comment_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_comment_comment_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_emp_emp_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_event_request_req_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_faq_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_liked_planner_liked_p_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_liked_review_liked_r_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_liked_tour_liked_t_id INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_notice_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_photobook_book_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_planit_event_event_id INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_planner_planner_id INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_p_ask_planit_ask_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_reservation_reservation_id INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_review_review_id INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_u_ask_planit_ask_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_u_ask_p_ask_no INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE comments
(
	comment_no number NOT NULL,
	review_id number NOT NULL,
	id nvarchar2(10) NOT NULL,
	cotent nvarchar2(150) NOT NULL,
	postdate date NOT NULL,
	refer number NOT NULL,
	step number NOT NULL,
	depth number NOT NULL,
	PRIMARY KEY (comment_no)
);


CREATE TABLE content
(
	contentid nvarchar2(10) NOT NULL,
	contenttype nchar(2) NOT NULL,
	homepage  nvarchar2(30),
	 tel nvarchar2(0),
	 title nvarchar2(0) NOT NULL,
	 firstimage nvarchar2(100),
	 firstimage2 nvarchar2(100),
	 areacode nvarchar2(10) NOT NULL,
	 sigungucode nvarchar2(50),
	 cat1 nvarchar2(15),
	cat2 nvarchar2(15),
	cat3 nvarchar2(15),
	addr1 nvarchar2(30),
	addr2 nvarchar2(30),
	 zipcode char(5),
	mapx nvarchar2(30) NOT NULL,
	mapy nvarchar2(30) NOT NULL,
	mlevel nvarchar2(10),
	overview nvarchar2(2000),
	 imagename nvarchar2(1000),
	originimgurl nvarchar2(100),
	 serialnum nvarchar2(12),
	 smallimageurl nvarchar2(100),
	PRIMARY KEY (contentid)
);


CREATE TABLE contenttype
(
	contenttype nchar(2) NOT NULL,
	kor nvarchar2(15) NOT NULL,
	PRIMARY KEY (contenttype)
);


CREATE TABLE dept
(
	dept_no number NOT NULL,
	name nvarchar2(10) NOT NULL,
	PRIMARY KEY (dept_no)
);


CREATE TABLE emp
(
	emp_no number NOT NULL,
	e_id nvarchar2(10) NOT NULL,
	pwd nvarchar2(20) NOT NULL,
	name nvarchar2(10) NOT NULL,
	tel nvarchar2(15) NOT NULL,
	email nvarchar2(40) NOT NULL,
	hiredate date DEFAULT SYSDATE NOT NULL,
	dept_no number NOT NULL,
	position nvarchar2(10) NOT NULL,
	PRIMARY KEY (emp_no)
);


CREATE TABLE event_request
(
	req_no number NOT NULL,
	p_id nvarchar2(15) NOT NULL,
	title nvarchar2(30) NOT NULL,
	content nvarchar2(2000) NOT NULL,
	sampleimage nvarchar2(1000) NOT NULL,
	status nvarchar2(10) NOT NULL,
	period nvarchar2(20) NOT NULL,
	reqdate date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (req_no)
);


CREATE TABLE faq
(
	no number NOT NULL,
	title nvarchar2(30) NOT NULL,
	content nvarchar2(2000) NOT NULL,
	emp_no number NOT NULL,
	PRIMARY KEY (no)
);


CREATE TABLE liked_planner
(
	liked_p_no number NOT NULL,
	planner_id number NOT NULL,
	id nvarchar2(10) NOT NULL,
	PRIMARY KEY (liked_p_no)
);


CREATE TABLE liked_review
(
	liked_r_no number NOT NULL,
	id nvarchar2(10) NOT NULL,
	review_id number NOT NULL,
	PRIMARY KEY (liked_r_no)
);


CREATE TABLE liked_tour
(
	liked_t_id number NOT NULL,
	id nvarchar2(10) NOT NULL,
	contentid nvarchar2(10) NOT NULL,
	PRIMARY KEY (liked_t_id)
);


CREATE TABLE member
(
	id nvarchar2(10) NOT NULL,
	email nvarchar2(50) NOT NULL,
	pwd nvarchar2(200) NOT NULL,
	-- Y/N
	verified char(1) NOT NULL,
	 regidate date DEFAULT SYSDATE NOT NULL,
	 profile nvarchar2(30),
	 self nvarchar2(2000),
	-- M/F
	gender char(1) NOT NULL,
	 age char(3) NOT NULL,
	 star number DEFAULT 1 NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE notice
(
	no number NOT NULL,
	title nvarchar2(30) NOT NULL,
	content nvarchar2(2000) NOT NULL,
	postdate date DEFAULT SYSDATE NOT NULL,
	emp_no number NOT NULL,
	PRIMARY KEY (no)
);


CREATE TABLE partner
(
	p_id nvarchar2(15) NOT NULL,
	-- 사업자등록증
	business_no nvarchar2(30) NOT NULL,
	pwd nvarchar2(200) NOT NULL,
	email nvarchar2(50) NOT NULL,
	firstimage nvarchar2(300) NOT NULL,
	regidate date DEFAULT SYSDATE NOT NULL,
	tel nvarchar2(50) NOT NULL,
	site nvarchar2(50),
	address nvarchar2(100) NOT NULL,
	PRIMARY KEY (p_id)
);


CREATE TABLE photobook
(
	book_no number NOT NULL,
	name nvarchar2(30) NOT NULL,
	price number DEFAULT 0 NOT NULL,
	sampleimage nvarchar2(1000) NOT NULL,
	layouts nvarchar2(2000) NOT NULL,
	emp_no number NOT NULL,
	PRIMARY KEY (book_no)
);


CREATE TABLE planit_event
(
	event_id number NOT NULL,
	title nvarchar2(30) NOT NULL,
	content nvarchar2(2000) NOT NULL,
	period nvarchar2(20) NOT NULL,
	sampleimage nvarchar2(1000) NOT NULL,
	star number DEFAULT 0 NOT NULL,
	emp_no number NOT NULL,
	PRIMARY KEY (event_id)
);


CREATE TABLE planner
(
	planner_id number NOT NULL,
	id nvarchar2(10) NOT NULL,
	route nvarchar2(2000) NOT NULL,
	-- 여행일수
	days number NOT NULL,
	depart date NOT NULL,
	areacode varchar2(10) NOT NULL,
	view_count number DEFAULT 0 NOT NULL,
	liked number DEFAULT 0 NOT NULL,
	postdate date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (planner_id)
);


CREATE TABLE position
(
	position nvarchar2(10) NOT NULL,
	PRIMARY KEY (position)
);


CREATE TABLE preference
(
	id nvarchar2(10) NOT NULL,
	A0101 number DEFAULT 0,
	A0102 number DEFAULT 0,
	A0201 number DEFAULT 0,
	A0202 number DEFAULT 0,
	A0203 number DEFAULT 0,
	A0204 number DEFAULT 0,
	A0205 number DEFAULT 0,
	A0206 number DEFAULT 0,
	A0207 number DEFAULT 0,
	A0208 number DEFAULT 0,
	A0301 number DEFAULT 0,
	A0302 number DEFAULT 0,
	A0303 number DEFAULT 0,
	A0304 number DEFAULT 0,
	A0305 number DEFAULT 0,
	A0401 number DEFAULT 0,
	A0502 number DEFAULT 0,
	B0201 number DEFAULT 0,
	C0112 number DEFAULT 0,
	C0113 number DEFAULT 0,
	C0114 number DEFAULT 0,
	C0115 number DEFAULT 0,
	C0116 number DEFAULT 0,
	C0117 number DEFAULT 0,
	PRIMARY KEY (id)
);


CREATE TABLE p_ask_planit
(
	ask_no number NOT NULL,
	p_id nvarchar2(15) NOT NULL,
	title nvarchar2(30) NOT NULL,
	content nvarchar2(2000) NOT NULL,
	refer number NOT NULL,
	step number DEFAULT 0 NOT NULL,
	depth number DEFAULT 0 NOT NULL,
	status nvarchar2(10) NOT NULL,
	askdate date NOT NULL,
	PRIMARY KEY (ask_no)
);


CREATE TABLE p_product
(
	roomcode nvarchar2(15) NOT NULL,
	p_id nvarchar2(15) NOT NULL,
	roomtitle nvarchar2(200) NOT NULL,
	roomsize1 number,
	roomcount number,
	roombasecount number,
	roommaxcount number,
	roomoffseasonminfee1 number DEFAULT 0,
	roomoffseasonminfee2 number DEFAULT 0,
	roompeakseasonminfee1 number DEFAULT 0,
	roompeakseasonminfee2 number DEFAULT 0,
	roomintro nvarchar2(1000),
	roombathfacility nchar(1),
	roombath nchar(1),
	roomhometheater nchar(1),
	roomaircondition nchar(1),
	roomtv nchar(1),
	roompc nchar(1),
	roomcable nchar(1),
	roominternet nchar(1),
	roomrefrigerator nchar(1),
	roomtoiletries nchar(1),
	roomsofa nchar(1),
	roomcook nchar(1),
	roomTable nchar(1),
	roomhairdryer nchar(1),
	roomsize2 number,
	roomimg1 nvarchar2(300),
	roomimg1alt nvarchar2(300),
	roomimg2 nvarchar2(300),
	roomimg2alt nvarchar2(300),
	roomimg3 nvarchar2(300),
	roomimg3alt nvarchar2(300),
	roomimg4 nvarchar2(300),
	roomimg4alt nvarchar2(300),
	roomimg5 nvarchar2(300),
	roomimg5alt nvarchar2(300),
	PRIMARY KEY (roomcode)
);


CREATE TABLE reservation
(
	reservation_id number NOT NULL,
	planner_id number NOT NULL,
	roomcode nvarchar2(15) NOT NULL,
	status nvarchar2(10) NOT NULL,
	checkin date NOT NULL,
	chechout date NOT NULL,
	options nvarchar2(200),
	request nvarchar2(200),
	PRIMARY KEY (reservation_id)
);


CREATE TABLE review
(
	review_id number NOT NULL,
	planner_id number NOT NULL,
	series number NOT NULL,
	sampleimage nvarchar2(1000),
	content nvarchar2(2000),
	title nvarchar2(30) NOT NULL,
	hashtag nvarchar2(50),
	view_count number DEFAULT 0 NOT NULL,
	liked number DEFAULT 0 NOT NULL,
	postdate date DEFAULT SYSDATE NOT NULL,
	rating number DEFAULT 0 NOT NULL,
	PRIMARY KEY (review_id)
);


CREATE TABLE u_ask_p
(
	id nvarchar2(10) NOT NULL,
	p_id nvarchar2(15) NOT NULL,
	ask_no number NOT NULL,
	title nvarchar2(30) NOT NULL,
	content nvarchar2(2000) NOT NULL,
	-- 원본글의 키값
	refer number NOT NULL,
	step number DEFAULT 0 NOT NULL,
	depth number DEFAULT 0 NOT NULL,
	status nvarchar2(10) NOT NULL,
	askdate date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (ask_no)
);


CREATE TABLE u_ask_planit
(
	ask_no number NOT NULL,
	id nvarchar2(10) NOT NULL,
	content nvarchar2(2000),
	refer number NOT NULL,
	step number DEFAULT 0 NOT NULL,
	depth number DEFAULT 0 NOT NULL,
	status nvarchar2(10) NOT NULL,
	askdate date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (ask_no)
);



/* Create Foreign Keys */

ALTER TABLE liked_tour
	ADD FOREIGN KEY (contentid)
	REFERENCES content (contentid)
;


ALTER TABLE content
	ADD FOREIGN KEY (contenttype)
	REFERENCES contenttype (contenttype)
;


ALTER TABLE emp
	ADD FOREIGN KEY (dept_no)
	REFERENCES dept (dept_no)
;


ALTER TABLE faq
	ADD FOREIGN KEY (emp_no)
	REFERENCES emp (emp_no)
;


ALTER TABLE notice
	ADD FOREIGN KEY (emp_no)
	REFERENCES emp (emp_no)
;


ALTER TABLE photobook
	ADD FOREIGN KEY (emp_no)
	REFERENCES emp (emp_no)
;


ALTER TABLE planit_event
	ADD FOREIGN KEY (emp_no)
	REFERENCES emp (emp_no)
;


ALTER TABLE comments
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE liked_planner
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE liked_review
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE liked_tour
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE planner
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE preference
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE u_ask_p
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE u_ask_planit
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE event_request
	ADD FOREIGN KEY (p_id)
	REFERENCES partner (p_id)
;


ALTER TABLE p_ask_planit
	ADD FOREIGN KEY (p_id)
	REFERENCES partner (p_id)
;


ALTER TABLE p_product
	ADD FOREIGN KEY (p_id)
	REFERENCES partner (p_id)
;


ALTER TABLE u_ask_p
	ADD FOREIGN KEY (p_id)
	REFERENCES partner (p_id)
;


ALTER TABLE liked_planner
	ADD FOREIGN KEY (planner_id)
	REFERENCES planner (planner_id)
;


ALTER TABLE reservation
	ADD FOREIGN KEY (planner_id)
	REFERENCES planner (planner_id)
;


ALTER TABLE review
	ADD FOREIGN KEY (planner_id)
	REFERENCES planner (planner_id)
;


ALTER TABLE emp
	ADD FOREIGN KEY (position)
	REFERENCES position (position)
;


ALTER TABLE reservation
	ADD FOREIGN KEY (roomcode)
	REFERENCES p_product (roomcode)
;


ALTER TABLE comments
	ADD FOREIGN KEY (review_id)
	REFERENCES review (review_id)
;


ALTER TABLE liked_review
	ADD FOREIGN KEY (review_id)
	REFERENCES review (review_id)
;



