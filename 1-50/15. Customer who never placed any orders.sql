--* Question 15: Find customers who joined the platform but have never placed any order (completed or otherwise).Show full name, join_date, city.

select first_name,join_date,city
from customers c
left join orders o
on  c.customer_id=o.customer_id
where o.order_id is null;
