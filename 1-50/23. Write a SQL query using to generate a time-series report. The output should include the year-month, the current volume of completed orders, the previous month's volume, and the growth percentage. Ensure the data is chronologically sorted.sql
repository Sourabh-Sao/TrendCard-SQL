-- Write a SQL query using to generate a time-series report. The output should include the year-month, the current volume of completed orders, 
-- the previous month's volume, and the growth percentage. Ensure the data is chronologically sorted

with cte as (
select 
    DATE_FORMAT(order_date,'%Y-%m') as month_year,
    COUNT(order_id) as current_month_order
from orders
where status='Completed' and 
order_date BETWEEN '2023-01-01' and '2025-12-31'
GROUP BY 1
order by 1
)select *,LAG(current_month_order) OVER(order by month_year) as previous_month_order,
ROUND(((current_month_order-LAG(current_month_order) OVER(order by month_year))/
LAG(current_month_order) OVER(order by month_year))*100,1) as growth_pct
from cte;

-- OR

with cte as (
select 
    DATE_FORMAT(order_date,'%Y-%m') as month_year,
    COUNT(order_id) as current_month_order
from orders
where status='Completed' and 
order_date BETWEEN '2023-01-01' and '2025-12-31'
GROUP BY 1
order by 1
),
cte2 as (
    select *,LAG(current_month_order) OVER(order by month_year) as previous_month_order
    from cte
)
select *,ROUND(((current_month_order-LAG(current_month_order) OVER(order by month_year))/
LAG(current_month_order) OVER(order by month_year))*100,1) as  growth_pct
from cte2;
