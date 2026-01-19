
with cte as (
select cu.first_name as customer_name,c2.name as category_name,sum(total_amount) as total_revenue
from categories c1
join categories c2
on c1.parent_category_id=c2.category_id
join products p
on p.category_id=c1.category_id
join order_items ot
on ot.product_id=p.product_id
join orders o
on o.order_id=ot.order_id
join customers cu
on cu.customer_id=o.customer_id
where o.status='Completed' and c2.parent_category_id is null
GROUP BY 1,2
),cte2 as (
    select *,DENSE_RANK() OVER(PARTITION BY category_name ORDER BY total_revenue DESC) as d_rnk
    from cte
) select customer_name,category_name,total_revenue
from cte2
where d_rnk=1
order by total_revenue DESC;
