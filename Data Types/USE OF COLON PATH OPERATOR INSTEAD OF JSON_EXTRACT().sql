select product_id,properties -> '$.weight' as weight
from products where product_id =1;