CREATE DATABASE IF NOT EXISTS imdb;
USE imdb;
/*weak entity*/
CREATE TABLE IF NOT EXISTS actor (
  actorID INT NOT NULL PRIMARY KEY,
  Name VARCHAR(45),
  Age VARCHAR(45),
  gender VARCHAR(45),
  tv_series_ID INT NOT NULL REFERENCES tv_series(ID) ON DELETE SET NULL ON UPDATE CASCADE,
  movie_serialno INT NOT NULL REFERENCES movie(serialno) ON DELETE SET NULL ON UPDATE CASCADE);

/*strong entity*/
CREATE TABLE IF NOT EXISTS tv_series (
  ID INT NOT NULL PRIMARY KEY,
  Name VARCHAR(45) ,
  tvnetwork VARCHAR(45));

/*strong entity*/
CREATE TABLE IF NOT EXISTS movie (
  serialno INT NOT NULL PRIMARY KEY,
  title VARCHAR(45),
  release_year VARCHAR(45),
  prodcost VARCHAR(45),
  genres VARCHAR(45)); 
