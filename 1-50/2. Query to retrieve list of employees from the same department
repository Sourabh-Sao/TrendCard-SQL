--* Question 2: Write a query to retrieve list of employees from the same department

select e1.first_name,e2.first_name,e1.department
from employees e1
join employees e2
on e1.department=e2.department
where e1.employee_id!=e2.employee_id
