--* Question 7: Find employees who earn more than their manager.

select emp.first_name as Employee_Name,
manager.first_name as Manager_Name
from employees as emp
join employees as manager
on emp.manager_id=manager.employee_id
where emp.salary>manager.salary
