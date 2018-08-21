DROP DATABASE IF EXISTS programming_db;
CREATE DATABASE programming_db;


USE programming_db;

CREATE TABLE programming_languages ( 
  id int auto_increment not null,
  language_name VARCHAR(30) NOT NULL,
  
  rating INTEGER(10),
  primary key(id)
);


insert into programming_languages(language_name,rating) values("C",10),("Python",20);
alter table programming_languages add mastered boolean default true;

select * from programming_languages;

update programming_languages set language_name='SQL' where id =1;
select * from programming_languages;