-- Write a query to find number of new and repeat customers for each order date
--  New customer is one who has placed and order for the first time
--  Repeat customer is one who has already placed an order.


with cte as (
select DATE(order_date) as ordr_date,
MIN(DATE(order_date)) OVER(PARTITION BY customer_id) as first_order_date
from customers
join orders
USING(customer_id)
)
select ordr_date,
SUM(
CASE WHEN ordr_date=first_order_date THEN  1 ELSE  0 END 
)new_customer,
SUM(
CASE WHEN ordr_date>first_order_date THEN  1 ELSE  0 END
)repeat_customer
from cte
GROUP BY 1
