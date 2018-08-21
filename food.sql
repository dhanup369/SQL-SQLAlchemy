

DROP DATABASE IF EXISTS favorite_db;

CREATE DATABASE favorite_db;

USE favorite_db;

CREATE TABLE favorite_foods (
  food VARCHAR(50) NOT NULL,
  score INTEGER(10)
);

CREATE TABLE favorite_song (
  song VARCHAR(100) NOT NULL,
  artist VARCHAR(50),
  score INTEGER(10)
);


CREATE TABLE favorite_movies (
  film VARCHAR(100) NOT NULL,
  five_time BOOLEAN DEFAULT false,
  score INTEGER(10)
);


INSERT INTO favorite_foods(food,score)
VALUES("pizza" ,3);

INSERT INTO favorite_foods(food,score)
VALUES("Noodles",5);

INSERT INTO favorite_foods(food,score)
VALUES("Pasta",7);

SELECT * FROM favorite_foods;


INSERT INTO favorite_song(song,artist,score)
VALUES('Muhile','Ilayaraja',10);

INSERT INTO favorite_song(song,artist,score)
VALUES('Jaiho','A.R.Rahman',10);

INSERT INTO favorite_song(song,artist,score)
VALUES('Jeans','A.R.Rahman',10);

SELECT * FROM favorite_song;


INSERT INTO favorite_movies(film,five_time,score)
VALUES("Jeans",true,3),("Kala",false,4),("Indian",True,3);

SELECT * FROM favorite_movies;
SET SQL_SAFE_UPDATES = 0;
UPDATE favorite_song set song='kuyil' where artist='Ilayaraja';

SELECT * FROM favorite_song;

update favorite_foods set score=5 where food='pizza';
select * from favorite_foods;








