/*

1- Create a stored procedure 
that takes a store_id as input and 
returns the total revenue generated 
by that store.

2- Create a trigger that automatically 
sets the shipped_date 
in the sales.orders table when 
an order is marked as completed 
(order_status = 4).

(hint: use UPDATE() to check if the
column modified (return true) 
	or not(return false))


3- Create a table-valued function 
that takes a store_id as 
input and returns the list 
of staff members (staff_id, first_name
, last_name) working at that store.

4- Write a cursor to iterate over 
the sales.staffs table and display 
the staff_id and email 
	of each staff member.

*/