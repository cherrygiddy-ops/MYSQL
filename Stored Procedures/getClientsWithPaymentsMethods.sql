CREATE DEFINER=`root`@`localhost` PROCEDURE `get_Payment`(client_id int,payment_method tinyint)
BEGIN
if client_id is null and  payment_method  is null then
          select * from payments;
elseif payment_method is null  then
         select * from payments p  where  p.client_id =client_id;
else 
        select * from  payments p where p.client_id = client_id and p.payment_method = payment_method;
end if;
end