use sql_invoicing;
CREATE VIEW  Sales_per_client_1 as
SELECT 
  c.client_id,
  c.name,
  sum(invoice_total) as Total_sales_per_Customer
FROM clients c
join invoices using (client_id)
group by (client_id)
order by Total_sales_per_Customer desc
