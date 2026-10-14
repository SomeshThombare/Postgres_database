-- #disly full_name, dept, salary

SELECT full_nmae, department, salary
FROM basics.employees;


-- #salary > 45000
SELECT full_name
FROM  basics.employees
WHERE salary > 45000;

-- find is emp in pune
SELECT  full_name, department,city
FROM basics.employees
WHERE city = 'Pune';

-- who works in hr and finance
SELECT full_name, department
FROM basics.employees
WHERE department = 'HR' OR department = 'Finance';

-- not in  it dept
SELECT full_name, department
FROM basics.employees
WHERE department != 'IT';