SELECT  
product_id,
name,
count(*) as number_of_orders,
case when count(*) > 1 then 'Many Times'
           when count(*) <=1 then 'ounce'
           else 'unknown'
end as Category
FROM order_items
join products  using(product_id)
group by product_id,name
