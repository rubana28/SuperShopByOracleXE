clear screen;


DROP TABLE branch3 CASCADE CONSTRAINTS;
DROP TABLE customer3 CASCADE CONSTRAINTS;
DROP TABLE product3 CASCADE CONSTRAINTS;
DROP TABLE user_table3 CASCADE CONSTRAINTS;
DROP TABLE storage3 CASCADE CONSTRAINTS;
DROP TABLE supplier3 CASCADE CONSTRAINTS;


CREATE TABLE branch3
( branch_id number(10) NOT NULL,
branch_name varchar2(20) NOT NULL,
branch_address varchar2(20),
PRIMARY KEY (branch_id));


CREATE TABLE customer3
( cust_id number(10) NOT NULL,
  cust_name varchar2(10) NOT NULL,
  cust_no number(11),
  cust_email varchar2(10),
  cust_branch_id number(10) NOT NULL,
  PRIMARY KEY (cust_id),
  FOREIGN KEY(cust_branch_id) REFERENCES branch(branch_id)
);

CREATE TABLE product3
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

CREATE TABLE storage3
( stor_id number(10) NOT NULL,
  stor_name varchar2(10) NOT NULL,
  stor_type varchar2(10),
  refill_date varchar2(10),
  stor_prod_id number(10) NOT NULL,
  PRIMARY KEY (stor_id),
  FOREIGN KEY(stor_prod_id) REFERENCES product(prod_id)
);

CREATE TABLE user_table3
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

CREATE TABLE supplier3
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