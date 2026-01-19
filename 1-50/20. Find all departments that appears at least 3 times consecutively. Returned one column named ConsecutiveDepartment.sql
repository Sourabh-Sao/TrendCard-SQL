
SELECT DISTINCT e1.department as ConsecutiveDepartment
from employees e1
join employees e2
on e1.employee_id+1=e2.employee_id and e1.department=e2.department
join employees e3
on e2.employee_id+2=e3.employee_id and e2.department=e3.department;


--? I found this approach on someone's linkedin post  
with cte as (
select department,LEAD(department,1) over(ORDER BY employee_id) as next_dpt,
LEAD(department,2) over(ORDER BY employee_id) as next_next_dpt
from employees
)
select DISTINCT department as ConsecutiveDepartment
from cte
where department=next_dpt and next_dpt=next_next_dpt

-- Above ones are mostly preferable
-- Using Subquery
select DISTINCT department
from (
select department,LEAD(department,1) over(ORDER BY employee_id) as next_dpt,
LEAD(department,2) over(ORDER BY employee_id) as next_next_dpt
from employees
) as subquery
WHERE department=next_dpt and next_dpt=next_next_dpt
