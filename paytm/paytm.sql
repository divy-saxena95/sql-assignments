CREATE DATABASE IF NOT EXISTS paytm;
USE paytm;

CREATE TABLE IF NOT EXISTS customer (
  customerID INT NOT NULL PRIMARY KEY,
  name VARCHAR(45) ,
  cust_type VARCHAR(45) ,
  contactno VARCHAR(45),
  branches_branchID INT NOT NULL REFERENCES branches(branchID) ON DELETE NO ACTION ON UPDATE CASCADE,
  accounts_acct_number INT NOT NULL REFERENCES  accounts(acct_number) ON DELETE SET NULL ON UPDATE CASCADE);


CREATE TABLE IF NOT EXISTS branches (
  branchID INT NOT NULL PRIMARY KEY,
  name VARCHAR(45) ,
  address VARCHAR(45) ,
  IFSCcode VARCHAR(45));

CREATE TABLE IF NOT EXISTS accounts (
  acct_number INT NOT NULL PRIMARY KEY,
  type VARCHAR(45),
  balance VARCHAR(45));