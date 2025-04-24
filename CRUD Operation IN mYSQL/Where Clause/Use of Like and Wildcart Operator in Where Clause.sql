select * from customers where last_name like 'b%';start with b and have other characters after b or %b means ends with b
select * from customers where last_name like '_____y';selecting all customers where last name ends with y but have another 5 characters before y
                                         we use % to represent a number of characters and _ to represent a single character
select * from customers where address like '%trail%' or address like '%avenue%';
select * from customers where phone NOT like '%9';