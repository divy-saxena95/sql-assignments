USE paytm;
 
 INSERT INTO customer VALUES(1,'Shivangi','Special','8967853421',1,2456);
 INSERT INTO customer VALUES(2,'Rahul','General','6737873828',2,2457);
 INSERT INTO customer VALUES(3,'Ranveer','VIP','437638483783',3,2458);

 INSERT INTO branches VALUES(1,'CBO-1','Gandhi nagar','1234');
 INSERT INTO branches VALUES(2,'CBO-2','MG road','4567');
 INSERT INTO branches VALUES(3,'CBO-3','Arthur road','8901');

 INSERT INTO accounts VALUES(2456,'Savings','40000');
 INSERT INTO accounts VALUES(2457,'Current','20000');
 INSERT INTO accounts VALUES(2458,'Savings','10000');

 UPDATE accounts SET balance='10000' WHERE balance='20000'; 
 UPDATE branches SET name='CBO-4' WHERE branchID=2; 
 UPDATE customer SET cust_type='VVIP' WHERE cust_type='Special';

 DELETE FROM accounts WHERE acct_number=2456;
 DELETE FROM customer WHERE customerID=1;


