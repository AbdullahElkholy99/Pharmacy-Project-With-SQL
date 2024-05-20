USE Pharmacy_
--------------------------Create Tables : ------------------------
create table dbo.Doctor 
(
D_ID int identity ,
D_Name varchar(50) not null,
Speciality varchar(10) not null,

primary key(D_ID)
)
---------
create table Patient 
(
P_ID int identity ,
Name varchar(50) not null,
Sex varchar(10) not null,
Address varchar(50) not null,
Contact_NO varchar(15) not null,
Insurance_Inf varchar(50) ,
D_id int ,

primary key(P_ID) 
)
ALTER TABLE Patient
ADD 
	constraint FK_Patient_Doctor foreign key(D_id)
	REFERENCES Doctor(D_ID)
---
create table Drug_Manufacturer
(
Company_ID int identity ,
Name varchar(50) not null ,
Address varchar(50) not null,
primary key(Company_ID) 
)
-------
create table Drug 
(
Trade_Name varchar(50) ,
company_id int ,
primary key(Trade_Name)
)
ALTER TABLE Drug
ADD 
	constraint FK_Drug_Manufacturer_Drug foreign key(company_id)
	references Drug_Manufacturer(Company_ID)
-------
create table Pharmacy 
(
Phar_ID int identity ,
Name varchar(50) not null ,
Address varchar(50) not null,
Fax varchar(20) ,
primary key(Phar_ID),
)
---
create table Employee 
(
E_ID int identity ,
Name varchar(50) not null ,
Shift_Start date not null ,
Shift_End date not null ,
phar_id int ,

primary key(E_ID)
)

ALTER TABLE Employee
ADD
	constraint FK_Pharmacy_Employee foreign key(phar_id)
	references Pharmacy(Phar_ID)
---------

create table phar_Contract_Drug_manuf
(
company_id int ,
phar_id int ,
Start_Date date not null,
End_Date date not null,
)
ALTER TABLE phar_Contract_Drug_manuf
ADD
	constraint FK_Pharmacy  foreign key(phar_id)
	references Pharmacy(Phar_ID),
	constraint FK_Drug_Manufacturer foreign key(company_id)
	references Drug_Manufacturer (Company_ID)

----
create table Phar_sell_Drug
(
phar_id int ,
trade_name varchar(50),
Price decimal not null  
)
ALTER TABLE Phar_sell_Drug
ADD
	constraint FK_Phar_Drug  foreign key(phar_id)
	references Pharmacy(Phar_ID),
	constraint FK_Drug_Phar_Drug foreign key(trade_name)
	references Drug (Trade_Name)
---
create table Prescribe
(
P_id int, 
D_id int ,
trade_name varchar(50),
Prescribe_Date date,
Quantity int not null,

primary key(Prescribe_Date),

)
ALTER TABLE Prescribe
ADD
	constraint FK_Patient_Drug foreign key(P_id)
	references Patient (P_ID),
	constraint FK_Doctor_Patient_Drug  foreign key(D_id)
	references Doctor (D_ID),
	constraint FK_Drug_Patient_Drug  foreign key(trade_name)
	references Drug (Trade_Name)






