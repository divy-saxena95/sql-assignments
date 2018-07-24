USE hotelbooking;

INSERT INTO booking VALUES(1,'4000','CASH',4,1,1,2);
INSERT INTO booking VALUES(2,'2000','CASH',2,3,1,1);
INSERT INTO booking VALUES(3,'1000','Cheque',7,2,2,1);

INSERT INTO customer VALUES(1,'Vanisha','987654216','abc@gmail.com','vani123',1);
INSERT INTO customer VALUES(2,'Veronika','8906754322','xyz@gmail.com','vero12',0);
INSERT INTO customer VALUES(3,'Shanaya','77715672','gef@gmail.com','shan1',1);

INSERT INTO hotel VALUES(1,'Radisson','Gachibowli','5 star');
INSERT INTO hotel VALUES(2,'Lemon Tree','Mindspace','3 star');
INSERT INTO hotel VALUES(3,'Madhuban','MG road','5 star');

UPDATE hotel SET name='Madhubana' WHERE hotelid=1;


DELETE FROM booking WHERE bookingID=1;
