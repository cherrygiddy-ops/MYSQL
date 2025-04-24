SELECT order_id, coalesce(shipper_id,comments,'Not Assingned') as Shipper_id FROM sql_store.orders;
