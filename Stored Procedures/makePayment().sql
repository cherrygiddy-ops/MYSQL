CREATE DEFINER=`root`@`localhost` PROCEDURE `make_Payment`(
 invoice_id int,
 payment_amount decimal (9,2),
 payment_date date
)
BEGIN
if payment_amount <=0 then signal sqlstate '22003' set message_text  = 'invalid payment amount';
end if;
 update invoices i 
 set 
          i.invoice_id = invoice_id,
          i.payment_total = payment_amount,
          i.payment_date = payment_date
where i.invoice_id = invoice_id;

END