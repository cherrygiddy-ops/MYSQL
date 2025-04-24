USE SQL_STORE;
START TRANSACTION;
iNSERT INTO orders(customer_id,order_date,status)
VALUES (7,now(),1);

INSERT INTO order_items
VALUES (last_insert_id(),2,2,3.1);

ROLLBACK