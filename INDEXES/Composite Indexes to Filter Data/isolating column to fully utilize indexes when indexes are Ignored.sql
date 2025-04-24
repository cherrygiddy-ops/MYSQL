select count(distinctrow state),
            count(distinct last_name)
from customers;
create index idx_points on customers (points);
drop index idx_points on customers;
 create index idx_state_last_name on customers (state,last_name);
 explain 
 select  customer_id from customers where state ='ca' 
 union
 select  customer_id from customers where   points >1000;