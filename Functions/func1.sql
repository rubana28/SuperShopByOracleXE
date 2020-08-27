create or replace function purCount(c_id in number)
	return number
	is
	
	c number;
begin
	select count(pur_cust_id) into c from purchase where pur_cust_id = c_id;
	
	return c;
end;
/


declare 
 cou number;
 
 begin
 
	cou := purCount(3);
		DBMS_output.put_line(cou);
 
 
 end;
 /