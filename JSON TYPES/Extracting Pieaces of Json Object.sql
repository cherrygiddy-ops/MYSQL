SELECT product_id,properties >> '$.manufacturer.name'
 FROM `sql_store-r`.products
 where product_id =2