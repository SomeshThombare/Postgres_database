-- in: find who works in pune, mumbaai, solapur
select full_name, city, department
from basics.employees
where department != 'HR' AND department != 'Finance';


-- between 35k to 45k salary range
select full_name, salary, department
from basics.employees
where salary between 35000 and 45000;
