Create View Client_balances as
SELECT 
client_id,
name,
(select sum(invoice_total) from invoices where  client_id = i.client_id) as Total_sales,
(select sum(payment_total) from invoices where  client_id = i.client_id) as Total_Payment,
(select Total_sales -Total_payment) as Balances
FROM invoices i
join clients using (client_id)
group by client_id;

create view Client_balance_2 as 
select  c.client_id,
  c.name,
  sum(invoice_total -payment_total) as Balances
from clients c
join invoices i using (client_id)
group by client_id,name