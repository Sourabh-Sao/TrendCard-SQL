
-- for odd no. of records 
with cte as (
select department,salary,
ROW_NUMBER() OVER(PARTITION BY department order by salary) sal_asc,
ROW_NUMBER() OVER(PARTITION BY department order by salary desc) sal_desc
from employees
)select department,AVG(salary)
from cte
where sal_asc=sal_desc
GROUP BY department;

-- for even no. of records 
with cte as (
select department,salary,
ROW_NUMBER() OVER(PARTITION BY department order by salary) sal_asc,
ROW_NUMBER() OVER(PARTITION BY department order by salary desc) sal_desc
from employees
)select department,AVG(salary)
from cte
where sal_asc in (sal_desc,sal_desc-1,sal_desc+1)
GROUP BY department;


--? Its given by a guy on linkedin  
-- for both 
WITH ordered AS (
 SELECT
 department,
 salary,
 ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary) AS rn,
 COUNT(*) OVER (PARTITION BY department) AS cnt
 FROM employees
)SELECT 
 department,
 AVG(salary) AS median_salary
FROM ordered
WHERE rn IN (
 FLOOR((cnt + 1) / 2.0),
 CEIL((cnt + 1) / 2.0)
)GROUP BY department;
