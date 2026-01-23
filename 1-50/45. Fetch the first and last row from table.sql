(select *
from customers
order by customer_id ASC
limit 1)
UNION ALL
(select *
from customers
order by customer_id  DESC
limit 1)
