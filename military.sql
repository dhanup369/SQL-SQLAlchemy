DROP DATABASE IF EXISTS Second_International_Bank;
CREATE DATABASE Second_International_Bank;


USE Second_International_Bank;

CREATE TABLE Customers ( 
  ID int(50) auto_increment not null,
  Firstname VARCHAR(30) NOT NULL,
  Lastname VARCHAR(30) NOT NULL,
  Loan BOOLEAN DEFAULT false,
  Checking Decimal(20,2),
  Savings decimal(20,2),
  primary key(ID)
);

Insert into Customers(Firstname,Lastname,Loan,checking,Savings)
Values('Richard','Rich',True,1000.00,20000.50),
('Bob','someone',True,10.75,200.50),
('Shelly','Richrich',False,10000.00,2000.45)
