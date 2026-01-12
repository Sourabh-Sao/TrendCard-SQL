--* Question 4: Write a query to fetch 50% of the record from employees table.

select *
from employees
where employee_id<(
select ROUND(COUNT(*)/2,0)
from employees
)
