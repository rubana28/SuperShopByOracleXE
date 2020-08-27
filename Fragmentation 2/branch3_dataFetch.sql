DECLARE 
 
   CURSOR c_user3 is 
      SELECT user_id, user_name, pass, role, user_branch_id, user_storage_info  FROM user_table where user_branch_id = 3; 
   CURSOR c_customer3 is 
      SELECT cust_id, cust_name, cust_no, cust_email, cust_branch_id  FROM customer where cust_branch_id = 3; 
   CURSOR c_supplier3 is 
      SELECT sup_id, sup_name, sup_date, sup_product, sup_amount, sup_cost, sup_branch  FROM supplier where sup_branch = 3;   
BEGIN 

   FOR test_cursor IN c_user3 LOOP 
   

   INSERT INTO user_table3 ( user_id, user_name, pass, role, user_branch_id, user_storage_info )
	VALUES (test_cursor.user_id, test_cursor.user_name, test_cursor.pass, test_cursor.role, test_cursor.user_branch_id, test_cursor.user_storage_info);
	  
   END LOOP; 
   
   FOR test_cursor1 IN c_customer3 LOOP 
   

   INSERT INTO customer3 ( cust_id, cust_name, cust_no, cust_email, cust_branch_id )
	VALUES (test_cursor1.cust_id, test_cursor1.cust_name, test_cursor1.cust_no, test_cursor1.cust_email, test_cursor1.cust_branch_id);
	  
   END LOOP; 
   
   
   FOR test_cursor2 IN c_supplier3 LOOP 
   

   INSERT INTO supplier3 (sup_id, sup_name, sup_date, sup_product, sup_amount, sup_cost, sup_branch )
	VALUES (test_cursor2.sup_id, test_cursor2.sup_name, test_cursor2.sup_date, test_cursor2.sup_product, test_cursor2.sup_amount , test_cursor2.sup_cost, test_cursor2.sup_branch);
	  
   END LOOP; 
 
   
   COMMIT;
END; 
/