DELIMITER $$
CREATE  PROCEDURE  get_invoices_with_Balance ()
Begin
SELECT * FROM sql_invoicing.invoice_with_balances
where balance >0;

end $$

DELIMITER ;