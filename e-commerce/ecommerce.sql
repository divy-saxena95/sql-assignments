CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

/*weak entity*/
CREATE TABLE IF NOT EXISTS items (
  itemID INT NOT NULL PRIMARY KEY,
  name VARCHAR(45),
  price VARCHAR(45),
  supplier_supplierID INT NOT NULL REFERENCES supplier(supplierID) ON DELETE NO ACTION ON UPDATE CASCADE,
  order_orderID INT NOT NULL REFERENCES orders(orderID) ON DELETE NO ACTION ON UPDATE CASCADE);

/*strong entity*/
CREATE TABLE IF NOT EXISTS orders (
  orderID INT NOT NULL PRIMARY KEY,
  OrderDate VARCHAR(45),
  ShippedDate VARCHAR(45),
  ShipVia VARCHAR(45) NULL,
customer_customerID INT NOT NULL REFERENCES customer(customerID) ON DELETE NO ACTION ON UPDATE CASCADE);

/*strong entity*/
CREATE TABLE IF NOT EXISTS customer (
  customerID INT NOT NULL PRIMARY KEY,
  firstname VARCHAR(45),
  lastname VARCHAR(45));

/*strong entity*/
CREATE TABLE IF NOT EXISTS supplier (
  supplierID INT NOT NULL PRIMARY KEY,
  contactf_name VARCHAR(45) ,
  contactl_name VARCHAR(45),
  companyname VARCHAR(45));
