SELECT e.employee_id,e.first_name,e.last_name,m.first_name as Manager FROM mployees e nner join employees m n e.reports_to = m.employee_id;
