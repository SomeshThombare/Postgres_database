-- update operation
-- Change Sam Patil's salary to 50000.
UPDATE basics.employees
set salary = 50000
where full_name = 'Sam Patil';

SELECT full_name,salary
from basics.employees
where full_name = 'Sam Patil';

-- update multiple column salary is 60000 and city is pune for employee rahul more
update basics.employees
set salary = 60000, city = 'Pune'
where full_name = 'Rahul More';


select full_name, salary, city
from basics.employees
where full_name = 'Rahul More';

-- Set is_active to FALSE for employees in the Sales department.
update basics.employees
set is_active = FALSE
where department = 'Sales';

select full_name, department, is_active
from basics.employees
where department  = 'Sales';