update invoices set payment_total =invoice_total*0.8,payment_date = '2024-01-06' where client_id in (select  client_id from clients where name  in ('vinte','myworks'))
