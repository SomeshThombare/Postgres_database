-- Find employees whose names start with 'S' using LIKE and %.

select full_name 
from basics.employees
where full_name like 's%' OR full_name like 'S%';

--  start with s
SELECT full_name
FROM basics.employees
WHERE full_name ILIKE 's%';


-- endign with a
SELECT full_name
FROM basics.employees
WHERE full_name ILIKE '%a';

-- containg 'more'
SELECT full_name
FROM basics.employees
WHERE full_name ILIKE '%more%';

-- exact match'
SELECT *
FROM basics.employees
WHERE full_name ILIKE 'sam patil';

