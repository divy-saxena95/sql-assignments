CREATE DATABASE IF NOT EXISTS imdb;
USE imdb;

/*strong entity*/
CREATE TABLE IF NOT EXISTS actor (
  actorID INT NOT NULL PRIMARY KEY,
  Name VARCHAR(45),
  Age VARCHAR(45),
  gender VARCHAR(45));
  

/*weak entity*/
CREATE TABLE IF NOT EXISTS tv_series (
  ID INT NOT NULL PRIMARY KEY,
  Name VARCHAR(45) ,
  tvnetwork VARCHAR(45),
  actor_actorID INT NOT NULL REFERENCES actor(actorID) ON DELETE SET NULL ON UPDATE CASCADE);

/*weak entity*/
CREATE TABLE IF NOT EXISTS movie (
  serialno INT NOT NULL PRIMARY KEY,
  title VARCHAR(45),
  release_year VARCHAR(45),
  prodcost VARCHAR(45),
  genres VARCHAR(45),
actor_actorID INT NOT NULL REFERENCES actor(actorID) ON DELETE SET NULL ON UPDATE CASCADE); 
