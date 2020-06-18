-- use syntaxhrm_mysql;

select * from hs_hr_employees;

select emp_firstname, emp_lastname from hs_hr_employees
-- where emp_firstname is NULL
order by emp_firstname ;

select distinct emp_firstname, emp_lastname
from hs_hr_employees
-- where emp_birthday is NULL;
order by emp_firstname desc;

select distinct emp_firstname, emp_lastname, emp_birthday
from hs_hr_employees
where emp_birthday is not NULL
order by emp_birthday asc;