SELECT  client_id,count(*) as Total_number_invoice_per_client FROM invoices group by client_id order by Total_number_invoice_per_client desc
