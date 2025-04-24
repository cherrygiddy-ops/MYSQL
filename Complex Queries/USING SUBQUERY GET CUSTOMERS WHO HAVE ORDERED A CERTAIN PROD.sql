 select * from customers where customer_id in (SELECT distinct customer_id from  order_items oi join orders using (order_id) where product_id = 3)
