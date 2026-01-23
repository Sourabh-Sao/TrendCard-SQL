SELECT
SUM(
  CASE WHEN parent_category_id is null or TRIM(parent_category_id)=''  THEN 1 ELSE  0 END
) as null_missing
from categories 
