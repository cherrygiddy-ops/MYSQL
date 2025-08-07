SELECT
date ,
pm.name as Payment_method,
sum(amount) as Total_Payment
  FROM `sql_invoicing-r`.payments p
   join payment_methods pm on p.payment_method = pm.payment_method_id
  group by date,Payment_method
  order by date