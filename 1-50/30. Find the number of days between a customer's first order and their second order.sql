--! Using LAG() 
with cte as (
select first_name,order_date,ROW_NUMBER() OVER(PARTITION BY first_name ORDER BY order_date) as ordr_seq,
LAG(order_date) OVER(PARTITION BY first_name ORDER BY order_date) as second_order
from customers
join orders
USING(customer_id)
)select first_name,order_date,second_order,DATEDIFF(order_date,second_order) as days_to_second_purchase
from cte
where ordr_seq=2;

--! Using LEAD() 
with cte as (
select first_name,order_date as first_order,ROW_NUMBER() OVER(PARTITION BY first_name ORDER BY order_date) as seq,
LEAD(order_date) OVER(PARTITION BY first_name ORDER BY order_date) as second_order
from customers
join orders 
USING(customer_id)
)select first_name,first_order,second_order,DATEDIFF(second_order,first_order) as days_to_second_purchase,seq
from cte
where seq=1 and second_order is not null
