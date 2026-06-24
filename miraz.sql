create table Customer
(
	Cust_id varchar2(10),
	Cust_name varchar2(100),
	Cust_dob date,
	Cust_street varchar2(100),
	Cust_city varchar2(100)
);

// insert into table
insert into Customer
(Cust_id,Cust_name,Cust_street,Cust_city) values
('C1','Momo','Gulshan','Dhaka'); //must be single inverted comma

// select table (to view all rows)
select *from Customer;

insert into Customer
(Cust_id,Cust_name,Cust_street,Cust_city,Cust_dob) values
('C2','Miraz','Mirpur DOHS','Dhaka',to_date('27-Aug-2004','dd-mon-yyyy'));

select *from Customer;

insert into Customer1 select *from Customer; // copy all rows from customer to customer1

update Customer
set Cust_dob=to_date('05-May-2004','dd-mon-yyyy')
where Cust_id='C1';

// Alias (gives pseudo name)
select Cust-id "the name u want to display" from Customer;

// Unique values
select distinct Cust_city from Customer;

// Concatenate data ||

select Cust_name || 'the string you want to concate' || Cust_id from Customer where Emp_id='C1';

// change the format of date
select to_char(Cust_dob,'yyyy/mm/dd') from Customer;

// delete 
delete from Customer // delete all rows(DML)
Delete from Customer where Cust_id='C1'; //delete particular row(DML)
drop table Customer // delete the full table including the structures(DDL)

// ALTER --> DDL
// SELECT --> DML

// Renaming the table
alter table Customer to Employee;

// Renaming a column
alter table Customer rename column Cust_id to Emp_id;

// add new column
alter table Employee add Emp_salary varchar2(100);

// Modify column data type
alter table Employee modify column Emp_salary number(5,2);


/*
create table Employee
(
	Emp_id varchar2(10),
	Emp_name varchar2(100),
	Emp_dob date,
	Emp_salary number(6,0),
	Emp_city varchar2(100)
);
INSERT INTO Employee
(Emp_id, Emp_name, Emp_dob, Emp_salary, Emp_city)
VALUES ('E_001', 'Swagata', to_date('11-JAN-2005', 'DD-MON-YYYY'), 40000, 'DHAKA');
VALUES ('E_002', 'Sadik', to_date('21-JUN-2006', 'DD-MON-YYYY'), 30000, 'DHAKA');
VALUES ('E_003', 'Fahim', to_date('18-MAR-2003', 'DD-MON-YYYY'), 35000, 'Sylhet');
VALUES ('E_004', 'Tasnuva', to_date('15-SEPT-2004', 'DD-MON-YYYY'), 45000, 'DHAKA');


*/

