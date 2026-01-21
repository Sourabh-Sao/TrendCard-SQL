select first_name,hire_date,
YEAR(hire_date)+5 as anniversary_year,
DATE_ADD(hire_date,INTERVAL 5 YEAR) as anniversary_date
from employees;
