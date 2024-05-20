------------------- Insert Data Into Tables :-------------------

--1. Doctor : Work
INSERT INTO dbo.Doctor VALUES('Ali Elkholy','Pediatrics')
INSERT INTO dbo.Doctor VALUES('Omar Ahmed','Surgery') 
INSERT INTO dbo.Doctor VALUES('Abdullah Ali','Psychiatry')
INSERT INTO dbo.Doctor VALUES('Mona Mahmoud','Neurology')
INSERT INTO dbo.Doctor VALUES('Malak Mohamded','Radiology')
-----------
--2. Patient :  Work

INSERT INTO dbo.Patient VALUES('Ahmed Mohamed','Male','Cairo','0123456789','YES',43)
INSERT INTO Patient VALUES('Hala Mahmoud','Female','Giza','0123456788','Y',44)
INSERT INTO dbo.Patient VALUES('Hager Ali','Female','Minya','0123456777','NO',45)
INSERT INTO dbo.Patient VALUES('Sara Ahmed','Female','Aswan','0123456666','YES',47)
INSERT INTO dbo.Patient VALUES('Ali Mohamed','Male','Menofia','0123455555','NO',46)
-----------
--3. Drug_Manufacturer : Work
INSERT INTO dbo.Drug_Manufacturer VALUES('X','Cairo' )
INSERT INTO dbo.Drug_Manufacturer VALUES('Y','Sina' )
INSERT INTO dbo.Drug_Manufacturer VALUES('Z','Menofia' )
INSERT INTO dbo.Drug_Manufacturer VALUES('R','Cairo' )
INSERT INTO dbo.Drug_Manufacturer VALUES('T','Giza' )
-------------
--4. Drug : Work
INSERT INTO dbo.Drug VALUES('Acetaminophen',1 )
INSERT INTO dbo.Drug VALUES('Doxycycline',1 )
INSERT INTO dbo.Drug VALUES('Lyrica',4)
INSERT INTO dbo.Drug VALUES('Metformin',5 )
INSERT INTO dbo.Drug VALUES('Qulipta',3)
-----------
--5. Pharmacy : Work
INSERT INTO dbo.Pharmacy VALUES('QuickMeds','Cairo','+20-2-123-4567' )
INSERT INTO dbo.Pharmacy VALUES('PharmaPlus	','Aswan','+20-13-123-4567' )
INSERT INTO dbo.Pharmacy VALUES('ExpressMeds','Giza','+20-2-123-4567')
INSERT INTO dbo.Pharmacy VALUES('VitalRx','Menofia','+20-5-123-4567' )
INSERT INTO dbo.Pharmacy VALUES('MedCenter','Cairo','+20-2-123-4567')
-----------
--6. Employee : Error when i enter HH:MM:
INSERT INTO dbo.Employee VALUES('Elham','09:00','17:00',1)
INSERT INTO dbo.Employee VALUES('Mona','09:00','17:00',2)
INSERT INTO dbo.Employee VALUES('Ali','17:00','11:59',4)
INSERT INTO dbo.Employee VALUES('Ahmed','12:00','09:00',3)
INSERT INTO dbo.Employee VALUES('Khaled','12:00','09:00',5)
-----------
--7. phar_Contract_Drug_manuf : Work
INSERT INTO phar_Contract_Drug_manuf VALUES(1,1,'2018-06-25','2020-06-25')
INSERT INTO phar_Contract_Drug_manuf VALUES(2,1,'2016-06-25','2025-06-25')
INSERT INTO phar_Contract_Drug_manuf VALUES(3,2,'2015-06-25','2020-06-25')
INSERT INTO phar_Contract_Drug_manuf VALUES(5,5,'2010-06-25','2018-06-25')
INSERT INTO phar_Contract_Drug_manuf VALUES(4,3,'2022-06-25','2024-06-25')
-----------
--8. Phar_sell_Drug : Work
INSERT INTO Phar_sell_Drug VALUES(1,'Acetaminophen',30.50)
INSERT INTO Phar_sell_Drug VALUES(2,'Doxycycline',60.50)
INSERT INTO Phar_sell_Drug VALUES(3,'Lyrica',45.75)
INSERT INTO Phar_sell_Drug VALUES(5,'Metformin',50.00)
INSERT INTO Phar_sell_Drug VALUES(4,'Qulipta',100.00)
-----------
--9. Prescribe : Work
INSERT INTO Prescribe VALUES(12,44,'Acetaminophen','2018-06-25',5)
INSERT INTO Prescribe VALUES(14,47,'Doxycycline','2016-06-25',7)
INSERT INTO Prescribe VALUES(13,45,'Lyrica','2015-06-25',10)
INSERT INTO Prescribe VALUES(17,43,'Metformin' ,'2010-06-25',3)
INSERT INTO Prescribe VALUES(16,46,'Qulipta','2022-06-25',2)
											  

