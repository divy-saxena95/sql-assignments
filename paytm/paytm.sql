CREATE DATABASE IF NOT EXISTS paytm;
USE paytm;
/* strong entity*/
CREATE TABLE IF NOT EXISTS branches (
  branchID INT NOT NULL PRIMARY KEY,
  name VARCHAR(45) ,
  address VARCHAR(45) ,
  IFSCcode VARCHAR(45));
/*weak entity*/
CREATE TABLE IF NOT EXISTS accounts(
  acct_number INT NOT NULL PRIMARY KEY,
  type VARCHAR(45),
  balance VARCHAR(45),
  branches_branchID INT NOT NULL REFERENCES branches(branchID) ON DELETE SET NULL ON UPDATE CASCADE);
/* weak entity*/
CREATE TABLE IF NOT EXISTS customer (
  customerID INT NOT NULL PRIMARY KEY,
  name VARCHAR(45),
  cust_type VARCHAR(45),
  contactno VARCHAR(45),
  accounts_acct_number INT NOT NULL REFERENCES accounts(acct_number) ON DELETE SET NULL ON UPDATE CASCADE);


DELIMITER ///

CREATE TRIGGER check_branch BEFORE INSERT ON customer FOR EACH ROW
BEGIN
IF ((SELECT account.acct_number
   FROM accounts,branches,customer
   WHERE accounts.acct_number = customer.acct_number AND accounts.branchID = Branches.branchID AND customer.customerID= NEW.customerID

   AND Branch.branch_id IN (select branch_id from accounts where accounts.acct_number= NEW.acct_number)
                        ) IS NOT NULL)
THEN
  UPDATE accounts SET acct_number = NULL WHERE acct_number = NEW.acct_number;
  END IF;
END;
///
DELIMITER ;
