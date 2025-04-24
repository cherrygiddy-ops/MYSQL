
SELECT   
     client_id,
     name,
     (select sum(invoice_total) from invoices where client_id = c.client_id) as Total_sales,
     (select avg (invoice_total) from invoices) as Average,
     (select Total_sales -Average) as Diffrence
 FROM clients c
