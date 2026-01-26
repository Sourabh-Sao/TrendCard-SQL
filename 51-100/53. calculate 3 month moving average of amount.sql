with cte as (
select YEAR(order_date) yer,MONTH(order_date) mth,sum(total_amount) as amount
from orders
GROUP BY 1,2
)select yer,mth,amount,AVG(amount) OVER( order by yer,mth rows BETWEEN 2 preceding and current ROW) 3_month_moving_avg
from cte
