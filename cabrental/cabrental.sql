DROP SCHEMA IF EXISTS cabrental;
CREATE DATABASE cabrental;
USE cabrental;

/*weak entity*/
CREATE TABLE IF NOT EXISTS bookings (
  bookinid INT NOT NULL PRIMARY KEY,
  bookingdate VARCHAR(45),
  pickupaddress VARCHAR(45),
  customer_customerid INT NOT NULL UNIQUE REFERENCES customer(customer_id) ON DELETE SET NULL ON UPDATE CASCADE,
  cabs_cabID INT NOT NULL REFERENCES cabs(cabID) ON DELETE SET NULL ON UPDATE CASCADE,
  bookingtime DATETIME NOT NULL UNIQUE);

/*strong entity*/
CREATE TABLE IF NOT EXISTS driver (
  driver_id INT NOT NULL PRIMARY KEY,
  driver_name VARCHAR(45),
  driver_contactno VARCHAR(45) NOT NULL);

/*strong entity*/
CREATE TABLE IF NOT EXISTS customer (
  customerid INT NOT NULL PRIMARY KEY,
  custname VARCHAR(45) NOT NULL,
  emailid VARCHAR(45) ,
  address VARCHAR(45) ,
  contactno VARCHAR(45) NOT NULL);

/*weak entity*/
CREATE TABLE IF NOT EXISTS cabs (
  cabID INT NOT NULL PRIMARY KEY,
  cabno INT NOT NULL,
  driver_driver_id NOT NULL REFERENCES driver(driver_id) ON DELETE SET NULL ON UPDATE CASCADE );


