explain SELECT customer_id FROM `sql_store-r`.customers
where points >1000;

create index idx_points on customers(points);