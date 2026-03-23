CREATE DATABASE ut;

CREATE TABLE animals(
	id bigserial,
	name varchar(20),
	age integer,
	kind varchar(20),
	dob date,
	location varchar(50)
);

TABLE animals;

/*
Professor table 작성(개체)
[Entities / 개체]
-Professor

[Properties / 속성]
-id				(BIGSERIAL) -- 자동으로 증가하는 숫자
-name			(VARCHAR(30))
-dept			(VARCHAR(30))
-salary			(NUMERIC)
-salary_level	(NUMERIC)
-hire_date		(DATE) -- 'YYYY-MM-DD'
*/

CREATE TABLE prof (
	id bigserial,
	name varchar(30),
	dept varchar(50),
	salary numeric,
	salary_level numeric,
	hire_date date
);

TABLE prof;

-- 데이터 삽입하기
INSERT INTO prof (name, dept, salary, salary_level, hire_date)
VALUES
	('김정운', '컴퓨터공학', 100000, 2, '1998-12-31'),
	('박지선', 'AI공학', 70000, 1, '2001-3-1'),
	('이재삭', '정보통신공학', 80000, 1, '2003-4-1'),
	('류현지', '간호학과', 90000, 1, '2004-4-14'),
	('양정호', '소프트웨어학', 1000000, 9, '1998-12-31');

-- 데이터 검색하기
SELECT * FROM prof;

SELECT name, salary FROM prof;

SELECT name, salary FROM prof ORDER BY salary DESC;

SELECT name, salary FROM prof WHERE salary > 90000;

SELECT name, salary FROM prof WHERE name LIKE '김%'; -- PostgreSQL ILIKE 대/소문자 상관없다.

SELECT name, dept FROM prof
	WHERE dept LIKE '%공%'
	ORDER BY dept DESC;

SELECT name, salary FROM prof WHERE salary BETWEEN 70000 AND 90000; 


/*
동아리 관리 테이블 생성하기
[Entities / 개체]
-student

[student / 속성]
-id		NUMERIC
-name	(VARCHAR(30))
-major	(VARCHAR(30))
-gender	(VARCHAR(30))
-age	NUMERIC
*/

CREATE TABLE student(

	id NUMERIC,
	name varchar(30),
	major varchar(30),
	gender varchar(30),
	age NUMERIC
);

TABLE student;

INSERT INTO student (id, name, major, gender, age)
VALUES
	(2126089, '박민성', '소프트웨어공학', 'M', 25),
	(2325689, '최윤석', '전자공학', 'M', 23),
	(2320954, '이정현', '간호학', 'F', 22),
	(2224683, '김중수', '소프트웨어공학', 'M', 24),
	(2021648, '원채은', '건축학', 'F', 27);


SELECT * FROM student;

SELECT * FROM student ORDER BY id DESC;

SELECT id, major, age FROM student WHERE age>=24;














