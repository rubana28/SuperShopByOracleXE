set serveroutput on;
create or replace procedure proc3(c_id IN varchar2)
is
 c_name varchar2(10);
 p_name varchar2(10);
begin
	select supplier.sup_name,supplier.sup_product INTO c_name,p_name from supplier INNER JOIN product ON supplier.sup_product=product.prod_id where supplier.sup_date=c_id;

	DBMS_output.put_line('Supplier Name: '||(c_name)||'   Supplied Product: '||(p_name));
	

end;
/

begin
	proc3('01-01-2018');
end;
/

