-- Find employees whose bonus is NULL.
select full_name, bonus
from basics.employees
where bonus is NULL;

-- Find employees who have a bonus value.
select full_name, bonus
from basics.employees
where bonus is not NULL;


select full_name, bonus
from basics.employees
where bonus >= 5000;
