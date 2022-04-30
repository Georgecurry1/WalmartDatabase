--Create Tables

CREATE TABLE Supplier
(
	SupplierID varchar(2) NOT NULL,
	sName varchar(25) NOT NULL
	Primary Key (SupplierID)
);
CREATE TABLE Manager
(
	ManagerID varchar(3) NOT NULL,
	mName varchar(25) NOT NULL
	Primary Key (ManagerID)
);
CREATE TABLE Department
(
	DepartmentID varchar(4) NOT NULL,
	dName varchar(25) NOT NULL
	Primary Key (DepartmentID)
);
CREATE TABLE Region
(
	RegionID varchar(2) NOT NULL,
	rName varchar(25) NOT NULL
	Primary Key (RegionID)
);
CREATE TABLE Customer
(
	CustomerID varchar(3) NOT NULL,
	FirstName varchar(25) NOT NULL,
	LastName varchar(25) NOT NULL,
	MiddleName varchar(25),
	DOB varchar(10) NOT NULL,
	Email varchar(40) NOT NULL,
	BillingAddress varchar(60) NOT NULL
	Primary Key (CustomerID)
);
CREATE TABLE CustomerPhoneNumber
(
	CustomerID varchar(3) NOT NULL,
	PhoneNumber varchar(14) NOT NULL,
	Primary Key (CustomerID,PhoneNumber),
	Foreign Key (CustomerID)REFERENCES Customer(CustomerID) 
);
CREATE TABLE Product
(
	ProductID varchar(3) NOT NULL,
	pName varchar(25) NOT NULL,
	Price varchar(25) NOT NULL,
	DepartmentID varchar(4)NOT NULL,
	Primary Key (ProductID),
	Foreign Key (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Transactions
(
	TID varchar(5) NOT NULL,
	TDate varchar(10) NOT NULL,
	ProductID varchar(3) NOT NULL,
	CustomerID varchar(3)NOT NULL,
	Primary Key (TID),
	Foreign Key (ProductID) REFERENCES Product(ProductID),
	Foreign Key (CustomerID) REFERENCES Customer(CustomerID),
);
CREATE TABLE Employee
(
	EmployeeID varchar(2) NOT NULL,
	EName varchar(25) NOT NULL,
	PhoneNumber varchar(14) NOT NULL,
	Salary varchar(7)NOT NULL,
	Bonus varchar(7),
	Email varchar(40),
	ManagerID varchar(3)NOT NULL,
	Primary Key (EmployeeID),
	Foreign Key (ManagerID) REFERENCES Manager(ManagerID)
);
CREATE TABLE Store
(
	StoreID Varchar(2) NOT NULL,
	storeName Varchar(12)NOT NULL,
	RegionID varchar(2) NOT NULL,
	ManagerID varchar(3) NOT NULL,
	Primary Key(StoreID),
	Foreign Key (RegionID) REFERENCES Region(RegionID), 
	Foreign Key (ManagerID) REFERENCES Manager(ManagerID)
);
CREATE TABLE Stock
(
	EmployeeID varchar(2) NOT NULL,
	DepartmentID varchar(4) NOT NULL,
	Primary Key(EmployeeID,DepartmentID),
	Foreign Key (EmployeeID) REFERENCES Employee(EmployeeID),
	Foreign Key (DepartmentID) REFERENCES Department(DepartmentID)
);
CREATE TABLE Includes
(
	TID varchar(5) NOT NULL,
	ProductID varchar(3) NOT NULL,
	Quanity int NOT NULL,
	Primary Key(TID,ProductID),
	Foreign Key (TID) REFERENCES Transactions(TID),
	Foreign Key (ProductID) REFERENCES Product(ProductID)
);
CREATE TABLE Supplies
(
	SupplierID varchar(2) NOT NULL,
	ProductID varchar(3) NOT NULL,
	Quanity int NOT NULL,
	Primary Key(SupplierID,ProductID),
	Foreign Key (SupplierID) REFERENCES Supplier(SupplierID),
	Foreign Key (ProductID) REFERENCES Product(ProductID)
);

--Insert records in the same order as i created tables!
--supplier, manager,department,region,customer,customerphone#,'
--product, trans, employee,store, stock, includes, supplies

Insert into Supplier values('VG', 'Veggie Green');
Insert into Supplier values('MA', 'Masterful Area');
Insert into Supplier values('MF', 'Miss Freea');
Insert into Supplier values('GG', 'Green Gone');
Insert into Supplier values('TR', 'Time Rails');
Insert into Supplier values('TU', 'Texas United');
Insert into Supplier values('VB', 'Venus Blue');
Insert into Supplier values('BA', 'Bach Axis');
Insert into Supplier values('NO', 'New Osis');
Insert into Supplier values('ER', 'Earna Hots');

select* from supplier

Insert into Manager values('900', 'John');
Insert into Manager values('901',	'Kenny');
Insert into Manager values('902',	'Maxwell');
Insert into Manager values('903',	'Lucy');
Insert into Manager values('904',	'James');
Insert into Manager values('905',	'Joe');
Insert into Manager values('906',	'Bob');
Insert into Manager values('907',	'Ben');
Insert into Manager values('908',	'Alan');
Insert into Manager values('909',	'Alexander');

select* from Manager

Insert into Department Values('A660',	'Department 1');
Insert into Department Values('A661',	'Department 2');
Insert into Department Values('A662',	'Department 3');
Insert into Department Values('A663',	'Department 4');
Insert into Department Values('A664',	'Department 5');
Insert into Department Values('A665',	'Department 6');
Insert into Department Values('A666',	'Department 7');
Insert into Department Values('A667',	'Department 8');
Insert into Department Values('A668',	'Department 9');
Insert into Department Values('A669',	'Department 10');

Select* from Department

Insert into Region Values('WA',	'Western Area');
Insert into Region Values('NE',	'New Eastern');
Insert into Region Values('WE',	'West East');
Insert into Region Values('NH',	'North Hemi');
Insert into Region Values('NW',	'New West');
Insert into Region Values('SE',	'South East');
Insert into Region Values('SW',	'South West');
Insert into Region Values('TS',	'The South');
Insert into Region Values('TW',	'The West');
Insert into Region Values('TN',	'The North');

select* from Region

Insert into Customer values('101','Mercer','John',null,'1-2-2010','Mike@hotmail.com','8519 Hawthorne St. Marcus Dr');	
Insert into Customer values('102','Evan','Allan','Charles','4-22-1988','Kaylee@gmail.com','66 Manchester Rd. Phoenixville');		
Insert into Customer values('103','Rodney','Henry','Michael','4-2-1978','Wisozk26@gmail.com','8103 West Westminster Ave. Fall River');		
Insert into Customer values('104','Dixie','Cubby',null,'9-19-2000','ant93@yahoo.com','8661 S. Inverness Lane Hope Mills');		
Insert into Customer values('105','Golden','Maxwell','David','5-6-1999','wift64@gmiail.com','9229 Shore St. Chicopee');		
Insert into Customer values('106','Neo','Lennin','Nickel','2-22-1980','Eloise52@hotcodmail.com','8071 Walnutwood Ave. Buckeye');		
Insert into Customer values('107','Moss','June',null,'3-10-2009','Gorczany76@yahoo.com','478 S. Inverness Ave. Hillsborough');		
Insert into Customer values('108','Albert','Messy','Helius','6-7-1979','Hell4U@hotmail.com','459 Kent Court Oakland Gardens');		
Insert into Customer values('109','Bonny','Konna','Vinnie','5-7-2003','Demetris@yahoo.com','363 East State Ave. Fairborn');		
Insert into Customer values('110','Yenze','Leani',null,'9-25-2013','Annabe8@hotmail.com','414 Bay Street Toms River');		

select* from customer

insert into CustomerPhoneNumber values('101','205-111-2212');
insert into CustomerPhoneNumber values('102','112-233-2354');
insert into CustomerPhoneNumber values('103','124-553-3343');
insert into CustomerPhoneNumber values('104','554-444-3332');
insert into CustomerPhoneNumber values('105','664-445-3663');
insert into CustomerPhoneNumber values('106','454-443-3222');
insert into CustomerPhoneNumber values('107','666-333-3453');
insert into CustomerPhoneNumber values('108','555-776-6654');
insert into CustomerPhoneNumber values('109','765-578-7765');
insert into CustomerPhoneNumber values('110','655-754-3333');
-- i will add one more phone number to 110
insert into CustomerPhoneNumber values('110','555-443-6654');
 
select* from CustomerPhoneNumber


Insert into Product values('1',	'Apples','10','A660');
Insert into Product values('2',	'Bathtub','100','A661');
Insert into Product values('3',	'Grill','50','A662');
Insert into Product values('4',	'Dairy food','25','A663');
Insert into Product values('5',	'Shoes','55','A664');
Insert into Product values('6',	'Oven',	'150','A665');
Insert into Product values('7',	'Labtop','240','A666');
Insert into Product values('8',	'Mircowave','300','A667');
Insert into Product values('9',	'Jeans','75','A668');
Insert into Product values('10','Phone','1000','A669');

select* from Product


insert into Transactions values('10001',	'1-11-2022','1','101');
insert into Transactions values('10002',	'1-12-2022','2','102');
insert into Transactions values('10003',	'1-13-2022','3','103');
insert into Transactions values('10004',	'1-14-2022','4','104');
insert into Transactions values('10005',	'1-15-2022','5','105');
insert into Transactions values('10006',	'1-16-2022','6','106');
insert into Transactions values('10007',	'1-17-2022','7','107');
insert into Transactions values('10008',	'1-18-2022','8','108');
insert into Transactions values('10009',	'1-19-2022','9','109');
insert into Transactions values('10010',	'1-20-2022','10','110');

select* from Transactions

insert into employee values('11',	'John',		'205-111-2212',	'25000',	null,	'Leonor77@hotmail.com', '900');	
insert into employee values('12',	'Allan',	'112-233-2354',	'50000',	null,	'Kaylee.Bechtelar40@gmail.com', '901');	
insert into employee values('13',	'Henry',	'124-553-3332',	'54000',	null,	'Danika.Wisozk26@gmail.com'	, '902');	
insert into employee values('14',	'Cubby',	'554-444-3332',	'60000',	null,	'Grant93@yahoo.com'	, '903');	
insert into employee values('15',	'Maxwell',	'664-222-3663',	'100000',	'5000',	'Elda.Swift64@gmail.com', '904');	
insert into employee values('16',	'Lennin',	'432-443-3222',	'76000',	'2500',	'Eloise52@hotmail.com', '905');		
insert into employee values('17',	'June',		'543-333-3453',	'87000',	'1000',	'Oran.Gorczany76@yahoo.com', '906');		
insert into employee values('18',	'Messy',	'555-865-6654',	'45000',	'500',	'Helen54@hotmail.com', '907');		
insert into employee values('19',	'Konna',	'765-098-7765',	'50000',	'700',	'Demetris.Kuhic@yahoo.com', '908');		
insert into employee values('20',	'Leani',	'655-436-3333',	'34000',	'250',	'Annabel.Gottlieb8@hotmail.com', '909');	

select* from employee

Insert into Store values('50',	'Walmart A50', 'WA','900');
Insert into Store values('51',	'Walmart A51', 'NE','901');
Insert into Store values('52',	'Walmart A52', 'WE','902');
Insert into Store values('53',	'Walmart A53', 'NH','903');
Insert into Store values('54',	'Walmart A54', 'NW','904');
Insert into Store values('55',	'Walmart A55', 'SE','905');
Insert into Store values('56',	'Walmart A56', 'SW','906');
Insert into Store values('57',	'Walmart A57', 'TS','907');
Insert into Store values('58',	'Walmart A58', 'TW','908');
Insert into Store values('59',	'Walmart A59', 'TN','909');

Insert into Stock values('11','A660');
Insert into Stock values('12','A661');
Insert into Stock values('13','A662');
Insert into Stock values('14','A663');
Insert into Stock values('15','A664');
Insert into Stock values('16','A665');
Insert into Stock values('17','A666');
Insert into Stock values('18','A667');
Insert into Stock values('19','A668');
Insert into Stock values('20','A669');

select*from Stock

Insert into Includes values('10001','1', '10');
Insert into Includes values('10002','2', '1');
Insert into Includes values('10003','3', '8');
Insert into Includes values('10004','4', '6');
Insert into Includes values('10005','5', '20');
Insert into Includes values('10006','6', '6');
Insert into Includes values('10007','7', '19');
Insert into Includes values('10008','8', '2');
Insert into Includes values('10009','9', '13');
Insert into Includes values('10010','10', '5');

select* from Includes --this table is checking how many products inside a transaction

Insert into Supplies values('VG','1','800');
Insert into Supplies values('MA','2','177');
Insert into Supplies values('MF','3','66');
Insert into Supplies values('GG','4','33');
Insert into Supplies values('TR','5','88');
Insert into Supplies values('TU','6','99');
Insert into Supplies values('VB','7','99');
Insert into Supplies values('BA','8','1000');
Insert into Supplies values('NO','9','664');
Insert into Supplies values('ER','10','988');

select* from Supplies