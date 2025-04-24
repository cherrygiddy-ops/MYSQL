SELECT * FROM order_items oin JOIN ORDER_ITEM_notes oi  ON oin.order_id =oi.order_id and oin.product_id= oi.product_id;
