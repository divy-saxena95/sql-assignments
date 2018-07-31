DROP SCHEMA IF EXISTS cabrental;
CREATE DATABASE cabrental;
USE cabrental;

/*weak entity*/
CREATE TABLE IF NOT EXISTS bookings(
  bookinid INT NOT NULL PRIMARY KEY,
  bookingdate VARCHAR(45),
  pickupaddress VARCHAR(45),
  customer_customerid INT NOT NULL REFERENCES customer(customerid) ON DELETE NO ACTION ON UPDATE CASCADE,
  driver_driver_id INT NOT NULL REFERENCES driver(driver_id) ON DELETE NO ACTION ON UPDATE CASCADE);

/*weak entity*/
CREATE TABLE IF NOT EXISTS driver (
  driver_id INT NOT NULL PRIMARY KEY,
  driver_name VARCHAR(45),
  driver_contactno VARCHAR(45) NOT NULL,
cabs_cabID INT NOT NULL REFERENCES cabs(cabID) ON DELETE NO ACTION ON UPDATE CASCADE,

);

/*strong entity*/
CREATE TABLE IF NOT EXISTS customer (
  customerid INT NOT NULL PRIMARY KEY,
  custname VARCHAR(45) NOT NULL,
  emailid VARCHAR(45) ,
  address VARCHAR(45) ,
  contactno VARCHAR(45) NOT NULL);

/*strong entity*/
CREATE TABLE IF NOT EXISTS cabs (
  cabID INT NOT NULL PRIMARY KEY,
  cabno INT NOT NULL UNIQUE);


