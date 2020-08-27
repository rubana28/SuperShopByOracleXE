set serveroutput on;

create or replace procedure proc1(b_id in number, c_id in number)
	is
	c_name varchar2(20);
	b_name varchar2(20);
begin
	select customer.cust_name,branch.branch_name into c_name,b_name from customer INNER JOIN branch ON customer.cust_branch_id = branch.branch_id WHERE cust_branch_id = b_id and cust_id = c_id;
	DBMS_output.put_line('Branch Name: ' || b_name || ' Customer Name: ' || c_name);
end;
/
