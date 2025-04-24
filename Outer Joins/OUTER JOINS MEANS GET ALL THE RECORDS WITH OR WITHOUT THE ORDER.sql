SELECT  c.customer_id,first_name,order_date FROM  customers c left join orders o on c.customer_id =o.customer_id order by c.customer_id;

