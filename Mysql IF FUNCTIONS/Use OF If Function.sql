SELECT order_id,order_date,if(year(order_date)=year(now())-6,'ACTIVE','ARCHIVED') AS Category FROM orders;
 
SELECT product_id,name, count(*) as number_of_orders, if(count(*) >1,'Many times','ounce') as Frequency FROM order_items join products  using(product_id) group by product_id,name