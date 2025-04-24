USE SQL_INVOICING;
DELIMITER $$
DROP TRIGGER IF EXISTS payments_after_insert;
CREATE Trigger payments_after_insert
after insert on payments
for each row
begin
UPDATE invoices set  payment_total= payment_total + new.amount,
                                       payment_date =new.date
where invoice_id = new.invoice_id;

INSERT INTO payment_audit 
values (new.client_id,new.date,new.amount,'insert',now());

end $$
DELIMITER ;