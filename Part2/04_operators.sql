-- in: find who works in pune, mumbaai, solapur
select full_name, city, department
from basics.employees
where department != 'HR' AND department != 'Finance';


-- between 35k to 45k salary range
select full_name, salary, department
from basics.employees
where salary between 35000 and 45000;

select full_name, salary, department
from basics.employees
where salary between 30000 and 40000
 AND department = 'IT';

 -- all table 
 select * from basics.employees;

 -- add 5000 rs bonus where bonu i null
 update basics.employees
 set bonus = 5000
 where bonus is NULL;

select * from basics.employees;