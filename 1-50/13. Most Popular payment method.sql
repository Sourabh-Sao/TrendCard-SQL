--* Question 13: Most Popular Payment Method
--? Which payment method is used most frequently in completed orders? Show payment_method and count_of_orders.

select payment_method,COUNT(payment_method) count_of_orders
from orders
where status='Completed'
GROUP BY payment_method
ORDER BY count_of_orders desc
