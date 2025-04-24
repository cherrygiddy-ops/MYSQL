select product_id,properties -> '$.dimentions[1]' as weight
from products where product_id =1;