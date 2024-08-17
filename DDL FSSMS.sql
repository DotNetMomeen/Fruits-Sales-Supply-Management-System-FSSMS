/*
								SQL Project Name : Fruits Sales Supply Management System (FSSMS)
										     Trainee Name : MOMEEN HOSSAIN RONY   
									    	       Trainee ID : 1280999       
										       Batch ID : CS/PNTL-M/58/01 
			
 -----------------------------------------------------------------------------------------------------------------------------------------------------
 -----------------------------------------------------------------------------------------------------------------------------------------------------

Table of Contents: DDL
					‣ SECTION 01: Created a Database FSSMS
					‣ SECTION 02: Created Appropriate Tables with column definition related to the project
					‣ SECTION 03: ALTER, DROP AND MODIFY TABLES & COLUMNS
					‣ SECTION 04: CREATE CLUSTERED AND NONCLUSTERED INDEX
					‣ SECTION 05: CREATE SEQUENCE & ALTER SEQUENCE
					‣ SECTION 06: CREATE A VIEW & ALTER VIEW
					‣ SECTION 07: CREATE STORED PROCEDURE & ALTER STORED PROCEDURE
					‣ SECTION 08: CREATE FUNCTION(SCALER VALUED FUNCTION & TABLE VALUED FUNCTION)
					‣ SECTION 09: CREATE TRIGGER (FOR/AFTER TRIGGER)
					‣ SECTION 10: CREATE TRIGGER (INSTEAD OF TRIGGER)
*/
	
	
/*
========================================  SECTION 01  ========================================
				CHECK DATABASE EXISTANCE & CREATE DATABASE WITH ATTRIBUTES
==============================================================================================
*/

CREATE DATABASE FSSMS 
ON 
(
		Name='FSSMSmdf',
		FileName='D:\UPDATE SQL PROJECT\SQL Project_FSSMS.mdf',
		size = 5mb,
		Maxsize=50mb,
		Filegrowth =10%
)
LOG ON 
(
		Name='FSSMSldf',
		FileName='D:\UPDATE SQL PROJECT\SQL Project_FSSMS.ldf',
		size = 5mb,
		Maxsize=50mb,
		Filegrowth =3mb
)
GO

USE FSSMS
GO

/*
========================================  SECTION 02  ========================================
							CREATE TABLES WITH COLUMN DEFINITION
==============================================================================================
*/

--====== ...Table with IDENTITY, PRIMARY KEY, FOREIGN KEY & NULL Ability CONSTRAINT... ======--


-- FruitsType Table
CREATE TABLE FruitsType
(
    TypeId INT PRIMARY KEY IDENTITY,
    TypeName VARCHAR(20) NOT NULL
)
GO
-- FruitsOrigin Table
CREATE TABLE FruitsOrigin
(
    OriginId INT PRIMARY KEY IDENTITY,
    OriginName VARCHAR(50) NOT NULL
)
GO

-- FruitsColor Table
CREATE TABLE FruitsColor
(
    ColorId INT PRIMARY KEY IDENTITY,
    ColorName VARCHAR(50) NOT NULL
)
GO

-- FruitsSeason Table
CREATE TABLE FruitsSeason
(
    SeasonId INT PRIMARY KEY IDENTITY,
    SeasonName VARCHAR(50) NOT NULL
)
GO
-- fruitsQualityType Table
CREATE TABLE fruitsQualityType
(
    QualityTypeId INT PRIMARY KEY IDENTITY,
    QualityTypeName VARCHAR(20) NOT NULL
)
GO
-- Fruits Table
CREATE TABLE Fruits
(
    FruitsId INT PRIMARY KEY IDENTITY,
    FruitsName VARCHAR(50) NOT NULL,
    TypeId INT REFERENCES FruitsType(TypeId),
    ColorId INT REFERENCES FruitsColor(ColorId),
    SeasonId INT REFERENCES FruitsSeason(SeasonId),
    OriginId INT REFERENCES FruitsOrigin(OriginId),
	QualityTypeId INT REFERENCES fruitsQualityType(QualityTypeId),
    UnitPrice MONEY
)
GO

