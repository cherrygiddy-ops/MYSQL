DELIMITER $$
  drop event  if exists yearly_delete_stale_audit_rows;
CREATE  Event  yearly_delete_stale_audit_rows
     on schedule
     every 1 year starts  '2026-01-01' ends '2035-01-01'
do Begin

delete from payment_audit where action_date <now() - interval 1 year;
End $$

DELIMITER ;

