USE cabrental ;

INSERT INTO bookings VALUES(1,'2018-01-12','Raidurgam',4,10,7);
INSERT INTO bookings VALUES(2,'2018-02-12','Indira Nagar',5,11,8);
INSERT INTO bookings VALUES(3,'2018-03-12','vaishali',6,12,9);

INSERT INTO customer VALUES(4,'Divy','abc@gmail.com','cyber town','9459009091');
INSERT INTO customer VALUES(5,'Aayushi','xyz@gmail.com','aminabad','9459009092');
INSERT INTO customer VALUES(6,'Tanya','lmn@gmail.com','gandhi nagar','9459009093');


INSERT INTO driver VALUES(7,'Aneesh','9793240178');
INSERT INTO driver VALUES(8,'Shivank','9452737116');
INSERT INTO driver VALUES(9,'Shashank','9452737117');

INSERT INTO cabs VALUES(10,'1234');
INSERT INTO cabs VALUES(11,'5678');
INSERT INTO cabs VALUES(12,'4567');




UPDATE driver SET driver_contactno='94567892928' WHERE driver_name='Aneesh';
UPDATE customer SET custname='Himanshu' WHERE customerid=1;
UPDATE bookings SET bookingdate= '2018-05-13' WHERE bookinid=2;
UPDATE cabs SET cabno='6789' WHERE cabID=10;



DELETE FROM customer WHERE customerid=6;
DELETE FROM driver WHERE driver_id=8;
DELETE FROM bookings WHERE bookinid=3;
DELETE FROM cabs WHERE cabID=12;

