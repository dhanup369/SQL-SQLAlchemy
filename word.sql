create database word;
USE word;
ALTER TABLE wordassociation_ac 
ADD id INT AUTO_INCREMENT PRIMARY KEY FIRST;


select * from wordassociation_ac where source="AC";

