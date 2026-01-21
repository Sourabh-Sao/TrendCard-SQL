select *
from customers
where join_date>=(DATE_SUB(CURRENT_DATE,INTERVAL 2 MONTH)) -- N=2
