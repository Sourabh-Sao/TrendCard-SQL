--* Question 14: Top 5 Cities by Number of Customers
--? Find the top 5 cities with the highest number of customers who joined the platform. Show city, customer_count. Sort descending by customer_count.

select city,COUNT(customer_id) as customer_count
from customers
GROUP BY city
ORDER BY customer_count desc
limit 5;
