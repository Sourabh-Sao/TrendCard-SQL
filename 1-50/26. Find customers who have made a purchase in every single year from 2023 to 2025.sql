
select first_name,COUNT(DISTINCT YEAR(order_date)) active_year
from customers
join orders
USING(customer_id)
where YEAR(order_date) BETWEEN 2023 and 2025
GROUP BY 1
HAVING COUNT(DISTINCT YEAR(order_date)) = 3;
