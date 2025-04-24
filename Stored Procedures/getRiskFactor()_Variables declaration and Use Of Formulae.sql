CREATE DEFINER=`root`@`localhost` PROCEDURE `get_Risk_Factor`(
)
BEGIN
declare riskFactor decimal(9,2) default 0;
declare invoices_total decimal (9,2);
declare invoices_count int ;

select count(*),sum(invoice_total)
into  invoices_count,invoices_total
from invoices ;

set riskFactor = invoices_total / invoices_count  * 5;

select riskFactor;
-- riskfactor = invoice_total / invoices_count * 5;
END