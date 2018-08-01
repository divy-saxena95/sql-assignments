CREATE DATABASE IF NOT EXISTS irctc;
USE irctc;

/*strong entity*/
CREATE TABLE IF NOT EXISTS Customer (
  CustomerID INT NOT NULL PRIMARY KEY,
  Name VARCHAR(45),
  Age VARCHAR(45),
  contact no. VARCHAR(45),
  gender VARCHAR(45));

/*weak entity*/
CREATE TABLE IF NOT EXISTS res_ticket(
  arrival VARCHAR(45) ,
  departure VARCHAR(45) ,
  seatno VARCHAR(45),
  TRAIN_Trainno INT NOT NULL REFERENCES TRAIN(trainno) ON DELETE SET NULL ON UPDATE CASCADE,
  Ticket_ticket_id VARCHAR(45) NOT NULL REFERENCES Ticket(ticket_id) ON DELETE SET NULL ON UPDATE CASCADE);

/*weak entity*/
CREATE TABLE IF NOT EXISTS Ticket (
  destination VARCHAR(45),
  source VARCHAR(45),
  ticket_id VARCHAR(45) NOT NULL PRIMARY KEY,
  doj VARCHAR(45),
  Customer_CustomerID INT NOT NULL REFERENCES Customer(CustomerID) ON DELETE SET NULL ON UPDATE CASCADE);
 
/*strong entity*/ 
CREATE TABLE IF NOT EXISTS TRAIN (
  Train no. INT NOT NULL PRIMARY KEY,
  Train name VARCHAR(45),
  Running Duration VARCHAR(45),
  running days VARCHAR(45));
  


  delimiter |

CREATE TRIGGER reserved_or_unreserved BEFORE INSERT ON res_ticket FOR EACH ROW
BEGIN
IF ((SELECT Ticket.ticket_id
   FROM Ticket,res_ticket,Customer
   WHERE Ticket.ticket_id = res_ticket.ticket_id AND Ticket.CustomerID = Customer.CustomerID AND res_ticket.arrival > NEW.departure) IS NOT NULL)
THEN
  UPDATE Ticket SET ticket_id = NULL WHERE ticket_id = NEW.ticket_id;
  END IF;
END;
|

delimiter ;

  
  
  
