select product_id,JSON_EXTRACT(properties, '$.weight') as weight
from products where product_id =1;