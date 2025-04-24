SELECT  o.customer_id,o.order_id,o.order_date, 'Active' as Status FROM sql_store.orders o where order_date >= '2019-01-01'
UNION 
SELECT  o.customer_id,o.order_id,o.order_date, 'Archived' as Status FROM sql_store.orders o where order_date <= '2019-01-01';
