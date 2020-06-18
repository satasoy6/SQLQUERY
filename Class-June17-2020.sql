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

-- //class Task//------
SELECT 
    *
FROM
    hs_hr_employees
WHERE
    job_title_code IS NULL;

SELECT 
    emp_firstname, emp_lastname
FROM
    hs_hr_employees
WHERE
    emp_hm_telephone IS NULL
ORDER BY emp_firstname ASC;

SELECT 
    emp_firstname, emp_lastname, emp_birthday
FROM
    hs_hr_employees
WHERE
    emp_birthday IS NOT NULL
ORDER BY emp_lastname DESC;

select
   *
FROM
    hs_hr_employees left join hs_hr_emp_work_experience
where emp_firstname='Md';

-- ORDER BY emp_lastname DESC;

select * from hs_hr_emp_work_experience;

select * from hs_hr_employees
where employee_id=500 or employee_id=5960 or employee_id=6961;

select * from hs_hr_employees
where employee_id in (6961,5960,5963,6975);

select * from hs_hr_employees
where employee_id between 1000 and 7000
order by employee_id;