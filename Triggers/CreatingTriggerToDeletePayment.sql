DELIMITER $$
DROP TRIGGER IF EXISTS payments_after_delete;
CREATE Trigger payments_after_delete
after delete on payments
for each row
begin
Update invoices set payment_total = payment_total-old.amount,
                                     payment_date =null
where invoice_id = old.invoice_id;
end $$
DELIMITER ;