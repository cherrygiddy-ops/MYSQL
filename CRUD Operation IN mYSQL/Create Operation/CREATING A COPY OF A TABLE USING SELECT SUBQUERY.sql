Create table orders_archived as select * from orders;
create table invoices_archived as (SELECT  invoice_id,number,c.name as client ,payment_date FROM invoices I inner JOIN CLIENTS c on i.client_id= c.client_id WHERE payment_date is not null);
