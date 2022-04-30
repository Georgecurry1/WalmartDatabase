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

