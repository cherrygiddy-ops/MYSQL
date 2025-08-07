SELECT  product_id,
count(*) as Total_number_Orders,
if(count(*) >1,'Many Times','Ounce') as Frequency
FROM `sql_store-r`.order_items
group by product_id