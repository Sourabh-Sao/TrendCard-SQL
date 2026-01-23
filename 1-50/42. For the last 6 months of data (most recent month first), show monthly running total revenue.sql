with cte as (
select DATE_FORMAT(order_date,"%Y-%m")order_mth,SUM(total_amount) as monthly_revenue
from orders
where order_date>=DATE_SUB(CURRENT_DATE(),INTERVAL 6 MONTH)
GROUP BY 1
)select order_mth,monthly_revenue,SUM(monthly_revenue) OVER(ORDER by order_mth) as running_total
from cte
