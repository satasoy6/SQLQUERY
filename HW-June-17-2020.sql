
##===Task-1:Display all employees whose last name ends with ‘a’.
SELECT 
    *
FROM
    hs_hr_employees
WHERE
    emp_lastname LIKE '%a';

##===Task-2:Display all HRMS offices except those located in US, Canada and Brazil.==
SELECT 
    *
FROM
    ohrm_location
WHERE
    country_code NOT IN ('US' , 'CA', 'BR');

##==Task-3: Verify all employees who was born from January 1st of 1980 until December 31st of 2000.

SELECT 
    *
FROM
    hs_hr_employees
WHERE
    emp_birthday BETWEEN '1980-01-01' AND '2000-12-31';
    
    ##==Task-4: Display all nationalities that start with ‘C’
SELECT 
    *
FROM
    ohrm_nationality
WHERE
    name LIKE 'C%';

##===Task-5: Display all employees’ whose birthday is in August and do not forget to sort employee’s last name from A-Z.

SELECT 
    *
FROM
    hs_hr_employees
WHERE
    emp_birthday LIKE '%-08-%'
    ORDER BY emp_lastname asc;
    
##==Task-6: Verify all the employees who are managers.
    
SELECT 
    hs_hr_employees.emp_firstname,
    hs_hr_employees.emp_lastname,
    ohrm_job_title.job_title
FROM
    hs_hr_employees,
    ohrm_job_title
WHERE
    hs_hr_employees.job_title_code = ohrm_job_title.id
        AND ohrm_job_title.job_title LIKE '%Manager%';
        
##==Task-7: How to display first name, last name, dob of employees who is a Freelancer or developer
select 
emp_firstname, emp_lastname, emp_birthday
   FROM
    hs_hr_employees
WHERE
    job_title_code in('10', '35');
        
