--  order by acs, desc
-- salary order by high to low
select full_name, salary
from basics.employees
order by salary desc;

select full_name, salary
from basics.employees
order by salary asc;

-- -- both in one table
-- select full_name, salary, department
-- from basics.employees
-- order by salary desc as descding,department asc as ascending;


-- limit: find top 5 highest paid employees
select full_name, salary,department
from basics.employees
order by salary DESC
limit 5 ;

-- Skip the first three employees and display the next three, using ORDER BY employee_id.
select full_name, salary,department
from basics.employees
order by salary desc
offset 3 ;

select full_name, salary, department
from basics.employees
order by salary desc
limit 3 offset 3;
