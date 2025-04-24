select * from products;
update products
set properties  = JSON_SET(
  properties,
  '$.weight',20,
  '$.age',30
  )
  where  product_id =1;