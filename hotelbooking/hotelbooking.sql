CREATE DATABASE IF NOT EXISTS hotelbooking;
USE hotelbooking;

CREATE TABLE IF NOT EXISTS booking(
  bookingID INT NOT NULL PRIMARY KEY,
  price VARCHAR(45),
  payment_mode VARCHAR(45),
  noofdays INT,
  noofrooms INT ,
  customer_custID INT REFERENCES customer(custID) ON DELETE NO ACTION ON UPDATE CASCADE,
  hotel_hotelid INT NOT NULL REFERENCES hotel(hotelid) ON DELETE NO ACTION ON UPDATE CASCADE);



CREATE TABLE IF NOT EXISTS customer (
  custID INT NOT NULL PRIMARY KEY,
  name VARCHAR(45) ,
  contact_no VARCHAR(45),
  email VARCHAR(45) ,
  username VARCHAR(45),
  LOYAL BOOLEAN);


CREATE TABLE IF NOT EXISTS hotel (
  hotelid INT NOT NULL,
  name VARCHAR(45),
  address VARCHAR(45),
  type VARCHAR(45));



delimiter |

CREATE TRIGGER loyal_or_firsttime BEFORE INSERT ON customer
  FOR EACH ROW
  BEGIN
    IF((SELECT count(booking.custID) FROM booking WHERE booking.custID = NEW.custID)>0)
    THEN UPDATE customer SET customer.LOYAL = 1 WHERE customer.custID = NEW.custID;
  END IF;
  END;
|

delimiter ;