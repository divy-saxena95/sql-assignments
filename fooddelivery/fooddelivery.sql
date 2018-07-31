CREATE DATABASE IF NOT EXISTS fooddelivery;
USE fooddelivery;

/*weak entity*/
  CREATE TABLE IF NOT EXISTS Orders(
  orderID INT NOT NULL PRIMARY KEY,
  orderdate VARCHAR(45),
  ordertime VARCHAR(45),
  billdetails VARCHAR(45),
  status INT,
  DeliveryPerson_DID INT NOT NULL REFERENCES DeliveryPerson(DID) ON DELETE NO ACTION ON UPDATE CASCADE,
  Restaurant_restID INT NOT NULL REFERENCES Restaurant(restID) ON DELETE NO ACTION ON UPDATE CASCADE,
  Customer_custID INT NOT NULL REFERENCES Customer(custID) ON DELETE NO ACTION ON UPDATE CASCADE);
  
/*strong entity*/
  CREATE TABLE IF NOT EXISTS Customer(
  custID INT NOT NULL PRIMARY KEY,
  custName VARCHAR(45) ,
  email VARCHAR(45),
  contactno VARCHAR(45));

/*strong entity*/
  CREATE TABLE IF NOT EXISTS Restaurant(
  restID INT NOT NULL PRIMARY KEY,
  RestName VARCHAR(45) ,
  Address VARCHAR(45),
  contactno VARCHAR(45));
 

/*strong entity*/
  CREATE TABLE IF NOT EXISTS DeliveryPerson(
  DID INT NOT NULL PRIMARY KEY,
  Name VARCHAR(45),
  contactno VARCHAR(45));

  DELIMITER ///

CREATE TRIGGER check_for_multipleorders BEFORE INSERT ON Order FOR EACH ROW
BEGIN
IF ((SELECT Orders.orderID
   FROM Order
   WHERE  custID = NEW.custID AND status=0) is not null)
THEN
  UPDATE Customer SET custID = NULL WHERE custID = NEW.custID;
  END IF;
END;
///
DELIMITER ;
