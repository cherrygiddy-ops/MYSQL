CREATE DEFINER=`root`@`localhost` PROCEDURE `getPaymentsUsingIFNULL`(
 client_id int ,
 payment_method_id tinyint
)
BEGIN
   select * from payments p where p.client_id = ifnull(client_id,p.client_id)  and 
    p.payment_method = ifnull(payment_method_id,p.payment_method);
END