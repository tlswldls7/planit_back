

/* Create Sequences 사용안함 

CREATE SEQUENCE SEQ_dept_dept_no NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_emp_emp_no INCREMENT NOCACHE NOCYCLE;
*/


/* Create Tables */

CREATE TABLE dept
(
	dept_no number NOT NULL,
	name nvarchar2(10) NOT NULL,
	PRIMARY KEY (dept_no)
);


CREATE TABLE emp
(
	emp_no number NOT NULL,
	id nvarchar2(10) NOT NULL,
	pwd nvarchar2(20) NOT NULL,
	name nvarchar2(10) NOT NULL,
	tel nvarchar2(15) NOT NULL,
	email nvarchar2(40) NOT NULL,
	hiredate date DEFAULT SYSDATE NOT NULL,
	dept_no number NOT NULL,
	position nvarchar2(10) NOT NULL,
	PRIMARY KEY (emp_no)
);


CREATE TABLE position
(
	position nvarchar2(10) NOT NULL,
	PRIMARY KEY (position)
);



/* Create Foreign Keys */

ALTER TABLE emp
	ADD FOREIGN KEY (dept_no)
	REFERENCES dept (dept_no)
;


ALTER TABLE emp
	ADD FOREIGN KEY (position)
	REFERENCES position (position)
;

/*
 * 
 
INSERT INTO dept VALUES(2,'인사과');
INSERT INTO dept VALUES(3,'경영지원');
INSERT INTO dept VALUES(4,'IT');
INSERT INTO dept VALUES(5,'총괄');
 
insert into position values('사원');
insert into position values('팀장');
insert into position values('부장');
insert into position values('대리');

insert into emp values(2,'it','planit','정현선', '010-6256-4504', 'gream50@naver.com', sysdate, 5, '팀장' );
insert into emp values(3,'woued','1234','조선기', '010-3919-1767', 'woued2012@gmail.com', sysdate, 4, '사원');
insert into emp values(4,'jiin','1234','신지인', '010-6344-1642', 'tlswldls7@gmail.com', sysdate, 4, '사원');
insert into emp values(5,'han','1234','한길형', '010-2441-9699', 'poiupoiu96@naver.com', sysdate, 4, '사원');
insert into emp values(6,'Yeee','1234','신지인', '01up0-2204-9785', 'wpslxm95@naver.com', sysdate, 4, '사원');
 * */


