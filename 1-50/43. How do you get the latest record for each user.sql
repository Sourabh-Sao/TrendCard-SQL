with cte as (
select first_name,order_date,ROW_NUMBER() OVER(PARTITION BY first_name order by order_date DESC) as rno
from customers
join orders
USING(customer_id)
)select first_name,order_date
from cte
where rno=1;
