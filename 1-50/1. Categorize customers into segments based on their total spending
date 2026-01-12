--* Question 1: Customer Segmentation by Purchase Behavior (Binning & Bucketing)
--* Problem: Categorize customers into segments based on their total spending:
--? 'Premium' (>100,000)
--? 'Gold' (50,000-100,000)
--? 'Silver' (20,000-50,000)
--? 'Bronze' (<20,000)
--* Show customer name, total spending, number of orders, and segment. Order by total spending descending.

select first_name,SUM(total_amount)as total_spending,COUNT(order_id) as order_count,
CASE 
    WHEN SUM(total_amount)> 100000 THEN  "Premium"
    WHEN SUM(total_amount) BETWEEN 50000 and 100000 THEN  "Gold"
    WHEN SUM(total_amount) BETWEEN 20000 and 50000 THEN  "Silver"
    ELSE  "Bronze"
END as segment
from customers
join orders
USING(customer_id)
GROUP BY 1
order by 2 desc;
