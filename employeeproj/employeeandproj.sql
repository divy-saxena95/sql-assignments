DROP empproj IF EXISTS;
CREATE DATABASE empproj;
USE empproj ;

/*weak entity*/
CREATE TABLE IF NOT EXISTS employee (
  employee_id INT NOT NULL PRIMARY KEY,
  emp_name VARCHAR(45) ,
  emp_salary VARCHAR(45) ,
  project_projid INT NOT NULL REFERENCES project(projid) ON DELETE SET NULL ON UPDATE CASCADE,
  employee_employee_id INT NOT NULL REFERENCES employee(employee_id) ON DELETE SET NULL ON UPDATE CASCADE,
  designation_desigID INT NOT NULL REFERENCES designation(desigID) ON DELETE NO ACTION ON UPDATE CASCADE);
  
/*strong entity*/
CREATE TABLE IF NOT EXISTS project (
  projid INT NOT NULL PRIMARY KEY,
  projname VARCHAR(45),
  projecttype VARCHAR(45));

/*strong entity*/
CREATE TABLE IF NOT EXISTS designation (
  desigID INT NOT NULL PRIMARY KEY,
  DESIGNATION VARCHAR(45),
  rank VARCHAR(45) 
  );


