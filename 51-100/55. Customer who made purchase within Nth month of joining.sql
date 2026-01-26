-- Ex- 2 months
select first_name,join_date,DATE(order_date)
from customers c
join orders 
USING(customer_id)
where order_date BETWEEN join_date and DATE_ADD(join_date,INTERVAL 2 MONTH)