-- City Table
CREATE TABLE City
(
    CityId INT PRIMARY KEY IDENTITY,
    CityName VARCHAR(50) NOT NULL
)
GO

-- Country Table
CREATE TABLE Country
(
    CountryId INT PRIMARY KEY IDENTITY,
    CountryName VARCHAR(50) NOT NULL
)
GO

-- Gender Table
CREATE TABLE Gender
(
    GenderId INT PRIMARY KEY IDENTITY,
    GenderName VARCHAR(20) NOT NULL
)
GO

-- BloodGroup Table
CREATE TABLE BloodGroup
(
    BloodGroupId INT PRIMARY KEY IDENTITY,
    BloodGroupName VARCHAR(10) NOT NULL
)
GO

-- Occupation Table
CREATE TABLE Occupation
(
    OccupationId INT PRIMARY KEY IDENTITY,
    OccupationName VARCHAR(50) NOT NULL
)
GO

-- Religion Table
CREATE TABLE Religion
(
    ReligionId INT PRIMARY KEY IDENTITY,
    ReligionName VARCHAR(50) NOT NULL
)
GO

-- Marital Status Table
CREATE TABLE MaritalStatus
(
    MaritalStatusId INT PRIMARY KEY IDENTITY,
    StatusName VARCHAR(50) NOT NULL
)
GO

-- Education Level Table
CREATE TABLE EducationLevel
(
    EducationLevelId INT PRIMARY KEY IDENTITY,
    EducationLevelName VARCHAR(50) NOT NULL
)
GO

-- Nationality Table
CREATE TABLE Nationality
(
    NationalityId INT PRIMARY KEY IDENTITY,
    NationalityName VARCHAR(50) NOT NULL
)
GO

-- EmployeePosition Table
CREATE TABLE EmployeePosition
(
    EmployeePositionId INT PRIMARY KEY IDENTITY,
    EmployeePositionName VARCHAR(50) NOT NULL
)
GO

-- Local Delivery Company List Table
CREATE TABLE LocalDeliveryCompanyList
(
    LocalDeliveryCompanyId INT PRIMARY KEY IDENTITY,
    CompanyName VARCHAR(100) NOT NULL,
    Branch VARCHAR(30),
    ContactNumber VARCHAR(20),
    Email VARCHAR(100),
    BranchAddress VARCHAR(100),
    CityId INT REFERENCES City(CityId),
    CountryId INT REFERENCES Country(CountryId)
)
GO

-- Abroad Delivery Company List Table

CREATE TABLE AbroadDeliveryCompanyList
(
    AbroadDeliveryCompanyId INT PRIMARY KEY IDENTITY,
    CompanyName VARCHAR(100) NOT NULL,
    Branch VARCHAR(30),
    ContactNumber VARCHAR(20),
    Email VARCHAR(100),
    BranchAddress VARCHAR(100),
    CityId INT REFERENCES City(CityId),
    CountryId INT REFERENCES Country(CountryId)
)
GO

-- Shop Stock Table
CREATE TABLE ShopStock
(
    FruitsId INT REFERENCES Fruits(FruitsId),
    Quantity INT
)
GO

-- Fruits Stock House Table
CREATE TABLE FruitsStockHouse
(
    FruitsId INT REFERENCES Fruits(FruitsId),
    Quantity INT
)
GO


-- Customers Table
CREATE TABLE Customers
(
    CustomerId INT PRIMARY KEY IDENTITY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    GenderId INT REFERENCES Gender(GenderId),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
	DateOfBirth DATE,
    CityId INT REFERENCES City(CityId),
    CountryId INT REFERENCES Country(CountryId),
    NationalityId INT REFERENCES Nationality(NationalityId),
	OccupationId INT REFERENCES Occupation(OccupationId),
    MaritalStatusId INT REFERENCES MaritalStatus(MaritalStatusId),
    ReligionId INT REFERENCES Religion(ReligionId)
)
GO

