

DROP DATABASE IF EXISTS animals_db;
CREATE DATABASE animals_db;


USE animals_db;

CREATE TABLE people ( 
  id int auto_increment not null,
  name VARCHAR(30) NOT NULL,
  has_pet BOOLEAN DEFAULT false,
  pet_name VARCHAR(30),
  pet_age INTEGER(10),
  primary key(id)
);

SELECT * FROM people;

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Jacob", true, "Misty", 10);

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Ahmed", true, "Rockington", 100);

INSERT INTO people (name)
VALUES ("Peter");

UPDATE people
SET has_pet = true
WHERE name = "Peter";

SELECT * FROM people;
