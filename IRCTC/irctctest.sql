USE irctc;

INSERT INTO Ticket VALUES('Bengaluru','Hyderabad',1,'2008-11-11 13:23:44',1);
INSERT INTO Ticket VALUES('Delhi','Dehradun',2,'2008-10-10 15:45:21',2);
INSERT INTO Ticket VALUES('Dehradun','Nainital',3,'2018-07-09 15:45:21',3);


INSERT INTO TRAIN VALUES(1432,'Shatabdi','24hrs','wed');
INSERT INTO TRAIN VALUES(1433,'Jan Shatabdi','8hrs','all days');
INSERT INTO TRAIN VALUES(1434,'Rajdhani','12hrs','all days');

INSERT INTO  Customer VALUES(1,'HImanshu','24','9451355689','Male');
INSERT INTO  Customer VALUES(2,'Himani','30','9451355688','Female');
INSERT INTO  Customer VALUES(3,'Raj','27','9451355687','Male');

INSERT INTO res_ticket VALUES("2008-11-11 13:23:44","2008-11-11 13:23:44","B1",1432,1)


UPDATE Ticket SET Issue='2018-11-01' WHERE source='Bengaluru';
UPDATE TRAIN SET Trainname='Duranto' WHERE trainno=1433;
UPDATE Customer SET Age='25' WHERE Name='Himani';


DELETE FROM Ticket WHERE source='Dehradun';
DELETE FROM TRAIN WHERE Trainno=1432;
DELETE FROM Customer WHERE CustomerID=1;
