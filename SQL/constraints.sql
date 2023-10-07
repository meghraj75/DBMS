create database cust;
use cust;
create table customer (
ID INT PRIMARY KEY,
CUST_NAME VARCHAR(255),
CUST_ADDR VARCHAR(255),
GENDER CHAR(2),
CITY VARCHAR(255),
PINCODE INT);

insert into customer values(1,"abhay","ram chowk",'m',"chopda",7557);

CREATE TABLE ORDERS (
ORDER_ID INT PRIMARY KEY,
DELIVERY_DATE DATE,
ID INT,
FOREIGN KEY (ID) references customer (ID));  -- foreign key means another table primary key
insert into orders values(101,'2020-2-2',1);
select * from customer;
select * from orders;

select * from orders where id =1;



-- UNIQUE 
 -- unique can be null
 -- table can have multiple unique values
  create table check_delivery(
 delivery_time time,
 delivery_order_name varchar(255) unique
 );
 
 insert into check_delivery values ('12:20:00',"pizza"); -- here pizza unique not insert 
 
 insert into check_delivery values ('14:20:00',"momos");
 
 insert into check_delivery values ('14:20:00',"pizza"); -- this will give you errror beacause u declare order_name is unique
 select * from check_delivery;
 
 -- CHECK:- CONSITENCY CONSTRAINTS
      create table Account(
      name varchar(255),
      id int,
      balance int,
      constraint acc_balance_chk check (balance>1000));  -- acc_balance_chk is just a constraints name
      
      insert into Account values ("jay",111,2000); -- this query is run because u enter balance > 1000
      insert into Account value ("radha",101,500); -- this not run bal<1000
 
 
  -- DEFAULT
    -- set attribute value default
    CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hire_date DATE DEFAULT '2023-01-01'
);
INSERT INTO employees (employee_id, first_name, last_name)
VALUES (1, 'raj', 'narkhede');
  select * from employees;
  
  create table student(
  id int,
  name varchar(255) default "raj");
  
  insert into student (id) values (1);
  select * from student;

