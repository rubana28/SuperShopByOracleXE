create or replace function sales_total(c_id in varchar2)
	return number
	is
	
	c number;
begin
	select SUM(sales_total) into c from sales@site_link where sales_date = c_id;
	
	return c;
end;
/


declare 
 cou number;
 
 begin
 
	cou := sales_total('12-06-2018');
		DBMS_output.put_line('TOTAL SALE IS ' || cou);
 
 
 end;
 /