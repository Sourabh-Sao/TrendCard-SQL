select distinct department,
CONCAT(ROUND(COUNT(*) OVER(PARTITION BY department)*100.0/COUNT(*) OVER(),1),"%") as dept_pct
from employees
