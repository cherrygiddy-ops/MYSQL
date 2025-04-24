
SELECT  
      'First Half Of 2019' as 'Date Range' ,
       sum(invoice_total) as 'Total sales',
       sum(payment_total) as 'Total Payments',
      sum(payment_total-invoice_total) as 'Profit'
from Invoices
Where invoice_date  between '2019-01-01' and '2019-06-30'
UNION
SELECT  
      'Second Half Of 2019' as 'Date Range' ,
       sum(invoice_total) as 'Total sales',
       sum(payment_total) as 'Total Payments',
       sum(payment_total-invoice_total) as 'Profit'
from Invoices
Where invoice_date between '2019-07-01' and '2019-12-31'
UNION
SELECT  
      'Grand Total' as 'Date Range' ,
       sum(invoice_total) as 'Total sales',
       sum(payment_total) as 'Total Payments',
     sum(payment_total-invoice_total) as 'Profit'
from Invoices
Where invoice_date between '2019-01-01' and '2019-12-31'
