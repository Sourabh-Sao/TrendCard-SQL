with cte as 
(   select product_id,p.name as prod_name ,c2.name as cate_name,
    ROW_NUMBER() OVER(ORDER BY product_id) as row_asc,
    ROW_NUMBER() OVER(ORDER BY product_id desc) as row_desc
    from categories c1
    join categories c2
    on c1.parent_category_id=c2.category_id
    join products p
    on p.category_id=c1.category_id
    where c2.name='Electronics'
)
select cte1.product_id,cte2.product_id
from cte cte1
join cte cte2 
on  cte1.row_asc=cte2.row_desc
