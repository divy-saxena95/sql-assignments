USE fooddelivery;

INSERT INTO Orders VALUES(1,'2018-01-12','12:00','Special',0,1,2,1);
INSERT INTO Orders VALUES(1,'2018-02-12','13:00','Normal',1,1,2,2);

INSERT INTO Customer VALUES(1,'Divy','abc@gmail.com','9452737116');
INSERT INTO Customer VALUES(2,'Rohan','xyz@gmail.com','9452737117');

INSERT INTO Restaurant VALUES(1,'Raddison','Gachibowli','6528909');
INSERT INTO Restaurant VALUES(2,'Lemon Tree','Mindspace','54201789');


INSERT INTO DeliveryPerson VALUES(1,'Ram','9876543222');
INSERT INTO DeliveryPerson VALUES(2,'Shyam','876543219');

UPDATE DeliveryPerson SET Name='Ramu' WHERE DID=1;

DELETE FROM Restaurant WHERE RestName='Raddison'; 