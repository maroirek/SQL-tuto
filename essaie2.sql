use employees;
select first_name, last_name from employees;
select dept_no from departments;

select * from employees where (first_name = 'Denis' and gender ='M');
select * from employees where (first_name = 'Denis' or first_name = 'Elvis');
select * from employees where gender = 'F' and (first_name = 'Kellie' or first_name = 'Aruna');
select * from employees where first_name in ('Denis','Kellie','Elvis');   # in is faster than OR operator
select * from employees where first_name not in ('Jon','Mark','Jacob');

select * from employees where first_name like ('%mar'); # % represents a sequence of char, we can use it the way we want
select * from employees where first_name like ('mar__');  # _ for a single char

select * from employees where hire_date like ('2000-%');
select * from employees where emp_no like ('1000_');

select * from employees where first_name ='Jack' ;
select first_name from employees where first_name not in ('Jack') ;

select * from employees where emp_no between 10004 and 10012;

select * from employees where first_name is null ;


# all the math operators works here <. >. >= ...

select distinct gender from employees;  # to select values without duplication
select count(emp_no) from employees;
select count(distinct first_name) from employees; # nbr of distanct names

# aggregate fct ignore null data , fct max min avg 

select * from employees order by first_name, last_name DESC;   # desc asc c ascendant et descendant

select first_name, count(first_name) as names_count
from employees group by first_name order by first_name ;


select salary , count(emp_no) as emps_with_same_salary
from salaries where salary>80000 order by salary ; 
