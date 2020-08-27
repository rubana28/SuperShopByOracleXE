SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER Print_salary
AFTER DELETE OR INSERT OR UPDATE ON UserTbl
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
b_name varchar(30);
cust_name varchar(30);
cust_id int;
id int;
old_id int;
name_ varchar(30);
user_name varchar(15);
pass int;
new_cust_id int;
new_br_id int;

BEGIN
	
	IF UPDATING THEN
	    ---------------------------------------------------------------------------------
		id := :NEW.id; name_ := :NEW.name; user_name := :NEW.user_name; pass := :NEW.pass;
		new_cust_id := :NEW.cust_ID; new_br_id := :NEW.branchID;
		SELECT name INTO b_name FROM Branch WHERE id = :NEW.branchID;
		SELECT name INTO cust_name FROM ORGANIZATION WHERE id = :NEW.cust_ID;
		--------------------------------------------------------------------------------
		IF :NEW.cust_ID = :OLD.cust_ID THEN
				IF :NEW.cust_ID = 5 THEN
					UPDATE user_info_2@site_link SET branch_name=b_name WHERE id = :NEW.id;
				ELSE
					UPDATE user_info_1@site_link SET branch_name=b_name WHERE id = :NEW.id;
				END IF;
		ELSE
				IF :NEW.cust_ID = 1 THEN 
					DELETE FROM user_info_2@site_link WHERE id = :NEW.id; 
					INSERT INTO user_info_1@site_link VALUES(cust_id, cust_name, cust_no, cust_email, cust_branch_id);

				ELSE
					DELETE FROM user_info_1@site_link WHERE id= :NEW.id;
					INSERT INTO user_info_2@site_link VALUES(cust_id, cust_name, cust_no, cust_email, cust_branch_id);
				END IF;
		END IF;
		
	ELSIF INSERTING THEN
		---------------------------------------------------------------------------------
		id := :NEW.id; name_ := :NEW.name; user_name := :NEW.user_name; pass := :NEW.pass;
		new_org_id := :NEW.cust_ID; new_br_id := :NEW.branchID;
		SELECT name INTO b_name FROM Branch WHERE id = :NEW.branchID;
		SELECT name INTO org_name FROM customer WHERE id = :NEW.cust_ID;
		--------------------------------------------------------------------------------
	
		IF :NEW.cust_ID = 1 THEN  
			INSERT INTO user_info_1@site_link VALUES(cust_id, cust_name, cust_no, cust_email, cust_branch_id);
		ELSE
			INSERT INTO user_info_2@site_link VALUES(cust_id, cust_name, cust_no, cust_email, cust_branch_id);
		END IF;
	
	ELSE
		--DELETE FROM customer WHERE id=15 AND cust_ID=1; gave cust_id to avoid compound trigger
		old_id := :OLD.id;
		org_id := :OLD.organizationID;
		DBMS_OUTPUT.PUT_LINE('Old id is =  '|| old_id);
		DBMS_OUTPUT.PUT_LINE('cust id is =  '|| cust_id);
		IF cust_id = 1 THEN  
			DELETE FROM user_info_1@site_link WHERE id= old_id;
		ELSE
			DELETE FROM user_info_1@site_link WHERE id= old_id;
		END IF;

	END IF;
	
	
END;
/