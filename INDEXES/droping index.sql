
drop index idx_points on customers;
explain  select customer_id from customers
where points >1000 ;