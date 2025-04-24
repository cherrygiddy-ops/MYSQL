SELECT  
       max(Invoice_total)  AS Highest,
       min(invoice_total) as Minimum,
       avg(invoice_total) as Average,
       sum(invoice_total) as 'Total sales',
       count(invoice_date) as 'total number of Invoices',
       count(*) as 'total number of Invoices'
from Invoices where invoice_date  < '2019-06-01'