-- Suppliers Table
CREATE TABLE Suppliers 
(
    SupplierId INT PRIMARY KEY IDENTITY,
    SupplierName VARCHAR(100) NOT NULL,
    ContactNumber VARCHAR(20),
	DateOfBirth DATE,
    Email VARCHAR(100),
    CityId INT REFERENCES City(CityId),
    CountryId INT REFERENCES Country(CountryId),
	OccupationId INT REFERENCES Occupation(OccupationId),
    NationalityId INT REFERENCES Nationality(NationalityId)
)
GO

-- Employees Table
CREATE TABLE Employees
(
    EmployeeId INT PRIMARY KEY IDENTITY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    GenderId INT REFERENCES Gender(GenderId),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
	DateOfBirth DATE,
	JoiningDate DATE,
    Salary MONEY,
	BloodGroupId INT REFERENCES BloodGroup(BloodGroupId),
	EmployeePositionId INT REFERENCES EmployeePosition(EmployeePositionId),
    CityId INT REFERENCES City(CityId),
    CountryId INT REFERENCES Country(CountryId),
    NationalityId INT REFERENCES Nationality(NationalityId),
    EducationLevelId INT REFERENCES EducationLevel(EducationLevelId),
    MaritalStatusId INT REFERENCES MaritalStatus(MaritalStatusId),
    ReligionId INT REFERENCES Religion(ReligionId)
)
GO

-- Orders Table
CREATE TABLE Orders
(
    OrderId INT PRIMARY KEY IDENTITY,
    CustomerId INT REFERENCES Customers(CustomerId),
    FruitsId INT REFERENCES Fruits(FruitsId),
    OrderDate DATETIME,
    Quantity INT NOT NULL,
    UnitPrice MONEY NOT NULL,
    Vat FLOAT NOT NULL,
	Discount FLOAT NULL , 
    TotalBill AS (Quantity * UnitPrice * (1 + Vat) * (1 - ISNULL(Discount, 0))),
	DeliveryDate DATETIME CONSTRAINT DF_DeliveryDate DEFAULT (DATEADD(DAY, 3, GETDATE())),
	LocalDeliveryCompanyId INT REFERENCES LocalDeliveryCompanyList(LocalDeliveryCompanyId) NULL,
	AbroadDeliveryCompanyId INT REFERENCES AbroadDeliveryCompanyList(AbroadDeliveryCompanyId) NULL
)
GO

/*
========================================  SECTION 02  ========================================
				Created Appropriate Tables with column definition related to the project
==============================================================================================
*/

--====================================== ...Sample table... ====================================--

-- OutletsList Table

CREATE TABLE OutletsList
(
    OutletId INT PRIMARY KEY,
    OutletName VARCHAR(100) NOT NULL,
    LocationAddress VARCHAR(255),
    ContactNumber VARCHAR(20),
    Email VARCHAR(100),
    CityId INT REFERENCES City(CityId),
    CountryId INT REFERENCES Country(CountryId)
)
GO
--==================================== ...Create a Schema... ===================================--
CREATE SCHEMA FSSMS
GO
--================================== ...Use Schema in a table... ================================--

CREATE TABLE FSSMS.CustomerFeedback
(
	CustomerFeedbackId INT PRIMARY KEY IDENTITY,
	CustomerFeedbackBox NVARCHAR(150) NULL	
)
GO

SELECT * FROM FSSMS.CustomerFeedback
GO

/*
========================================  SECTION 03  ========================================
							ALTER, DROP AND MODIFY TABLES & COLUMNS
==============================================================================================
*/

--ALTER TABLE SCHEMA AND TRANSFER TO [DBO]:
ALTER SCHEMA dbo TRANSFER FSSMS.CustomerFeedback
GO

----UPDATE COLUMN DEFINITION::
ALTER TABLE dbo.CustomerFeedback
ALTER COLUMN CustomerFeedbackBox NVARCHAR(100) NULL
GO

