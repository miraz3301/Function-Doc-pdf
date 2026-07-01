// anything with date is important for onlone 
-- TABLE CREATION

CREATE TABLE CSE_STUDENTS (
    ID VARCHAR2(15),
    NAME VARCHAR2(30),
    DATE_OF_BIRTH DATE,
    ADMISSION_DATE DATE,
    CITY VARCHAR2(20)
);

CREATE TABLE CSE_TEACHERS (
    NAME VARCHAR2(20), 
    DESIGNATION VARCHAR2(20), 
    MAIL VARCHAR2(20), 
    SALARY NUMBER
);


CREATE TABLE CSE_COURSES (
    CODE NUMBER, 
    SECTION VARCHAR2(20), 
    TEACHER1 VARCHAR2(20), 
    TEACHER2 VARCHAR2(20), 
    TEACHER3 VARCHAR2(20), 
    TEACHER4 VARCHAR2(20), 
    TEACHER5 VARCHAR2(20)
);


--INSERT INTO CSE_STUDENTS

INSERT INTO CSE_STUDENTS VALUES ('CSE2001001', 'Rafiul Islam',       TO_DATE('2000-03-15', 'YYYY-MM-DD'), TO_DATE('2018-01-10', 'YYYY-MM-DD'), 'Dhaka');
INSERT INTO CSE_STUDENTS VALUES ('CSE2001002', 'Nusrat Jahan',       TO_DATE('2001-07-22', 'YYYY-MM-DD'), TO_DATE('2018-01-10', 'YYYY-MM-DD'), 'Chittagong');
INSERT INTO CSE_STUDENTS VALUES ('CSE2001003', 'Tanvir Ahmed',       TO_DATE('2000-11-05', 'YYYY-MM-DD'), TO_DATE('2018-01-10', 'YYYY-MM-DD'), 'Sylhet');
INSERT INTO CSE_STUDENTS VALUES ('CSE2001004', 'Sumaiya Akter',      TO_DATE('2001-01-18', 'YYYY-MM-DD'), TO_DATE('2018-01-10', 'YYYY-MM-DD'), 'Rajshahi');
INSERT INTO CSE_STUDENTS VALUES ('CSE2001005', 'Mehedi Hasan',       TO_DATE('2000-09-30', 'YYYY-MM-DD'), TO_DATE('2018-01-10', 'YYYY-MM-DD'), 'Khulna');
INSERT INTO CSE_STUDENTS VALUES ('CSE2102001', 'Fariha Tabassum',    TO_DATE('2002-04-12', 'YYYY-MM-DD'), TO_DATE('2020-01-12', 'YYYY-MM-DD'), 'Dhaka');
INSERT INTO CSE_STUDENTS VALUES ('CSE2102002', 'Sabbir Rahman',      TO_DATE('2002-06-25', 'YYYY-MM-DD'), TO_DATE('2020-01-12', 'YYYY-MM-DD'), 'Comilla');
INSERT INTO CSE_STUDENTS VALUES ('CSE2102003', 'Lamia Sultana',      TO_DATE('2003-02-08', 'YYYY-MM-DD'), TO_DATE('2020-01-12', 'YYYY-MM-DD'), 'Mymensingh');
INSERT INTO CSE_STUDENTS VALUES ('CSE2102004', 'Imran Hossain',      TO_DATE('2002-10-17', 'YYYY-MM-DD'), TO_DATE('2020-01-12', 'YYYY-MM-DD'), 'Barisal');
INSERT INTO CSE_STUDENTS VALUES ('CSE2102005', 'Tasnim Zaman',       TO_DATE('2003-05-03', 'YYYY-MM-DD'), TO_DATE('2020-01-12', 'YYYY-MM-DD'), 'Dhaka');
INSERT INTO CSE_STUDENTS VALUES ('CSE2203001', 'Arif Billah',        TO_DATE('2003-08-19', 'YYYY-MM-DD'), TO_DATE('2022-01-09', 'YYYY-MM-DD'), 'Rangpur');
INSERT INTO CSE_STUDENTS VALUES ('CSE2203002', 'Mitu Rani Das',      TO_DATE('2004-12-01', 'YYYY-MM-DD'), TO_DATE('2022-01-09', 'YYYY-MM-DD'), 'Sylhet');
INSERT INTO CSE_STUDENTS VALUES ('CSE2203003', 'Nahid Pervez',       TO_DATE('2003-03-27', 'YYYY-MM-DD'), TO_DATE('2022-01-09', 'YYYY-MM-DD'), 'Dhaka');
INSERT INTO CSE_STUDENTS VALUES ('CSE2203004', 'Anika Chowdhury',    TO_DATE('2004-07-14', 'YYYY-MM-DD'), TO_DATE('2022-01-09', 'YYYY-MM-DD'), 'Chittagong');
INSERT INTO CSE_STUDENTS VALUES ('CSE2203005', 'Touhid Mahmud',      TO_DATE('2003-11-09', 'YYYY-MM-DD'), TO_DATE('2022-01-09', 'YYYY-MM-DD'), 'Khulna');


