USE empproj;
INSERT INTO employee values(1,'Rahul','48000',2,1,1);
INSERT INTO employee values(2,'Rishi','70000',1,3,2);
INSERT INTO employee values(3,'Ram','40000',2,NULL,3);



INSERT INTO project values(1,'ABC','Android');
INSERT INTO project values(2,'DEF','IOS');
INSERT INTO project values(3,'GHY','Core');


INSERT INTO designation values(1,'CEO',1);
INSERT INTO designation values(2,'HR',2);
INSERT INTO designation values(3,'Manager',3);


UPDATE employee SET emp_name='Raman' WHERE emp_salary='70000';
UPDATE project SET projecttype='IJK' WHERE project_id=1;
UPDATE designation SET DESIGNATION='Marketing Manager' WHERE DESIGNATION='Manager';


DELETE FROM employee WHERE emp_name='Rahul';
DELETE FROM project WHERE projid=2;
DELETE FROM designation WHERE rank='CEO';
