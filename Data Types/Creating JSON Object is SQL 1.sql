use sql_store;
select * from products;
update products
set properties = '
{
 " dimentions":[1,2,3],
 "weight":10,
 "manufacturer":{"name":"sony"}
}
'
where product_id =1;