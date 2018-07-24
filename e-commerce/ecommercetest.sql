USE ecommerce;

INSERT INTO items VALUES(1,'shoes','2500',1,2);
INSERT INTO items VALUES(2,'hair straightener','1800',2,2);

INSERT INTO orders VALUES(1,'2017-07-13','2017-07-15','Bangalore');
INSERT INTO orders VALUES(2,'2018-06-11','2018-06-14','Delhi');

INSERT INTO customer VALUES(1,'Alia','Bhatt');
INSERT INTO customer VALUES(2,'Kartikay','Singh');

INSERT INTO supplier VALUES(1,'Shree','Vardhan','Hina Firms');
INSERT INTO supplier VALUES(2,'Shree','Kant','Naka Hindola');

UPDATE orders  SET ShipVia='Mumbai' WHERE ShippedDate='2017-07-15';;
UPDATE customer SET firstname='Shanaya' WHERE firstname='Alia';

DELETE FROM supplier WHERE contactl_name='Kant';
DELETE FROM orders WHERE OrderDate='2018-06-11';