-- INSERT INTO CSE_TEACHERS

INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Mahboob','BrigGen','mahboob@mist.ac.bd',800000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('KazyNoor','Prof','kazynoor@mist.ac.bd',500000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Anika','Lec','anika@mist.ac.bd',100000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Faria','Lec','faria@mist.ac.bd',100000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Shakib','Lec','shakib@mist.ac.bd',100000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Maruf','AsstProf','maruf@mist.ac.bd',200000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Rashid','Lec','rashid@mist.ac.bd',100000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Alisha','Lec','alisha@mist.ac.bd',100000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('MAS','AssocProf','mas@mist.ac.bd',300000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Shafeen','Lec','shafeen@mist.ac.bd',100000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Nafisa','Lec','nafisa@mist.ac.bd',100000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Sanjana','Lec','sanjana@mist.ac.bd',100000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Nafes','Lec','nafes@mist.ac.bd',100000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Sameha','Lec','sameha@mist.ac.bd',100000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Khaled','Lec','khaled@mist.ac.bd',100000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('SSarkar','AsstProf','ssarkar@mist.ac.bd',200000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Fairooz','Lec','fairooz@mist.ac.bd',100000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Amir','LtCol','amir@mist.ac.bd',500000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Shahed','Maj','shahed@mist.ac.bd',400000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Ashraf','Prof','ashraf@mist.ac.bd',500000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Nazmul','Maj','nazmul@mist.ac.bd',400000);
INSERT INTO CSE_TEACHERS (NAME, DESIGNATION, MAIL, SALARY) VALUES ('Fahim','Lec','fahim@mist.ac.bd',100000);

-- INSERT INTO CSE_COURSES


INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2) VALUES (301,'A','Mahboob','Mahboob');
INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2) VALUES (301,'B','Mahboob','Mahboob');

INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2, TEACHER3, TEACHER4, TEACHER5) VALUES (302,'A','Mahboob','KazyNoor','Anika','Faria','Shakib');
INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2, TEACHER3, TEACHER4, TEACHER5) VALUES (302,'B','Mahboob','Nazmul','Anika','Faria','Shakib');

INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2) VALUES (303,'A','KazyNoor','Maruf');
INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2) VALUES (303,'B','KazyNoor','Maruf');

INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2, TEACHER3, TEACHER4) VALUES (304,'A','KazyNoor','Maruf','Rashid','Alisha');
INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2, TEACHER3, TEACHER4) VALUES (304,'B','KazyNoor','Maruf','Rashid','Alisha');


INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2) VALUES (305,'A','MAS','Rashid');
INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2) VALUES (305,'B','MAS','Rashid');


INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2, TEACHER3, TEACHER4, TEACHER5) VALUES (306,'A','MAS','Rashid','Shafeen','Nafisa','Sanjana');
INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2, TEACHER3, TEACHER4, TEACHER5) VALUES (306,'B','MAS','Rashid','Nafes','Nafisa','Sanjana');

INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2) VALUES (307,'A','Sameha','Khaled');
INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2) VALUES (307,'B','Sameha','Khaled');


INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2, TEACHER3, TEACHER4) VALUES (308,'A','Sameha','Khaled','SSarkar','Fairooz');
INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2, TEACHER3, TEACHER4) VALUES (308,'B','Sameha','Khaled','Amir','Fairooz');


INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2) VALUES (317,'A','Shahed','Ashraf');
INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2) VALUES (317,'B','Shahed','Ashraf');

INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2, TEACHER3, TEACHER4) VALUES (318,'A','Shahed','Ashraf','Fahim','Alisha');
INSERT INTO CSE_COURSES (CODE, SECTION, TEACHER1, TEACHER2, TEACHER3, TEACHER4) VALUES (318,'B','Shahed','Ashraf','Faria','Alisha');


select *from cse_teachers where salary >100000;
select salary from cse_teachers where name='Shakib';

select *from cse_teachers where salary >
(select salary from cse_teachers where name='Shakib');

select *from cse_teachers where salary >=100000 and salary <=400000;

select *from cse_teachers where salary between 100000 and 400000;

select  name, date_of_birth from cse_students where date_of_birth between TO_date('2001-01-01','YYYY-MM-DD') and TO_date('2002-12-31','YYYY-MM-DD')


select  name, to_char(date_of_birth,'YYYY-MM-DD') "Birthday" from cse_students where date_of_birth between TO_date('2001-01-01','YYYY-MM-DD') and TO_date('2002-12-31','YYYY-MM-DD')

select column_name from table_name where column_name IN(series of values,,);
select column_name from table_name where column_name NOT IN(series of values,,); //exclusive

select column_name from table_name where column_name like 'a%';
select column_name from table_name where column_name not like 'a%';

select column_name from table_name where column_name<num> is null;
select column_name from table_name where column_name<num> is not null;

select column_name from table_name where conditions order by column_name desc/asc, column_name desc/asc;






























