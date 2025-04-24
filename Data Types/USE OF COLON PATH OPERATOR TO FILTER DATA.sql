select product_id,properties ->> '$.manufacturer.name' as weight
from products
where properties ->> '$.manufacturer.name' = 'sony'