INSERT INTO branch(branch_id, branch_name, branch_address) VALUES(1, 'Dhaka', 'Baily Road');
INSERT INTO branch(branch_id, branch_name, branch_address) VALUES(2, 'Comilla', 'Nabinagar');
INSERT INTO branch(branch_id, branch_name, branch_address) VALUES(3, 'Sylhet', 'Jaflong');



INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(1, 'Sajid', 01681111111, 'abcd@efg', 1);
INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(2, 'Mahmud', 01681111112, 'bbcd@efg', 1);
INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(3, 'Abdullah', 01681111113, 'cbcd@efg', 1);
INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(4, 'Kamini', 01681111114, 'dbcd@efg', 1);
INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(5, 'Nandini', 01681111115, 'ebcd@efg', 1);
INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(6, 'Rocky', 01681111111, 'abcd@efg', 2);
INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(7, 'Inzamam', 01681111112, 'bbcd@efg', 2);
INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(8, 'Rubana', 01681111113, 'cbcd@efg', 2);
INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(9, 'Soikot', 01681111114, 'dbcd@efg', 2);
INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(10, 'Rubel', 01681111115, 'ebcd@efg', 2);
INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(11, 'Shakib', 01681111111, 'abcd@efg', 3);
INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(12, 'kabir', 01681111112, 'bbcd@efg', 3);
INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(13, 'Hasina', 01681111113, 'cbcd@efg', 3);
INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(14, 'Nurjahan', 01681111114, 'dbcd@efg', 3);
INSERT INTO customer( cust_id, cust_name, cust_no, cust_email, cust_branch_id) VALUES(15, 'Kamlesh', 01681111115, 'ebcd@efg', 3);



INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(1, 'Dove Soap', 100, 'Soap', '12-06-2019', 100, 1);
INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(2, 'Cocacola', 100, 'Beverage', '12-12-2019', 110, 2);
INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(3, 'Horlics', 70, 'Drinks', '21-07-2019', 80, 3);
INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(4, 'Kit Kat', 300, 'Chocolate', '12-11-2019', 150, 4);
INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(5, 'Teer Atta', 70, 'Atta', '12-2-2019', 30, 5);
INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(6, 'Cheese', 340, 'Protein', '12-2-2019', 40, 6);
INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(7, 'French Fries', 10, 'Potato', '12-2-2019', 90, 7);
INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(8, 'Binge Chicken', 2, 'Burger', '12-2-2019', 350, 8);
INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(9, 'Fanta', 50, 'Beverage', '12-2-2019', 80, 9);
INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(10, 'Papaya', 20, 'Vegetables', '12-2-2019', 60, 10);
INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(11, 'Carrot', 25, 'Vegetables', '12-2-2019', 70, 10);
INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(12, 'Mango', 30, 'Fruit', '12-2-2019', 65, 10);
INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(13, 'Frying Pan', 35, 'Utensils', '12-2-2019', 135, 10);
INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(14, 'Remote', 20, 'TV Parts', '12-2-2019', 60, 10);
INSERT INTO product( prod_id, prod_name, prod_amount, prod_type, expiring_date, prod_cost, prod_cust_id) VALUES(15, '', 20, 'Vegetables', '12-2-2019', 60, 10);


INSERT INTO storage(stor_id, stor_name, stor_type, refill_date, stor_prod_id) VALUES(1, 'First', 'Frozen', '21-04-2018', 2);

INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(1, 'Mohona', 123456, 'admin', 1, 1);
INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(2, 'Sahadat', 123456, 'admin', 1, 1);
INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(3, 'Raju', 123456, 'admin', 1, 1);
INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(4, 'Atto', 123456, 'admin', 1, 1);
INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(5, 'Shaheen', 123456, 'admin', 1, 1);
INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(6, 'Azwad', 123456, 'employee', 2, 1);
INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(7, 'Sachi', 123456, 'employee', 2, 1);
INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(8, 'Jahir', 123456, 'employee', 2, 1);
INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(9, 'Jui', 123456, 'employee', 2, 1);
INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(10, 'Rohit', 123456, 'employee', 2, 1);
INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(11, 'Don', 123456, 'employee', 3, 1);
INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(12, 'Sumon', 123456, 'employee', 3, 1);
INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(13, 'Salman', 123456, 'employee', 3, 1);
INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(14, 'Shovon', 123456, 'employee', 3, 1);
INSERT INTO user_table(user_id, user_name, pass, role, user_branch_id, user_storage_info) VALUES(15, 'Shetu', 123456, 'employee', 3, 1);


INSERT INTO purchase( pur_id, pur_type, pur_date, pur_amount, pur_cust_id, pur_prod_id) VALUES(1, 'Cash', '12-06-2018', 2000, 3, 1);
INSERT INTO purchase( pur_id, pur_type, pur_date, pur_amount, pur_cust_id, pur_prod_id) VALUES(2, 'Cash', '12-05-2018', 3000, 3, 2);
INSERT INTO purchase( pur_id, pur_type, pur_date, pur_amount, pur_cust_id, pur_prod_id) VALUES(3, 'Visa Card', '11-06-2018', 1000, 3, 3);
INSERT INTO purchase( pur_id, pur_type, pur_date, pur_amount, pur_cust_id, pur_prod_id) VALUES(4, 'Visa Card', '10-06-2018', 2000, 3, 4);
INSERT INTO purchase( pur_id, pur_type, pur_date, pur_amount, pur_cust_id, pur_prod_id) VALUES(5, 'Cash', '9-06-2018', 600, 3, 5);

INSERT INTO sales(sales_id, sales_amount, sales_total, sales_date, sale_pur_id) VALUES(1, 10, 10000, '12-06-2018', 2);

INSERT INTO supplier(sup_id, sup_name, sup_date, sup_product, sup_amount, sup_cost, sup_branch) VALUES(1, 'Motin', '01-01-2018', 1, 20, 500, 2);
INSERT INTO supplier(sup_id, sup_name, sup_date, sup_product, sup_amount, sup_cost, sup_branch) VALUES(2, 'Sheikh', '02-01-2018', 2, 30, 600, 2);
INSERT INTO supplier(sup_id, sup_name, sup_date, sup_product, sup_amount, sup_cost, sup_branch) VALUES(3, 'Rubel', '03-01-2018', 3, 40, 700, 2);
INSERT INTO supplier(sup_id, sup_name, sup_date, sup_product, sup_amount, sup_cost, sup_branch) VALUES(4, 'Rambo', '04-01-2018', 4, 50, 800, 2);
INSERT INTO supplier(sup_id, sup_name, sup_date, sup_product, sup_amount, sup_cost, sup_branch) VALUES(5, 'Rafiq', '05-01-2018', 5, 60, 900, 2);
INSERT INTO supplier(sup_id, sup_name, sup_date, sup_product, sup_amount, sup_cost, sup_branch) VALUES(6, 'Saiful', '06-01-2018', 6, 70, 400, 3);
INSERT INTO supplier(sup_id, sup_name, sup_date, sup_product, sup_amount, sup_cost, sup_branch) VALUES(7, 'Sudipto', '07-01-2018', 7, 80, 300, 3);
INSERT INTO supplier(sup_id, sup_name, sup_date, sup_product, sup_amount, sup_cost, sup_branch) VALUES(8, 'Himel', '08-01-2018', 8, 90, 200, 3);
INSERT INTO supplier(sup_id, sup_name, sup_date, sup_product, sup_amount, sup_cost, sup_branch) VALUES(9, 'Kazi', '9-01-2018', 9, 100, 1000, 3);
INSERT INTO supplier(sup_id, sup_name, sup_date, sup_product, sup_amount, sup_cost, sup_branch) VALUES(10, 'Choudhury', '10-01-2018', 10, 200, 5000, 3);


commit;

clear screen;

select * from storage;
select * from user_table;
select * from supplier;