--ADD COLUMN WITH DEFAULT CONSTRAINT:
ALTER TABLE Employees
ADD Bonus INT CONSTRAINT DF_Bonus DEFAULT 0
GO

--DROP DEFAULT CONSTRAINT:
ALTER TABLE Employees
DROP CONSTRAINT DF_Bonus
GO

--DROP COLUMN:
ALTER TABLE Employees
DROP COLUMN Bonus 
GO

--DROP TABLE:
IF OBJECT_ID('FruitsCategory') IS NOT NULL
DROP TABLE FruitsCategory 
GO

--DROP SCHEMA:
DROP SCHEMA FSSMS
GO

/*
========================================  SECTION 04  ========================================
						  CREATE CLUSTERED AND NONCLUSTERED INDEX
==============================================================================================
*/

-- CLUSTERED INDEX
CREATE CLUSTERED INDEX clusteredIndexOutletsList
ON OutletsList(OutletId)
GO

-- NONCLUSTERED INDEX
CREATE NONCLUSTERED INDEX nonClusteredIndexfruits
ON fruits(fruitsName)
GO

/*
========================================  SECTION 05  ========================================
						      CREATE SEQUENCE & ALTER SEQUENCE
==============================================================================================
*/

-- CREATE SEQUENCE:
CREATE SEQUENCE FSSMS_sequence
				AS INT
				START WITH 1
				INCREMENT BY 1
				MINVALUE 0
				MAXVALUE 800
				CYCLE
				CACHE 10
GO

-- ALTER SEQUENCE:
		ALTER SEQUENCE	FSSMS_sequence
						MINVALUE 0
						MAXVALUE 2000
						CYCLE
						CACHE 20
GO

/*
========================================  SECTION 06  ========================================
						         CREATE A VIEW & ALTER VIEW
==============================================================================================
*/

--CREATE A VIEW:
CREATE VIEW vEmployees
AS
SELECT EmployeeId, FirstName, LastName, Salary,GenderID,CityID FROM Employees
GO

--VIEW WITH ENCRYPTION:
CREATE VIEW v_Customerinfo
WITH ENCRYPTION
AS
SELECT FirstName, LastName,CityID, PhoneNumber FROM Customers
GO

--ALTER VIEW:
ALTER VIEW vCustomersInfo
AS
SELECT FirstName, LastName,CityID,DateOfBirth,CountryID FROM Customers
GO

/*
========================================  SECTION 07  ========================================
					  CREATE STORED PROCEDURE & ALTER STORED PROCEDURE
==============================================================================================
*/

--STORED PROCEDURE FOR INSERT DATA USING PARAMETER:

CREATE PROC spInsertLocalDeliveryCompany			
										@CompanyName VARCHAR(100),
										@Branch VARCHAR(30),
										@ContactNumber VARCHAR(20),
										@Email VARCHAR(100),
										@BranchAddress VARCHAR(100),
										@CityId INT,
										@CountryId INT
AS
BEGIN
	INSERT INTO LocalDeliveryCompanyList (CompanyName,Branch,ContactNumber,Email,BranchAddress,CityId,CountryId)
	VALUES (@CompanyName, @Branch, @ContactNumber, @Email, @BranchAddress,@CityId,@CountryId)
END
GO


--STORED PROCEDURE FOR INSERT WITH OUTPUT PARAMETER:

CREATE PROC spInsertLocalDeliveryCompanyOutput			
												@LocalDeliveryCompanyId INT,
												@CompanyName VARCHAR(100),
												@Branch VARCHAR(30),
												@ContactNumber VARCHAR(20),
												@Email VARCHAR(100),
												@BranchAddress VARCHAR(100),
												@CityId INT,
												@CountryId INT,
												@id INT OUTPUT
