DELIMITER $$
ALTER EVENT  yearly_delete_audit_rows
on schedule 
  -- AT  '2026-01-01' MEANS WE ARE SCHEDULING THIS EVENT OUNCE ONLY
     every 1 YEAR STARTS  '2025-01-01' ENDS '2030-01-01'
DO BEGIN 
  DELETE FROM payment_audit where  action_date  < now() - interval 1 year ;
  
END $$;

DELIMITER ;