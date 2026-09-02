-- next online
-- subquery[anika miss], index, trigger, sequence

create table people
(
	id varchar2(20) constraint people _id_pk primary key,
	name varchar2(30)
)

-- Sequence

create sequence people_nid_seq
start with 1
increment by 1
maxvalue 5
nocycle

insert into people values('E_'||people_nid_seq.nextval,'Riya');
insert into people values('E_'||people_nid_seq.nextval,'Rfah');
insert into people values('E_'||people_nid_seq.nextval,'mita');
insert into people values('E_'||people_nid_seq.nextval,'Riaz');
insert into people values('E_'||people_nid_seq.nextval,'Ripa');

insert into people values('E_'||people_nid_seq.nextval,'Rina'); --exceeds MAXVALUE and cannot be instantiated

select * from people;

select people_nid_seq.currval from people; -- shows rows number same as total rows of people tabe
select people_nid_seq.currval from dual;

-- trigger

-- task 1

DROP TABLE Employee2;
DROP TABLE POST;
CREATE TABLE POST
(
    post_name VARCHAR2(20)
        CONSTRAINT post_pname_PK PRIMARY KEY,

    manpower NUMBER(3,0)
);
INSERT INTO POST VALUES ('Developer', 2);
INSERT INTO POST VALUES ('QA', 2);
INSERT INTO POST VALUES ('HR', 1);
CREATE TABLE Employee2
(
    Emp_ID VARCHAR2(20)
        CONSTRAINT employee_ID_PK PRIMARY KEY,

    Name VARCHAR2(20),

    post_name VARCHAR2(20),

    CONSTRAINT employee_post_FK
        FOREIGN KEY (post_name)
        REFERENCES POST(post_name)
);
INSERT INTO Employee2 VALUES ('E1', 'Hafiz', 'Developer');
INSERT INTO Employee2 VALUES ('E2', 'Maruf', 'QA');
INSERT INTO Employee2 VALUES ('E3', 'Salma', 'HR');
INSERT INTO Employee2 VALUES ('E4', 'Mira', 'Developer');
INSERT INTO Employee2 VALUES ('E5', 'Junayed', 'QA');
COMMIT;
SELECT * FROM POST;
SELECT * FROM Employee2;
CREATE OR REPLACE TRIGGER employee_insert_trg 
AFTER INSERT ON employee2
FOR EACH ROW
BEGIN
    UPDATE post
    SET manpower = manpower + 1
    WHERE post_name = :NEW.post_name;
END;
/
INSERT INTO Employee2 VALUES ('E6', 'miraz', 'QA');




-- task 2

CREATE TABLE Staff
(
    staff_ID varchar2(10) Constraint staff_sid_pk PRIMARY KEY,
    Name VARCHAR2(30),
    Salary NUMBER(10,2)
);
CREATE TABLE EmployeeAudit
(
    
    Update_Date DATE,
    Message VARCHAR2(100)
);
INSERT INTO Staff VALUES (101, 'Rahim', 30000);
INSERT INTO Staff VALUES (102, 'Motin', 35000);
INSERT INTO Staff VALUES (103, 'Sadia', 40000);
INSERT INTO Staff VALUES (104, 'Nadia', 45000);
CREATE OR REPLACE TRIGGER staff_salary_pdate
AFTER UPDATE OF salary
ON staff
BEGIN
    INSERT INTO employeeaudit
    VALUES (SYSDATE, 'staff salary updated');
END;
/
update staff set salary=salary+5000
where salary<45000





-- index


















































