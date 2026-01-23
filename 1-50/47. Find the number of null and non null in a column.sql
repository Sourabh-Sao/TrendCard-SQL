SELECT COUNT(*) total_column_in_table,COUNT(parent_category_id) as not_null,
SUM(
  CASE WHEN parent_category_id is null THEN 1 ELSE  0 END
) as null_values
from categories 


-- or
SELECT COUNT(*) total_column_in_table,COUNT(parent_category_id) as not_null_cnt,COUNT(*)-COUNT(parent_category_id) as null_cnt
from categories 
