miraz.rzsian21@gmail.com
_uk -> unique
_nn -> not null
_pk -> primary key
_ck -> check
_fk -> foreign key
we can use constraint when we create table or alter table.

way0:
create table Customer
(
cust_id varchar2(100) primary key,
......,
......,
);


way1:
create table Customer
(
cust_id varchar2(100) constraint Cust_id_pk primary key,
......,
......,
);

way2:
create table Customer
(
cust_id varchar2(100),
......,
......,
constraint customer_cust_id_pk primary key(cust_id)
);

way3: alter table customer add constraint customer_cust_id_pk primary key(cust_id);

way4: alter table customer add primary key(cust_id);

way5: alter table oderitem add constraint oderitems_pk primary key(order_id,item_no); //composite

way6: alter table account add constraintaccount_balace_ck check(balance>0);

way7: alter table customer MODIFY cust_id constraints customer_cust_id_nn not null;

way8:
create table Customer
(
cust_id varchar2(100),
......,
......,
constraint customer_cust_id_pk primary key(cust_id),
constraint course_roll_no_fk foreign key(roll_no) references student (roll_no)

);

way3: alter table customer add constraint customer_cust_id_fk foreign key(cust_id) references student(cust_id);

// one to many relation -> foreign key will be applied at many side
// many to many relation -> need to create an another table for foreign key
[foreign key]
typrs of error: [parent table]
insert -> no violation.
delete -> may cause violation. SOLUTION: use on delete cascade.
update -> may cause violation. SOLUTION: use on update cascade.

typrs of error: [child table]
insert -> may cause violation.
delete -> no violation.
update -> may cause violation.

create table Customer
(
cust_id varchar2(100),
......,
......,
constraint customer_cust_id_pk primary key(cust_id),
constraint course_roll_no_fk foreign key(roll_no) references student (roll_no) on delete cascade, on update cascade

);

// drop constrains
alter table table_name drop constraint constraint_name;
alter table table_name drop constraint constraint_name cascade; // delete the foreign key of child table

// viewing constraint
select constraint_name, constrant_type from user_constraints ere table_name='customer';
select constraint_name, column_name from use_cons_collumn ere table_name='customer';

HW: create table borrower in such a way that cust_id must be in customer table and loan_id must be in loan table.







