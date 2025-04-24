USE SQL_STORE;
 create index idx_state_points on customers (state,points);
explain  select customer_id from customers
where state ='ca' and points >1000