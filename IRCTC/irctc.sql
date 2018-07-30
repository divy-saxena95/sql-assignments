CREATE DATABASE IF NOT EXISTS irctc;
USE irctc;

CREATE TABLE IF NOT EXISTS Ticket (
  Issue VARCHAR(45) ,
  destination VARCHAR(45) ,
  source VARCHAR(45) ,
  reserved BOOLEAN ,
  arrival DATETIME,
  departure DATETIME,
  ticketno INT NOT NULL PRIMARY KEY,
  Customer_CustomerID INT NOT NULL REFERENCES Customer(CustomerID) ON DELETE NO ACTION ON UPDATE CASCADE,
  TRAIN_Trainno INT NOT NULL REFERENCES TRAIN(Trainno) ON DELETE SET NULL);

CREATE TABLE IF NOT EXISTS TRAIN (
  Trainno INT NOT NULL PRIMARY KEY,
  Trainname VARCHAR(45),
  RunningDuration VARCHAR(45),
  runningdays VARCHAR(45));

CREATE TABLE IF NOT EXISTS Customer (
  CustomerID INT NOT NULL PRIMARY KEY,
  Name VARCHAR(45),
  Age VARCHAR(45) ,
  contactno VARCHAR(45) ,
  gender VARCHAR(45));


  delimiter |

CREATE TRIGGER reserved_or_unreserved BEFORE INSERT ON Ticket
  FOR EACH ROW
  BEGIN
    IF((SELECT trainno FROM TRAIN WHERE TRAIN.CustomerID = Ticket.CustomerID) IS NULL AND Ticket.arrival > NEW.departure)
    THEN UPDATE Ticket SET Ticket.reserved = 0,Ticket.ticketno=NULL WHERE TRAIN.CustomerID = Ticket.CustomerID;
  END IF;
  END;
|

delimiter ;

  
  
  