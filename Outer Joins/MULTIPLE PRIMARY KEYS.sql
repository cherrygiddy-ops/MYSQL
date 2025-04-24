SELECT  * FROM order_items  left join order_item_notes using (order_id,product_id);
