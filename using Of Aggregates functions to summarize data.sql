SELECT 
   'First Half of 2019' as Date_Range,
  sum( invoice_total) as Total_Sales,
   sum(payment_total) as Total_Payment,
   (sum( invoice_total)- sum(payment_total) ) as What_we_Expect
FROM `sql_invoicing-r`.invoices where invoice_date  between '2019-01-01' and '2019-06-01'
union
SELECT 
   'Second Half of 2019' as Date_Range,
  sum( invoice_total) as Total_Sales,
   sum(payment_total) as Total_Payment,
   (sum( invoice_total)- sum(payment_total) ) as What_we_Expect
FROM `sql_invoicing-r`.invoices where invoice_date between '2019-06-02' and '2019-12-31'

union
SELECT 
   'Total' as Date_Range,
  sum( invoice_total) as Total_Sales,
   sum(payment_total) as Total_Payment,
   (sum( invoice_total)-sum(payment_total) ) as What_we_Expect
FROM `sql_invoicing-r`.invoices where invoice_date between '2019-01-01' and '2019-12-31'