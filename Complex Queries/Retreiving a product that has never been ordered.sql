select * from products  where product_id not in (SELECT  distinct product_id FROM  order_items);
-- RETREIVING PRODUCTS WHICH HAS NEVER BEEN ORDERED USING SUBQUERY::NOT IN OPERATOR
 select * from clients where client_id not in (SELECT  distinct client_id FROM invoices);