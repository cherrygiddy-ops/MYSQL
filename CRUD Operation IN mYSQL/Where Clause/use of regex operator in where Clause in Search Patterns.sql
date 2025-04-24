select * from customers where last_name regexp 'field|mac|rose';
select * from customers where last_name regexp '[gim]e';this search patterns means that in the customers table return the records where last name have g or I or m then e 
       regular expression -> ^ to represent beginning of a string
                             $ to represent the end of a string
                             | to represent logical or
                             [abcde] we use brackets to match any single item listed inside brackets
                             [a-h] we use square brackets to represent a range of values to match
select * from customers where last_name regexp 'ey$|on$';
select * from customers where last_name regexp '^my|se';
select * from customers where last_name regexp 'b[ru]';
select * from customers where last_name regexp 'b[ru]' or first_name regexp 'red';
