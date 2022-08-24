use akash;

#creating employee table and adding columns
create table emp(
emp_id int,
emp_name varchar(10),
address varchar(20));

#creating department table and adding columns
create table dept(
emp_id int,
dept_name varchar(20),
salary int);

#inserting values into employee table
insert into emp values
(1,'akash','kolkata'),
(2,'sayan','kolkata'),
(3,'sagnik','kolkata'),
(4,'sankhajit','kolkata'),
(5,'ravi','kolkata');

#inserting values into department table
insert into dept values
(1,'Jr. engineer',100000),
(2,'Jr. engineer',110000),
(3,'Jr. engineer',120000),
(4,'Jr. engineer',130000),
(5,'Jr. engineer',140000);

#displaying department table
select * from emp;

#displaying employee table
select * from dept;



