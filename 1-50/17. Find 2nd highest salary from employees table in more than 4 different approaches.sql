
--? Approach 1
select max(salary)
from employees 
where salary<(
select max(salary)
from employees 
)

--? Approach 2
SELECT salary
from (
select salary,ROW_NUMBER() OVER(ORDER BY salary desc) as rno
from employees )sub 
where rno=2;

--? Approach 3 
SELECT salary
from (
select salary,dense_rank() OVER(ORDER BY salary desc) as rno
from employees )sub 
where rno=2;

--? Approach 4 
select * 
from employees
WHERE salary not in (
select max(salary) from employees )
ORDER BY salary DESC
limit 1;

--? Approach 5 
select salary
from employees
GROUP BY salary
ORDER BY salary desc
limit 1 offset 1
