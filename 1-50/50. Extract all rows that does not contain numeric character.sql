select name as product_name
from products
where name not REGEXP '[0-9]'
