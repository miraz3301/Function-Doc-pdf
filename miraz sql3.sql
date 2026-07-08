drop table Customer;
drop table Account; 
drop table Depositor;
drop table Employee;
drop table SALGRADE;


Create table Customer
(
	Cust_id 	VARCHAR2(12)  NOT NULL,
	Cust_name	VARCHAR2(12),
	Cust_dob	DATE,
	Cust_street	VARCHAR2(12),
	Cust_city	VARCHAR2(12)
);

Create table Account
(
	Account_id 	VARCHAR2(12)  NOT NULL,
	Balance		NUMBER(20,5),
	Type		VARCHAR2(8)
);

Create table Depositor
(
	Cust_id 	VARCHAR2(12)  NOT NULL,
	Account_id	 VARCHAR2(12) NOT NULL
);

Create table Employee
(
	Employee_id	VARCHAR2(12),
	Employee_name	VARCHAR2(20),
	Employee_dob	DATE,
	Employee_street	VARCHAR2(20),
	Employee_city	VARCHAR2(20),
	Employee_startdate DATE,
	Salary		NUMBER(10,3),
	MGR		VARCHAR2(12)
);

Create table SALGRADE
(
	GRADE	VARCHAR2(5)  NOT NULL,
	LOSAL	NUMBER(10,3),
	HISAL	NUMBER(10,3)	
);


insert into account values('A-101',500, 'CURRENT');
insert into account values('A-215',700, 'CURRENT');
insert into account values('A-102',400, 'CURRENT');
insert into account values('A-305',350, 'CURRENT');
insert into account values('A-201',900, 'CURRENT');
insert into account values('A-222',700, 'CURRENT');
insert into account values('A-217',750, 'CURRENT');

insert into customer values('C00000000001','Jones',TO_DATE('11-JAN-1982','DD-MON-YYYY'),'Main','Harrison');
insert into customer values('C00000000002','Smith',TO_DATE('22-JAN-1958','DD-MON-YYYY'),'North','Rye');
insert into customer values('C00000000003','Hayes',TO_DATE('23-FEB-1962','DD-MON-YYYY'),'Main','Harrison');
insert into customer values('C00000000004','Curry',TO_DATE('24-FEB-1964','DD-MON-YYYY'),'North','Rye');
insert into customer values('C00000000005','Lindsay',TO_DATE('25-OCT-1956','DD-MON-YYYY'),'Park','Pittsfield');
insert into customer values('C00000000006','Turner',TO_DATE('26-NOV-1982','DD-MON-YYYY'),'Putnam','Stamford');
insert into customer values('C00000000007','Williams',TO_DATE('27-DEC-1975','DD-MON-YYYY'),'Nassau','Princeton');
insert into customer values('C00000000008','Adams',TO_DATE('28-MAR-1978','DD-MON-YYYY'),'Spring','Pittsfield');
insert into customer values('C00000000009','Johnson',TO_DATE('27-MAR-1974','DD-MON-YYYY'),'Alma','Palo alto');
insert into customer values('C00000000010','Glenn',TO_DATE('21-APR-1956','DD-MON-YYYY'),'Sand Hill','Woodside');
insert into customer values('C00000000011','Brooks',TO_DATE('21-APR-1974','DD-MON-YYYY'),'Senator','Brooklyn');
insert into customer values('C00000000012','Green',TO_DATE('19-APR-1979','DD-MON-YYYY'),'Walnut','Stamford');

insert into depositor values('C00000000001','A-101');
insert into depositor values('C00000000002','A-215');
insert into depositor values('C00000000003','A-102');
insert into depositor values('C00000000004','A-305');
insert into depositor values('C00000000001','A-201');
insert into depositor values('C00000000005','A-217');
insert into depositor values('C00000000006','A-222');

