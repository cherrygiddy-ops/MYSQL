alter table  orders
add primary key (order_id),
drop primary key ,
drop foreign key fk_orders_customers,
add foreign key fk_orders_customers (customer_id)
  references customers (customer_id)
  on update cascade
  on delete restrict;
