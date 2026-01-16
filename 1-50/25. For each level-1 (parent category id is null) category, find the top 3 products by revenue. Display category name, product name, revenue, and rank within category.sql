-- For each level-1 (parent category id is null) category, find the top 3 products by revenue. Display category name, product name, revenue, and rank within category
-- Top 3 Categories by Revenue in Each Year
-- For each calendar year (2022 to 2025), find the top 3 top-level categories (parent_category_id IS NULL) by total revenue (completed orders).
-- Show: year, category_name, total_revenue, rank_in_year
-- Use window function (RANK or DENSE_RANK).

with cte as (
select YEAR(order_date) as year,c2.name as Category_name,
SUM(total_amount) as total_revenue,
DENSE_RANK() OVER(PARTITION BY YEAR(order_date) ORDER BY SUM(total_amount) desc) as rnk
from categories c1
join categories c2
on c1.parent_category_id=c2.category_id
join products p
on c1.category_id=p.category_id
join order_items ot
USING(product_id)
join orders
USING(order_id)
where status='Completed' and c2.parent_category_id is NULL
GROUP BY 1,2
)select *
from cte 
where rnk<=3
