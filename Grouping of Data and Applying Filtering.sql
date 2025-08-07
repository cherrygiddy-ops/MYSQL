SELECT 
client_id,
sum(invoice_total) as Total_invoices,
count(*) as number_of_Invoices
 FROM `sql_invoicing-r`.invoices
 group by client_id
 having total_invoices >500 and  number_of_invoices >5