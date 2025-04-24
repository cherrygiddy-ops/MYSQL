use sql_store;
explain SELECT  customer_id
FROM customers where state = 'ca';

create index  idx_state  on customers (state);