AS
BEGIN
	INSERT INTO LocalDeliveryCompanyList (LocalDeliveryCompanyId,CompanyName, Branch, ContactNumber, Email, BranchAddress, CityId, CountryId)
	VALUES (@LocalDeliveryCompanyId, @CompanyName, @Branch, @ContactNumber, @Email, @BranchAddress, @CityId, @CountryId)
	SELECT @id = IDENT_CURRENT('LocalDeliveryCompanyList')
END
GO

--STORED PROCEDURE FOR UPDATE DATA:

CREATE PROCEDURE spUpdateEmployee	  
									@EmployeeId INT ,
								    @FirstName VARCHAR(50),
								    @LastName VARCHAR(50),
								    @GenderId INT,
								    @Email VARCHAR(100),
								    @PhoneNumber VARCHAR(20),
									@DateOfBirth DATE,
									@JoiningDate DATE,
								    @Salary MONEY,
									@BloodGroupId INT,
									@EmployeePositionId INT,
								    @CityId INT,
								    @CountryId INT,
								    @NationalityId INT,
								    @EducationLevelId INT,
								    @MaritalStatusId INT,
								    @ReligionId INT


AS
BEGIN
UPDATE Employees
SET
								    FirstName=@FirstName,
								    LastName=@LastName,
								    GenderId=@GenderId,
								    Email=@Email,
								    PhoneNumber=@PhoneNumber,
									DateOfBirth=@DateOfBirth,
									JoiningDate=@JoiningDate,
								    Salary=@Salary,
									BloodGroupId=@BloodGroupId,
									EmployeePositionId=@EmployeePositionId,
								    CityId=@CityId,
								    CountryId=@CountryId,
								    NationalityId=@NationalityId,
								    EducationLevelId=@EducationLevelId,
								    MaritalStatusId=@MaritalStatusId,
								    ReligionId=@ReligionId
WHERE EmployeeID = @EmployeeID
END
GO

--STORED PROCEDURE FOR DELETE TABLE DATA:
CREATE PROC sp_DeleteEmployees 
								@EmployeeID INT
AS
BEGIN
		DELETE FROM Employees
		WHERE EmployeeID=@EmployeeID
END
GO

--TRY CATCH IN A STORED PROCEDURE & RAISERROR WITH ERROR NUMBER AND ERROR MESSAGE:

CREATE PROC spEmployee		@EmployeeId INT,			
						    @FirstName VARCHAR(50),
						    @LastName VARCHAR(50),
						    @Salary MONEY
AS
BEGIN
    BEGIN TRY
        IF @Salary > 0
            INSERT INTO Employees (EmployeeId,FirstName, LastName, Salary)
            VALUES (@EmployeeId,@FirstName, @LastName, @Salary);
        ELSE
        BEGIN
            RAISERROR('Salary cannot be 0 or negative.', 10, 1)
            RETURN
        END
    END TRY
    BEGIN CATCH

-- Handle the error if needed

        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO

--ALTER STORED PROCEDURE:

CREATE PROC spInsertLocalDeliveryCompanyList			
												@LocalDeliveryCompanyId INT,
												@CompanyName VARCHAR(100),
												@Branch VARCHAR(30),
												@ContactNumber VARCHAR(20),
												@Email VARCHAR(100),
												@BranchAddress VARCHAR(100),
												@CityId INT,
												@CountryId INT
AS
BEGIN
	INSERT INTO LocalDeliveryCompanyList (LocalDeliveryCompanyId,CompanyName,Branch,ContactNumber,Email,BranchAddress,CityId,CountryId)
	VALUES (@LocalDeliveryCompanyId,@CompanyName, @Branch, @ContactNumber, @Email, @BranchAddress,@CityId,@CountryId)
END
GO


/*
========================================  SECTION 08  ========================================
				CREATE FUNCTION(SCALER VALUED FUNCTION & TABLE VALUED FUNCTION)
==============================================================================================
*/

