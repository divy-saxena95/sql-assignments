USE imdb;

INSERT INTO actor VALUES(1,'Shahrukh','30','Male',2,3);
INSERT INTO actor VALUES(2,'Salman','35','Male',1,3);
INSERT INTO actor VALUES(3,'Aamir','37','Male',1,2);


INSERT INTO tv_series VALUES(1,'F.R.I.E.N.D.S.','CC');
INSERT INTO tv_series VALUES(2,'HIMYM','CC');
INSERT INTO tv_series VALUES(3,'GOT','Star world');

INSERT INTO movie VALUES(1,'Incredibles','2010','30000','Animation');
INSERT INTO movie VALUES(2,'Incredibles2','2018','70000','Animation');
INSERT INTO movie VALUES(3,'Annabelle','2017','85000','Horror');

UPDATE movie SET title='Annabelle2' WHERE serialno=1;

DELETE FROM tv_series WHERE Name='HIMYM';
