select * from products;
update products
set properties  = JSON_REMOVE(
  properties,
  '$.age'
  )
  where  product_id =1;