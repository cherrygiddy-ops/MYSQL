select product_id,properties ->> '$.manufacturer.name' as weight
from products where product_id =1;