Insert into orders ( customer_id,order_date,status)
values (2,'2025-01-09',1);
insert into order_items 
values (last_insert_id(),5,2,3.89),
       (last_insert_id(),2,2,1.89)