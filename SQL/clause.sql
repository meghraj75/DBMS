create database worker;
use worker;
create table worker_info(
id int,
name varchar(255),
salary float,
addr varchar(255)
);
insert into worker_info values(1,"ankit",100.0,"paltan"),
(2,"lalit",133.0,"dodaiyicha"),
(3,"unnat",122.2,"nadurbar"),
(4,"megharj",133.3,"faizpur"),
(5,"abhi",45.4,"nadurbar"),
(6,"mandar",56.6,"padalsa");

select * from worker_info;

-- sort data in asc or desc  (order by sort data in asc / or desc)
   -- salary in desc 
   select * from worker_info order by salary desc;
    -- salary in desc 
   select * from worker_info order by salary asc;
   
   insert into worker_info values(7,"ram",100.0,"paltan");
   -- Distinct values  it show same salary in salary column
    select Distinct salary from worker_info;
    
    -- Data grouping 
    -- it used aggregation function 
    -- MIN IT GIVE MINIMUM SALARY
   SELECT SALARY, AVG(SALARY) FROM WORKER_INFO GROUP BY SALARY;
    -- MAX
    
    
    -- HAVING SIMILAR TO WHERE BUT NOT SAME
    -- HAVING CLAUES USE AFTER GROUP BY
    -- IF YOU USING HAVING GROUP BY IS NESECCARY
    -- IT FILTER ROWS FORM THE GROUPS BASED ON SPECIFIED CONDITION
    
    -- ( I WANT WORKER INFO IN SALARY WHOSE SALARY MORE THAN 100
     SELECT SALARY, COUNT (SALARY) FROM WORKER_INFO GROUP BY SALARY HAVING COUNT(SALARY)>100;