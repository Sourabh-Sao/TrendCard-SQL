select first_name,hire_date,
TIMESTAMPDIFF(YEAR,hire_date,CURRENT_DATE()) as year_worked
from employees
