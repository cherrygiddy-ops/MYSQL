insert into orders(customer_id,order_date,status)
values(5,'2025-07-04',1);

insert into order_items
values(last_insert_id(),2,2,5.6),
            (last_insert_id(),4,2,8.6)