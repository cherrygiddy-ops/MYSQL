


update products
set properties =    json_object(
'weight',10,
'dimentions',json_array(1,2,3),
'manufacturer',json_object('name','sony'))
where product_id = 2