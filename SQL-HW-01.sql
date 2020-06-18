use syntaxhrm_mysql;
-- =============HomeWork===============
-- Task-1: How can we first name and last name of employee id 8335?
SELECT 
    emp_firstname, emp_lastname
FROM
    hs_hr_employees
WHERE
    employee_id = 8335;
    
-- Task-2:How can you display unique relationship of employees from emergency contact table
SELECT DISTINCT
    eec_relationship
FROM
    hs_hr_emp_emergency_contacts;
    
    -- Task-3: How to display ex employer and ex job title for employee 9451?
    
  SELECT 
    eexp_employer, eexp_jobtit
FROM
    hs_hr_emp_work_experience
WHERE
    emp_number = 9451;
    
-- Task-4: How to display all the information of employee who was born after January 1 of 1980?

SELECT 
    *
FROM
    hs_hr_employees
WHERE
    emp_birthday > '1980-01-01';


    