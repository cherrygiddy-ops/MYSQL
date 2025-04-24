SELECT p.product_id,name,quantity,p.unit_price FROM products p inner join sql_store.order_items oi on p.product_id = oi.product_id;