Insert into Employee values('E00000000001','E_A',TO_DATE('11-JAN-1982','DD-MON-YYYY'),'e_street_006', 'e_city_001',TO_DATE('11-JAN-0002','DD-MON-YYYY'),5000,Null);
Insert into Employee values('E00000000002','E_B',TO_DATE('22-JAN-1958','DD-MON-YYYY'),'e_street_005', 'e_city_002',TO_DATE('22-JAN-1978','DD-MON-YYYY'),2850,'E00000000001');
Insert into Employee values('E00000000003','E_C',TO_DATE('23-FEB-1962','DD-MON-YYYY'),'e_street_007', 'e_city_003',TO_DATE('23-FEB-1982','DD-MON-YYYY'),2000,'E00000000001');
Insert into Employee values('E00000000004','E_D',TO_DATE('24-FEB-1964','DD-MON-YYYY'),'e_street_004', 'e_city_004',TO_DATE('24-FEB-1984','DD-MON-YYYY'),5300,'E00000000001');
Insert into Employee values('E00000000005','E_E',TO_DATE('25-OCT-1956','DD-MON-YYYY'),'e_street_004', 'e_city_005',TO_DATE('25-OCT-1976','DD-MON-YYYY'),6500,'E00000000001');
Insert into Employee values('E00000000006','E_F',TO_DATE('26-NOV-1982','DD-MON-YYYY'),'e_street_003', 'e_city_006',TO_DATE('26-NOV-0002','DD-MON-YYYY'),1700,'E00000000007');
Insert into Employee values('E00000000007','E_G',TO_DATE('27-DEC-1975','DD-MON-YYYY'),'e_street_002', 'e_city_007',TO_DATE('27-DEC-1995','DD-MON-YYYY'),9000,Null);
Insert into Employee values('E00000000008','E_H',TO_DATE('28-MAR-1978','DD-MON-YYYY'),'e_street_002', 'e_city_008',TO_DATE('28-MAR-1998','DD-MON-YYYY'),5000,'E00000000007');
Insert into Employee values('E00000000009','E_I',TO_DATE('27-MAR-1974','DD-MON-YYYY'),'e_street_001', 'e_city_009',TO_DATE('27-MAR-1994','DD-MON-YYYY'),4000,'E00000000007');
Insert into Employee values('E00000000010','E_J',TO_DATE('21-APR-1956','DD-MON-YYYY'),'e_street_018', 'e_city_010',TO_DATE('21-APR-1986','DD-MON-YYYY'),5600,'E00000000007');
Insert into Employee values('E00000000011','E_K',TO_DATE('21-APR-1974','DD-MON-YYYY'),'e_street_017', 'e_city_001',TO_DATE('21-APR-1994','DD-MON-YYYY'),1400,'E00000000007');
Insert into Employee values('E00000000012','E_L',TO_DATE('19-APR-1979','DD-MON-YYYY'),'e_street_016', 'e_city_002',TO_DATE('19-APR-1999','DD-MON-YYYY'),5600,'E00000000008');
Insert into Employee values('E00000000013','E_M',TO_DATE('29-APR-1974','DD-MON-YYYY'),'e_street_015', 'e_city_003',TO_DATE('29-APR-1994','DD-MON-YYYY'),9900,'E00000000008');
Insert into Employee values('E00000000014','E_N',TO_DATE('18-MAY-1976','DD-MON-YYYY'),'e_street_014', 'e_city_004',TO_DATE('18-MAY-1996','DD-MON-YYYY'),1000,Null);


Insert into SALGRADE values('A',700,1200);
Insert into SALGRADE values('B',1201,1400);
Insert into SALGRADE values('C',1401,2000);
Insert into SALGRADE values('D',2001,3000);
Insert into SALGRADE values('E',3001,9999);
Insert into SALGRADE values('F',9999,99999);

select *from account, Depositor;
select *from account cross join Depositor;
select *from Customer, Depositor where Customer.Cust_id=Depositor.Cust_id;
select Cust_name, Customer.Cust_id, Account_id from Depositor, Customer where Customer.Cust_id=Depositor.Cust_id;
select Cust_name, C.Cust_id, Account_id from Depositor D, Customer C where C.Cust_id=D.Cust_id;


select cust_name,account_id from customer c,depositor where c.cust_city='Harrison';

select c.cust_name,a.balance from customer c,Account a,Depositor d where c.cust_id=d.cust_id and d.account_id=a.account_id;

select * from table1 natural join table2;
select * from table1 natural join table2 natural join table3;
select cust_name,cust_id,account_id from customer join depositor using(cust_id) join account using(account_id) where cust_city='Harrison';

select * from table1 a join table2 b on a.id=b.cust_id;



select cust_name, account_id,balance from customer c join depositor d on c.cust_id=d.cust_id join account a on a.account_id=d.account_id;

select e.employee_name,e.salary,s.grade from employee e, salgrade s where e.salary between s.losal and s.hisal;

select *from Customer c, Depositor d where c.Cust_id=d.Cust_id (+) order by c.cust_id;

select *from employee worker,employee manager where worker.manager_id=manager.employee_id;





