set serveroutput on;
create or replace procedure proc2(c_id IN int)
is

totalBill int;
finalBill int;
total int;

begin

select pur_amount INTO total from purchase@site_link INNER JOIN customer@site_link ON purchase.pur_cust_id=customer.cust_id where pur_cust_id=c_id;

if total<1000 then
	totalBill:=total;
	finalBill:=total-total*10/100;

elsif total>=1000 and total<3000 then
	totalBill:=total;
	finalBill:=total-total*20/100;

elsif total>=3000 and total<6000then
	totalBill:=total;
	finalBill:=total-total*30/100;

else 
	totalBill:=total;
	finalBill:=total-total*50/100;
end if;

	DBMS_output.put_line('Total bill: '||(totalBill)||'   Final Bill: '||(finalBill));
	

end;
/

begin
	proc2(3);
end;
/

