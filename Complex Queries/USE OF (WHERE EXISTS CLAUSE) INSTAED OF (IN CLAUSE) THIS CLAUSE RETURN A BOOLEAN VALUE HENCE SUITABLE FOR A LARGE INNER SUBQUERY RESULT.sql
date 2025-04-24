select * from clients c where exists (select client_id from invoices where client_id = c.client_id)
select * from  products p where not exists(SELECT  distinct product_id FROM order_items where product_id =p.product_id);
