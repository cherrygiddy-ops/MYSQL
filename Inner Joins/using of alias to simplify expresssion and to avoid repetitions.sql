SELECT order_id,o.customer_id,first_name,last_name FROM orders o inner join customers c on o.customer_id= c.customer_id;
