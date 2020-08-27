clear screen;


DROP TABLE branch CASCADE CONSTRAINTS;
DROP TABLE customer CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE storage CASCADE CONSTRAINTS;
DROP TABLE user_table CASCADE CONSTRAINTS;
DROP TABLE purchase CASCADE CONSTRAINTS;
DROP TABLE sales CASCADE CONSTRAINTS;
DROP TABLE supplier CASCADE CONSTRAINTS;


CREATE TABLE branch
( branch_id number(10) NOT NULL,
branch_name varchar2(20) NOT NULL,
branch_address varchar2(20),
PRIMARY KEY (branch_id));

CREATE TABLE customer
( cust_id number(10) NOT NULL,
  cust_name varchar2(10) NOT NULL,
  cust_no number(11),
  cust_email varchar2(10),
  cust_branch_id number(10) NOT NULL,
  PRIMARY KEY (cust_id),
  FOREIGN KEY(cust_branch_id) REFERENCES branch(branch_id)
);

CREATE TABLE product
( prod_id number(10) NOT NULL,
  prod_name varchar2(10) NOT NULL,
  prod_amount number(10),
  prod_type varchar2(10),
  expiring_date varchar2(10),
  prod_cost number(10),
  prod_cust_id number(10) NOT NULL,
  PRIMARY KEY (prod_id),
  FOREIGN KEY(prod_cust_id) REFERENCES customer(cust_id)
);

CREATE TABLE storage
( stor_id number(10) NOT NULL,
  stor_name varchar2(10) NOT NULL,
  stor_type varchar2(10),
  refill_date varchar2(10),
  stor_prod_id number(10) NOT NULL,
  PRIMARY KEY (stor_id),
  FOREIGN KEY(stor_prod_id) REFERENCES product(prod_id)
);

CREATE TABLE user_table
( user_id number(10) NOT NULL,
  user_name varchar2(10) NOT NULL,
  pass number(10),
  role varchar2(10),
  user_branch_id number(10) NOT NULL,
  user_storage_info number(10),
  PRIMARY KEY (user_id),
  FOREIGN KEY(user_branch_id) REFERENCES branch(branch_id),
  FOREIGN KEY(user_storage_info) REFERENCES storage(stor_id)
);

CREATE TABLE purchase
( pur_id number(10) NOT NULL,
  pur_type varchar2(10) NOT NULL,
  pur_date varchar2(10),
  pur_amount number(10),
  pur_cust_id number(10) NOT NULL,
  pur_prod_id number(10) NOT NULL,
  PRIMARY KEY (pur_id),
  FOREIGN KEY(pur_cust_id) REFERENCES customer(cust_id),
  FOREIGN KEY(pur_prod_id) REFERENCES product(prod_id)
);

CREATE TABLE sales
( sales_id number(10) NOT NULL,
  sales_amount number(10) NOT NULL,
  sales_total number(10),
  sales_date varchar2(10),
  sale_pur_id number(10) NOT NULL,
  PRIMARY KEY (sales_id),
  FOREIGN KEY(sale_pur_id) REFERENCES purchase(pur_id)
);

CREATE TABLE supplier
( sup_id number(10) NOT NULL,
  sup_name varchar2(10) NOT NULL,
  sup_date varchar2(10),
  sup_product number(10) NOT NULL,
  sup_amount number(10),
  sup_cost number(10),
  sup_branch number(10) NOT NULL,
  PRIMARY KEY (sup_id),
  FOREIGN KEY(sup_product) REFERENCES product(prod_id),
  FOREIGN KEY(sup_branch) REFERENCES branch(branch_id)
);


commit;