--A CORRECTED SCALAR FUNCTION:
CREATE FUNCTION fnCalcDiscount
(									@Quantity INT,
								    @UnitPrice MONEY,
								    @Discount FLOAT,
								    @Vat FLOAT
)
RETURNS MONEY
AS
BEGIN
    DECLARE @discountedPrice MONEY
    SET @discountedPrice = @Quantity * @UnitPrice * (1 - @Discount)
	RETURN @discountedPrice

    
END
GO





--A SIMPLE TABLE VALUED FUNCTION:
CREATE FUNCTION dbo.GetEmployeeDetails()
RETURNS TABLE 
AS
RETURN
(
    SELECT EmployeeID, FirstName, LastName, EmployeePositionId,PhoneNumber,BloodGroupId,Salary,JoiningDate
    FROM Employees
    WHERE EmployeeID IN (1,5)
)
GO

--A MULTI STATEMENT TABLE-VALUED FUNCTION:

CREATE FUNCTION dbo.GetHighSalaryEmployees()
RETURNS @HighSalaryEmployees TABLE
(
				    EmployeeID INT,
				    FirstName VARCHAR(50),
				    LastName VARCHAR(50),
				    Salary MONEY
)
AS
BEGIN

					INSERT INTO @HighSalaryEmployees
					SELECT EmployeeID, FirstName, LastName, Salary
					FROM Employees
					WHERE Salary > 50000;

RETURN
END
GO

--ALTER FUNCTION:
ALTER FUNCTION dbo.GetHighSalaryEmployees()
RETURNS @HighSalaryEmployees TABLE
(
				    EmployeeID INT,
				    FirstName VARCHAR(60),
				    LastName VARCHAR(60),
				    Salary MONEY
)
AS
BEGIN

					INSERT INTO @HighSalaryEmployees
					SELECT EmployeeID, FirstName, LastName, Salary
					FROM Employees
					WHERE Salary > 60000;

RETURN
END
GO

/*
========================================  SECTION 09  ========================================
							CREATE TRIGGER (FOR/AFTER TRIGGER)
==============================================================================================
*/
--------AFTER TRIGGER With ROLLBACK TRANSACTION:
CREATE TRIGGER trSuppliers
ON Suppliers
AFTER UPDATE,DELETE
AS
BEGIN
		PRINT'You cant not update, insert ot delete data!!!'
		ROLLBACK TRANSACTION
		
END
GO

--------AFTER TRIGGER Data Insert:

CREATE TRIGGER trSuppliersInsert
ON Suppliers
AFTER INSERT
AS
BEGIN
		DECLARE @SupplierId INT
		DECLARE @SupplierName VARCHAR(100)
		DECLARE @ContactNumber VARCHAR(20)
		DECLARE @DateOfBirth DATE
		DECLARE @Email VARCHAR(100)
		DECLARE @CityId INT
		DECLARE @CountryId INT
		DECLARE @OccupationId INT
		DECLARE @NationalityId INT

	INSERT INTO Suppliers(SupplierId,SupplierName, ContactNumber,DateOfBirth, Email,CityId,CountryId,OccupationId,NationalityId)
	SELECT @SupplierId, @SupplierName,@ContactNumber,@DateOfBirth,@Email,@CityId,@CountryId,@OccupationId,@NationalityId FROM INSERTED
END
GO

--------INSTEAD OF TRIGGER:

CREATE TRIGGER trInsteadOfInsertOrders
ON Orders
INSTEAD OF INSERT
AS
BEGIN
    
    IF EXISTS (SELECT 1 FROM inserted WHERE Quantity <= 0)
    BEGIN
        RAISERROR('Quantity should be greater than zero.', 16, 1)
        RETURN
    END
	ELSE
	BEGIN
		INSERT INTO Orders (CustomerId, FruitsId, OrderDate, Quantity, UnitPrice, Vat, Discount, TotalBill, DeliveryDate, LocalDeliveryCompanyId)
        SELECT CustomerId, FruitsId, OrderDate, Quantity, UnitPrice, Vat, Discount, TotalBill, DeliveryDate, LocalDeliveryCompanyId
        FROM inserted
	END
END
GO
-----------------------------------END---------------------------------------------