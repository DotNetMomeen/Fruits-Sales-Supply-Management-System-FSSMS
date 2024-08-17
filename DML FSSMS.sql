/*
								SQL Project Name : Fruits Sales Supply Management System (FSSMS)
										    Trainee Name : Momeen Hossain Rony   
									    	  Trainee ID : 1280999       
										  Batch ID : CS/PNTL-M/58/01 
 

------------------------------------------------------------------------------------------------------------------------
		Table of Contents: DML
				=> SECTION 01: INSERT DATA USING INSERT INTO KEYWORD
				=> SECTION 02: INSERT DATA THROUGH STORED PROCEDURE
					SUB SECTION => 2.1 : INSERT DATA THROUGH STORED PROCEDURE WITH AN OUTPUT PARAMETER 
					SUB SECTION => 2.2 : INSERT DATA USING SEQUENCE VALUE
				=> SECTION 03: UPDATE DELETE DATA THROUGH STORED PROCEDURE
					SUB SECTION => 3.1 : UPDATE DATA THROUGH STORED PROCEDURE
					SUB SECTION => 3.2 : DELETE DATA THROUGH STORED PROCEDURE
					SUB SECTION => 3.3 : STORED PROCEDURE WITH TRY CATCH AND RAISE ERROR
				=> SECTION 04: INSERT UPDATE DELETE DATA THROUGH VIEW
					SUB SECTION => 4.1 : INSERT DATA through view
					SUB SECTION => 4.2 : UPDATE DATA through view
					SUB SECTION => 4.3 : DELETE DATA through view
				=> SECTION 05: RETREIVE DATA USING FUNCTION(SCALAR, SIMPLE TABLE VALUED, MULTISTATEMENT TABLE VALUED)
				=> SECTION 06: TEST TRIGGER (FOR/AFTER TRIGGER ON TABLE, INSTEAD OF TRIGGER ON TABLE & VIEW)
				=> SECTION 07: QUERY
					SUB SECTION => 7.01 : SELECT FROM TABLE
					SUB SECTION => 7.02 : SELECT FROM VIEW
					SUB SECTION => 7.03 : SELECT INTO
					SUB SECTION => 7.04 : IMPLICIT JOIN WITH WHERE BY CLAUSE, ORDER BY CLAUSE
					SUB SECTION => 7.05 : INNER JOIN WITH GROUP BY CLAUSE
					SUB SECTION => 7.06 : OUTER JOIN
					SUB SECTION => 7.07 : CROSS JOIN
					SUB SECTION => 7.08 : TOP CLAUSE WITH TIES
					SUB SECTION => 7.09 : DISTINCT
					SUB SECTION => 7.10 : COMPARISON, LOGICAL(AND OR NOT) & BETWEEN OPERATOR
					SUB SECTION => 7.11 : LIKE, IN, NOT IN, OPERATOR & IS NULL CLAUSE
					SUB SECTION => 7.12 : OFFSET FETCH
					SUB SECTION => 7.13 : UNION
					SUB SECTION => 7.14 : EXCEPT INTERSECT
					SUB SECTION => 7.15 : AGGREGATE FUNCTIONS
					SUB SECTION => 7.16 : GROUP BY & HAVING CLAUSE
					SUB SECTION => 7.17 : ROLLUP & CUBE OPERATOR
					SUB SECTION => 7.18 : GROUPING SETS
					SUB SECTION => 7.19 : SUB-QUERIES (INNER, CORRELATED)
					SUB SECTION => 7.20 : EXISTS
					SUB SECTION => 7.21 : CTE
					SUB SECTION => 7.22 : MERGE
					SUB SECTION => 7.23 : BUILT IN FUNCTION
					SUB SECTION => 7.24 : CASE
					SUB SECTION => 7.25 : IIF
					SUB SECTION => 7.26 : COALESCE & ISNULL
					SUB SECTION => 7.27 : WHILE
					SUB SECTION => 7.28 : GROPING FUNCTION
					SUB SECTION => 7.29 : RANKING FUNCTION
					SUB SECTION => 7.30 : IF ELSE & PRINT
					SUB SECTION => 7.31 : TRY CATCH
					SUB SECTION => 7.32 : GOTO
					SUB SECTION => 7.33 : WAITFOR
					SUB SECTION => 7.34 : sp_helptext
					SUB SECTION => 7.35 : TRANSACTION WITH SAVE POINT
*/


/*
==============================  SECTION 01  ==============================
					INSERT DATA USING INSERT INTO KEYWORD
==========================================================================
*/
USE FSSMS
GO

-- FruitsType Table
INSERT INTO FruitsType VALUES
('Ripe'),
('Raw'),
('Dried'),
('Seed'),
('Citrus'),
('Berries'),
('Tropical'),
('Stone Fruit'),
('Melons'),
('Drupes'),
('Exotic'),
('Subtropical'),
('Temperate'),
('Pome'),
('Custard Apple Family'),
('Nut'),
('Other')
GO
SELECT * FROM FruitsType
GO

-- FruitsOrigin Table
INSERT INTO FruitsOrigin VALUES
('Native'),
('Indian'),
('Thai'),
('Malaysian'),
('Southeast Asia'),
('Middle East'),
('South Asia'),
('Europe and North America'),
('China'),
('Africa')
GO

SELECT * FROM FruitsOrigin
GO

-- FruitsColor Table
INSERT INTO fruitsColor VALUES
('Red'),
('Green'),
('Yellow'),
('Orange'),
('Purple'),
('Blue'),
('Pink'),
('Brown'),
('Black'),
('White'),
('Gray'),
('Gold'),
('Silver'),
('Cyan'),
('Magenta')
GO

SELECT * FROM fruitsColor
GO

-- FruitsSeason Table
INSERT INTO FruitsSeason VALUES
('Spring'),
('Summer'),
('Autumn'),
('Winter'),
('Rainy'),
('Dry'),
('Monsoon'),
('Harvest'),
('Blossom'),
('Frosty')
GO

SELECT * FROM FruitsSeason
GO

-- fruitsQualityType Table
INSERT INTO fruitsQualityType VALUES
('Excellent'),
('Good'),
('Average'),
('Poor'),
('Bad')
GO

SELECT * FROM fruitsQualityType
GO
-- Fruits Table

INSERT INTO Fruits VALUES
('Apple', 1, 1, 2, 1, 1, 300.00),
('Banana', 2, 2, 1, 2, 2, 20.00),
('Orange', 3, 3, 2, 3, 3, 260.00),
('Grapes', 4, 4, 3, 4, 1, 450.00),
('Strawberry', 5, 5, 1, 2, 2, 600.00),
('Watermelon', 1, 6, 2, 1, 3, 1200.00),
('Pineapple', 2, 7, 3, 7, 1, 80.00),
('Mango', 3, 8, 1, 8, 2, 650.00),
('Blueberry', 4, 9, 2, 9, 3, 950.00),
('Peach', 5, 9, 3, 8, 1, 1100.00),
('Cherry', 1, 3, 1, 7, 2, 1450.00),
('Kiwi', 2, 5, 2, 1, 3, 800.00),
('Pear', 3, 7, 3, 3, 1, 550.00),
('Plum', 4, 4, 1, 4, 2, 360.00),
('Raspberry', 5, 6, 2, 8, 3, 360.00),
('Apricot', 1, 1, 3, 1, 1, 360.00),
('Cantaloupe', 2, 2, 1, 2, 2, 250.00),
('Lemon', 3, 3, 2, 3, 3, 300.00),
('Nectarine', 4, 4, 3, 4, 1, 1800.00),
('Blackberry', 5, 5, 1, 5, 2, 850.00)
GO

SELECT * FROM Fruits
GO

-- City Table
INSERT INTO City VALUES
('Dhaka'),
('Chattogram'),
('Khulna'),
('Rajshahi'),
('Sylhet'),
('Barishal'),
('Rangpur'),
('Cumilla'),
('Mymensingh'),
('Kurigram'),
('Chandpur')
GO
SELECT * FROM City
GO

-- Country Table
INSERT INTO Country VALUES
('Afghanistan'),
('Albania'),
('Algeria'),
('Andorra'),
('Angola'),
('Argentina'),
('Armenia'),
('Australia'),
('Austria'),
('Bangladesh'),
('Belgium'),
('Brazil'),
('Canada'),
('China'),
('Egypt'),
('France'),
('Germany'),
('India'),
('Italy'),
('Japan')
GO
SELECT * FROM Country
GO

-- Gender Table
INSERT INTO Gender VALUES
('Male'),
('Female'),
('Transgender'),
('Non-binary'),
('Prefer not to say')
GO

SELECT * FROM Gender
GO

-- BloodGroup Table
INSERT INTO BloodGroup VALUES
('A+'),
('A-'),
('B+'),
('B-'),
('AB+'),
('AB-'),
('O+'),
('O-')
GO

SELECT * FROM BloodGroup
GO

-- Occupation Table
INSERT INTO Occupation VALUES
('Student'),
('Teacher'),
('Banker'),
('Engineer'),
('Nurse'),
('Doctor'),
('Software Developer'),
('Lawyer'),
('Artist'),
('Chef'),
('Police Officer'),
('Accountant'),
('Writer'),
('Entrepreneur'),
('Electrician'),
('Mechanic'),
('Architect'),
('Others')
GO

SELECT * FROM Occupation
GO

-- Religion Table
INSERT INTO Religion VALUES
('Islam'),
('Hinduism'),
('Buddhism'),
('Christianity'),
('Others')
GO

SELECT * FROM Religion
GO

-- Marital Status Table
INSERT INTO MaritalStatus VALUES
('Single'),
('Married'),
('Divorced')
GO

SELECT * FROM MaritalStatus
GO

-- Education Level Table
INSERT INTO EducationLevel VALUES
('Primary School'),
('Secondary School'),
('Higher Secondary'),
('Bachelors'),
('Degree'),
('Masters')
GO

SELECT * FROM EducationLevel
GO

-- Nationality Table
INSERT INTO Nationality VALUES
('Bangladeshi'),
('Indian'),
('American'),
('British'),
('Canadian'),
('Australian'),
('German'),
('French'),
('Italian'),
('Chinese'),
('Japanese'),
('Brazilian'),
('Mexican'),
('Russian'),
('South African'),
('Swedish'),
('Norwegian'),
('Saudi Arabian'),
('Egyptian'),
('Argentinian'),
('Turkish')
GO

SELECT * FROM Nationality
GO

--EmployeePosition Table
INSERT INTO EmployeePosition VALUES
('Manager'),
('Sales Representative'),
('Sales Manager'),
('Accountant'),
('Warehouse Supervisor'),
('Customer Service Representative'),
('Branch Manager'),
('Regional Manager')
GO

SELECT * FROM EmployeePosition
GO

-- Local Delivery Company List Table

INSERT INTO LocalDeliveryCompanyList VALUES
('Swift Courier', 'Dhaka Central', '+8801263668877', 'info@swiftcourier.com', '123 Main Street, Dhaka', 1, 10),
('Express Deliveries', 'Chittagong South', '+8801033445869', 'info@expressdeliveries.com', '456 Park Avenue, Chittagong', 2, 10),
('Metro Logistics', 'Rajshahi East', '+88011033445845', 'info@metrologistics.com', '789 Broadway, Rajshahi', 3, 10),
('Speedy Movers', 'Khulna West', '+880147589631', 'info@speedymovers.com', '101 Pine Street, Khulna', 4, 10),
('City Couriers', 'Barisal North', '+8801314589657', 'info@citycouriers.com', '222 Oak Street, Barisal', 5, 10),
('Rapid Delivery', 'Sylhet Central', '+8801215478965', 'info@rapiddelivery.com', '333 Cedar Street, Sylhet', 6, 10),
('Prime Logistics', 'Rangpur South', '+880126458376', 'info@primelogistics.com', '444 Maple Street, Rangpur', 7, 10),
('Swift Cargo', 'Mymensingh West', '+88013242854886', 'info@swiftcargo.com', '555 Elm Street, Mymensingh', 8, 10),
('Express Connect', 'Kurigram North', '+880121436578', 'info@expressconnect.com', '666 Birch Street, Kurigram', 9, 10),
('Sundarban Courier Service', 'Dhaka North', '+880121424578', 'info@Sundarbancourierservice.com', '666 Boro Mogbazar Street, Dhaka North', 9, 10),
('Global Dispatch', 'Chandpur East', '+880133665544', 'info@globaldispatch.com', '777 Walnut Street, Chandpur', 10, 10)

SELECT * FROM LocalDeliveryCompanyList
GO

-- Abroad Delivery Company List Table

INSERT INTO AbroadDeliveryCompanyList (CompanyName, Branch, ContactNumber, Email, BranchAddress) VALUES
('GlobalExpress', 'New York Central', '+1-356-859-5566', 'info@globalexpress.com', '123 Main Street, New York'),
('InternationalShip', 'London West', '+44-22-4712-3652', 'info@internationalship.com', '456 Park Avenue, London'),
('WorldwideLogistics', 'Paris South', '+33-34-22-78-01', 'info@worldwidelogistics.com', '789 Broadway, Paris'),
('SwiftCargoGlobal', 'Berlin North', '+49-25-335-7458', 'info@swiftcargoglobal.com', '101 Pine Street, Berlin'),
('OceanConnect', 'Tokyo Central', '+81-25-4568-4523', 'info@oceanconnect.com', '222 Oak Street, Tokyo'),
('AeroFreight', 'Sydney East', '+61-2534-5623-7458', 'info@aerofreight.com', '333 Cedar Street, Sydney'),
('ExpressWorldwide', 'Beijing West', '+86-2530-3365-2410', 'info@expressworldwide.com', '444 Maple Street, Beijing'),
('GlobalShipments', 'Cairo North', '+20-532-7413-2255', 'info@globalshipments.com', '555 Elm Street, Cairo'),
('UniversalCargo', 'Rome Central', '+39-22-3542-1144', 'info@universalcargo.com', '666 Birch Street, Rome'),
('WorldLinkLogistics', 'Toronto South', '+1-3354-253-3251', 'info@worldlinklogistics.com', '777 Walnut Street, Toronto')
GO

SELECT * FROM AbroadDeliveryCompanyList
GO

-- Shop Stock Table
INSERT INTO ShopStock VALUES
(1,250),
(2,450),
(3,111),
(4,312),
(5,474),
(6,20),
(7,30)
GO

SELECT * FROM ShopStock
GO
-- Fruits Stock House Table
INSERT INTO FruitsStockHouse VALUES
(1,1250),
(2,1450),
(3,2111),
(4,4312),
(5,3474),
(6,320),
(7,430)
GO

SELECT * FROM FruitsStockHouse
GO

-- Customers Table
INSERT INTO Customers (FirstName, LastName, GenderId, Email, PhoneNumber, DateOfBirth, CityId, CountryId, NationalityId, OccupationId, MaritalStatusId, ReligionId)
VALUES
('Mohammad', 'Rahman', 1, 'mohammad.rahman@email.com', '+880112345678', '1990-05-15', 1, 10, 1, 3, 1, 2),
('Fatima', 'Akter', 2, 'fatima.akter@email.com', '+8801447788663', '1985-08-22', 2, 10, 1, 4, 2, 1),
('Aminul', 'Islam', 1, 'aminul.islam@email.com', '+880136574126', '1995-03-10', 3, 10, 1, 2, 3, 3),
('Tasnim', 'Khan', 2, 'tasnim.khan@email.com', '+8801369852147', '1988-11-02', 4, 10, 1, 1, 1, 1),
('Rahim', 'Ali', 1, 'rahim.ali@email.com', '+88013695147852', '1992-07-14', 5, 10, 1, 5, 2, 2),
('Ayesha', 'Hossain', 2, 'ayesha.hossain@email.com', '+8801365874125', '1980-12-28', 6, 10, 1, 2, 1, 3),
('Imran', 'Kabir', 1, 'imran.kabir@email.com', '+8801365874253', '1993-09-05', 7, 10, 1, 3, 3, 1),
('Jasmine', 'Khatun', 2, 'jasmine.khatun@email.com', '+8801365215663', '1983-04-18', 8, 10, 1, 4, 2, 2),
('Farid', 'Ahmed', 1, 'farid.ahmed@email.com', '+8801369852147', '1997-01-30', 9, 10, 1, 1, 1, 3),
('Nadia', 'Hasan', 2, 'nadia.hasan@email.com', '+8801365874256', '1987-06-12', 10, 11, 1, 5, 3, 1),
('Abdul', 'Bari', 1, 'abdul.bari@email.com', '+8801369852147', '1994-02-24', 4, 10, 1, 2, 1, 2),
('Rima', 'Chowdhury', 2, 'rima.chowdhury@email.com', '+8801951478529', '1986-10-08', 5, 10, 1, 3, 2, 3),
('Shahid', 'Khan', 1, 'shahid.khan@email.com', '+8801369852145', '1991-04-03', 3, 10, 1, 4, 1, 1),
('Nazia', 'Rahman', 2, 'nazia.rahman@email.com', '+8801336699554', '1984-09-16', 7, 10, 1, 1, 3, 2),
('Ashfaq', 'Ali', 1, 'ashfaq.ali@email.com', '+880159751436', '1989-12-09', 2, 10, 1, 5, 2, 3)
GO

SELECT * FROM Customers
GO

-- Suppliers Table

INSERT INTO Suppliers (SupplierName, ContactNumber, DateOfBirth, Email, CityId, CountryId, OccupationId, NationalityId)
VALUES
('ABC Traders', '+880165875999', '1980-01-15', 'abc.traders@email.com', 1, 10, 4, 1),
('XYZ Imports', '+8801365214748', '1985-04-22', 'xyz.imports@email.com', 2, 10, 5, 1),
('PQR Exports', '+88013654225565', '1990-07-10', 'pqr.exports@email.com', 3, 10, 6, 1),
('LMN Suppliers', '+88013366554412', '1975-12-28', 'lmn.suppliers@email.com', 4, 10, 7, 1),
('JKL Enterprises', '+8801365521453', '1988-11-14', 'jkl.enterprises@email.com', 5, 10, 8, 1),
('EFG Distributors', '+88013366554125', '1970-06-02', 'efg.distributors@email.com', 6, 10, 9, 1),
('HIJ Trading', '+88013652254522', '1987-09-15', 'hij.trading@email.com', 7, 10, 10, 1),
('MNO Industries', '+88013652245233', '1982-04-18', 'mno.industries@email.com', 8, 10, 11, 1),
('RST Manufacturers', '+880125693541', '1983-11-30', 'rst.manufacturers@email.com', 9, 10, 12, 1),
('UVW Enterprises', '+8801336658523', '1989-08-22', 'uvw.enterprises@email.com', 10, 10, 13, 1)
GO

SELECT * FROM Suppliers
GO


-- Employees Table
INSERT INTO Employees VALUES
('Md. Ali', 'Khan', 1, 'md.ali.khan@email.com', '+8801654585666', '1985-03-15', '2020-01-10', 50000, 1, 1, 1, 10, 1, 4, 2, 3),
('Fatima', 'Akter', 2, 'fatima.akter@email.com', '+880178569222', '1988-07-22', '2018-05-05', 60000, 2, 2, 3, 10, 1, 4, 3, 2),
('Aminul', 'Islam', 1, 'aminul.islam@email.com', '+8801362584145', '1992-12-10', '2019-09-20', 55000, 3, 3, 5, 10, 1, 4, 1, 1),
('Tasnim', 'Khan', 2, 'tasnim.khan@email.com', '+880136587415', '1980-05-28', '2022-02-15', 70000, 4, 4, 3, 4, 1, 4, 2, 3),
('Rahim', 'Ali', 1, 'rahim.ali@email.com', '+8801369852147', '1995-11-14', '2021-08-02', 48000, 1, 5, 4, 8, 1, 4, 3, 1),
('Ayesha', 'Hossain', 2, 'ayesha.hossain@email.com', '+880136985214', '1983-06-02', '2017-03-25', 60000, 2, 6, 1, 10, 1, 4, 1, 2),
('Imran', 'Kabir', 1, 'imran.kabir@email.com', '+8801369574121', '1990-09-15', '2016-11-10', 65000, 3, 7, 1, 5, 1, 4, 1, 3),
('Jasmine', 'Khatun', 2, 'jasmine.khatun@email.com', '+880136521445', '1982-04-18', '2020-10-28', 52000, 4, 8, 1, 10, 1, 4, 2, 1),
('Farid', 'Ahmed', 1, 'farid.ahmed@email.com', '+8801952356412', '1987-11-30', '2015-12-15', 75000, 1, 4, 5, 7, 1, 4, 3, 2),
('Nadia', 'Hasan', 2, 'nadia.hasan@email.com', '+880136254222', '1986-08-22', '2019-06-12', 67000, 2, 4, 4, 10, 1, 4, 1, 1)
GO

SELECT * FROM Employees
GO

-- Orders Table
INSERT INTO Orders (CustomerId, FruitsId, OrderDate, Quantity, UnitPrice, Vat, Discount, LocalDeliveryCompanyId)
VALUES
(1, 1, '2022-01-01 08:00:00', 2, 300.00, 0.05, 0.1, 1),
(2, 3, '2022-01-02 10:30:00', 3, 352.00, 0.08, 0.2, 3),
(3, 5, '2022-01-03 12:15:00', 1, 125.00, 0.06, 0.15, 2),
(4, 2, '2022-01-04 15:45:00', 4, 450.00, 0.02, 0.05, 4),
(5, 4, '2022-01-05 08:30:00', 2, 780.00, 0.09, 0.18, 5),
(6, 6, '2022-01-06 11:00:00', 1, 500.00, 0.05, 0.1, 6),
(7, 8, '2022-01-07 14:45:00', 3, 200.00, 0.06, 0.12, 7),
(8, 7, '2022-01-08 09:30:00', 2, 330.00, 0.07, 0.15, 8),
(9, 10, '2022-01-09 12:00:00', 1, 200.00, 0.04, 0.1, 9),
(10, 9, '2022-01-10 13:30:00', 3, 105, 0.03, 0.05, 10)

SELECT * FROM Orders
GO
--=============================== ...Sample table... ===============================--

-- OutletsList Table
INSERT INTO OutletsList (OutletId, OutletName, LocationAddress, ContactNumber, Email, CityId, CountryId) VALUES
(1,'Outlet A', '123 Main Street', '+880132145678', 'outletA@email.com', 1, 10),
(2,'Outlet B', '456 Oak Avenue', '+88011245789', 'outletB@email.com', 1, 10),
(3,'Outlet C', '789 Pine Road', '+880158696325', 'outletC@email.com', 1, 10),
(4,'Outlet D', '101 Elm Lane', '+88014569852', 'outletD@email.com', 1, 10),
(5,'Outlet E', '202 Maple Court', '+880133225566', 'outletE@email.com', 1, 10)
GO

SELECT * FROM OutletsList
GO


/*
==============================  SECTION 02  ==============================
					INSERT DATA THROUGH STORED PROCEDURE
==========================================================================
*/
--STORED PROCEDURE FOR INSERT DATA USING PARAMETER:
EXEC spInsertLocalDeliveryCompany  18,'United Parcel Service (UPS)', 'Banani', '0123456789', 'unitedpa@gmail.com', 'S-31, Noorjahan Road, Banani', 1, 10
EXEC spInsertLocalDeliveryCompany  19,'Karatoa Courier Service (KCS)', 'Dhanmondi', '01622664123', 'Karatoa@gmail.com', '298, Elephant Road, Dhanmondi,', 2, 10
EXEC spInsertLocalDeliveryCompany  20,'Fox Parcel Limited', 'Rampura', '01966687266', 'Fox@gmail.com', '142, Wapda Road, West Rampura', 3, 10
EXEC spInsertLocalDeliveryCompany 21,'SA Paribahan', 'Ramna', '01695574556', 'SA@gmail.com', '(2Nd Floor), Supreme Court Bar Association Building, Ramna', 4, 10
EXEC spInsertLocalDeliveryCompany  22,'Sundarban Courier Service (Pvt.) Ltd.', 'Kawranbazar', '01515874521', 'Sundarban@gmail.com', 'Kawranbazar E1', 5, 10
EXEC spInsertLocalDeliveryCompany  23,'FedEX Bangladesh', ' Paltan', '01414665588', 'FedEX@gmail.com', 'Paltan F1', 6, 10
GO
SELECT * FROM LocalDeliveryCompanyList
GO

--STORED PROCEDURE FOR INSERT WITH OUTPUT PARAMETER:

DECLARE @pId INT
EXEC spInsertLocalDeliveryCompanyOutput 18,'Fox Parcel Limited','Jamalpur','01414665588','Fox@gmail.com','236 E Jackson St',1,10,@pId OUTPUT
SELECT @pId 'New Id'
GO

SELECT * FROM LocalDeliveryCompanyList
GO

--============== STORED PROCEDURE for UPDATE Data ============--
EXEC spUpdateEmployee 1,'Md. Ali', 'Khan', 1, 'md.ali.khan@email.com', '+8801654585666', '1985-03-15', '2020-01-10', 50000, 1, 1, 1, 4, 1, 4, 2, 3
GO
SELECT * FROM Employees

--============== STORED PROCEDURE for DELETE Table data ============--

EXEC sp_DeleteEmployees @EmployeeID=22
GO
SELECT * FROM Employees
GO

--============== TRY CATCH IN A STORED PROCEDURE & RAISERROR WITH ERROR NUMBER AND ERROR MESSAGE ============--

DECLARE @id INT
EXEC spInsertLocalDeliveryCompanyOutput 'MOMEEN HOSSAIN','RONY',25000,@id OUTPUT
PRINT 'New Product inserted with id :'+STR(@id)
GO

--============== INSERT DATA USING SEQUENCE VALUE ============--

INSERT INTO CustomerFeedback VALUES((NEXT VALUE FOR seqNum), NULL)
GO
SELECT * FROM CustomerFeedback
GO


/*
==============================  SECTION 03  ==============================
			UPDATE DELETE DATA THROUGH STORED PROCEDURE
==========================================================================


*/
--============== STORED PROCEDURE for insert data using parameter ============--

EXEC spInsertLocalDeliveryCompanyList 1,'China Express BD','Komolapur','01235789425','Chinadeliveryco1@example.com','123 Street, City',1,10
EXEC spInsertLocalDeliveryCompanyList 2,'Blue Ocean Freight System','Mymensingh','01325896354','Bluedeliveryco1@example.com','1005 N Buchanan St #12',1,10
EXEC spInsertLocalDeliveryCompanyList 3,'Rajpat Shipping Bangladesh','Narsingdi','01345685245','Rajpatdeliveryco1@example.com','2341 W Hill Rd',2,10
EXEC spInsertLocalDeliveryCompanyList 4,'Redx','Khulna','01366998852','EURdeliveryco1@example.com','155 Valhalla Cir',1,10
EXEC spInsertLocalDeliveryCompanyList 5,'EUR Service','Sirajganj','01354789966','deliveryco1@example.com','41 Adin St',4,10
EXEC spInsertLocalDeliveryCompanyList 6,'ower freight logistics','Bogura','01365814586','owerdeliveryco1@example.com','90 Blue Hills Pky',1,10
EXEC spInsertLocalDeliveryCompanyList 7,'Cosmos Logistics','Maijdee','01345863552','Cosmosdeliveryco1@example.com','236 E Jackson St',1,10
EXEC spInsertLocalDeliveryCompanyList 8,'Cargo Distribution Network','Kaliakair','012254665536','Cargodeliveryco1@example.com','1142 W Main St',1,10

/*
==============================  SECTION 04  ==============================
					INSERT UPDATE DELETE DATA THROUGH VIEW
==========================================================================
*/

--============== INSERT DATA through view ============--


SELECT * FROM vEmployees
GO

INSERT INTO vEmployees (EmployeeId, FirstName, LastName, Salary,GenderID,CityID) VALUES(31,'Jamil Hossain','Khan',40000,1,1)

SELECT * FROM vEmployees
GO
--============== UPDATE DATA through view ============--
UPDATE vEmployees
SET FirstName = 'Mamun Khan'
WHERE EmployeeId=22
GO

SELECT * FROM v_Customerinfo
GO


--============== DELETE DATA through view ============--


DELETE FROM vEmployees
WHERE EmployeeId=23
GO
SELECT * FROM vEmployees
GO
/*
==============================  SECTION 05  ==============================
						RETREIVE DATA USING FUNCTION
==========================================================================
*/
-- A Scalar Function

DECLARE @result MONEY
SELECT @result = dbo.fnCalcDiscount(5, 10.00, 0.1, 0.05)

-- A Inline Table Valued Function to get monthly total sales, discount & net sales using two parameter @year & @month

SELECT * FROM dbo.GetHighSalaryEmployees (2023,8)
GO

-- A Multi Statement Table Valued Function to get monthly net sales using two parameter @year & @month
SELECT * FROM dbo.fnMonthlyFruitsSales(2022, 6)
GO
/*
==============================  SECTION 06  ==============================
							   TEST TRIGGER
==========================================================================
*/
--============== FOR/AFTER TRIGGER ON TABLE ============--
-- INSERT DATA IN Stockin TABLE and AUTOMATICALLY UPDATE STOCK IN Prodcut TABLE



INSERT INTO FruitsStockIn(FruitsId, stockId) VALUES (3, 2)
GO

SELECT * FROM trgUpdateFruitsStock
SELECT * FROM trFruitsInsert
GO

--============== AN INSTEAD OF TRIGGER ON VIEW ============--





--============== UPDATE DATA THROUGH STORED PROCEDURE ============--

-- STORED PROCEDURE for update trainee (closing date & closing remarks)
/*
==============================  SECTION 07  ==============================
								  QUERY
==========================================================================
*/


--============== 7.01 A SELECT STATEMENT TO GET RESULT SET FROM A TABLE ============--

SELECT * FROM Employees
GO

--============== 7.02 A SELECT STATEMENT  information FROM A VIEW ============--

SELECT * FROM vEmployees
GO


--============== 7.03 SELECT INTO > SAVE RESULT SET TO A NEW TEMPORARY TABLE ============--

SELECT * INTO #tmpFruits
FROM fruits
GO

SELECT * FROM #tmpFruits
GO
--============== 7.10 COMPARISON, LOGICAL(AND OR NOT) & BETWEEN OPERATOR ============--

SELECT * FROM Employees
WHERE maritalStatusId = 1
AND DateOfBirth BETWEEN '1996-01-01' AND '1997-12-10'
AND NOT cityId = 2
OR cityId = 2
GO
--============== 7.11 LIKE, IN, NOT IN, OPERATOR & IS NULL CLAUSE ============--

SELECT * FROM LocalDeliveryCompanyList
WHERE CompanyName LIKE '%n'
AND Branch NOT IN ('1', '2');

--============== 7.12 OFFSET FETCH ============--

-- OFFSET 5 ROWS
SELECT * FROM fruits
ORDER BY FruitsId
OFFSET 5 ROWS
GO


-- OFFSET 10 ROWS AND GET NEXT 5 ROWS

SELECT * FROM fruits
ORDER BY FruitsId
OFFSET 10 ROWS
FETCH NEXT 5 ROWS ONLY
GO

--============== 7.13 UNION ============--

SELECT * FROM Employees
WHERE cityId IN ('1', '2', '3')

UNION

SELECT * FROM Customers
WHERE cityId IN ('4', '5', '6')
GO
--============== 7.14 EXCEPT INTERSECT ============--

-- EXCEPT
SELECT * FROM Employees

EXCEPT

SELECT * FROM Employees
WHERE genderId = 2
GO

--INTERSECT

SELECT * FROM Employees
WHERE EmployeeID > 10

INTERSECT

SELECT * FROM Customers
WHERE CustomerId > 15
GO

--============== 7.15 AGGREGATE FUNCTION ============--

SELECT	COUNT(*) 'Total Sales Count',
		SUM(Quantity) 'Total Quantity'
FROM Orders
GO

--============== 7.15 AGGREGATE FUNCTION ============--
SELECT	COUNT(*) 'Total Sales Count',
		SUM(TotalBill) 'Total Net Sale',
		AVG(TotalBill) 'Average Sale',
		MIN(TotalBill) 'MIN COURSE FEE',
		(MAX(discount))*100 'MAX Discount %'
FROM Orders
GO
--============== 7.16 AGGREGATE FUNCTION WITH GROUP BY & HAVING CLAUSE ============--


SELECT		OrderId,
			SUM(TotalBill) AS TotalOrderAmount,
			AVG(TotalBill) AS TotalOrderAmount
FROM Orders
GROUP BY OrderId
HAVING SUM(TotalBill)>5000

--============== 7.17 ROLLUP & CUBE OPERATOR ============--

---ROLLUP:
SELECT
    GenderId,
    EmployeePositionId,
    CityId,
    CountryId,
    NationalityId,
    EducationLevelId,
    MaritalStatusId,
    ReligionId,
    SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY
    ROLLUP (GenderId, EmployeePositionId, CityId, CountryId, NationalityId, EducationLevelId, MaritalStatusId, ReligionId)
GO

---CUBE OPERATOR:
SELECT
    GenderId,
    EmployeePositionId,
    CityId,
    CountryId,
    NationalityId,
    EducationLevelId,
    MaritalStatusId,
    ReligionId,
    SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY
    CUBE (GenderId, EmployeePositionId, CityId, CountryId, NationalityId, EducationLevelId, MaritalStatusId, ReligionId)
GO


--============== 7.18 GROUPING SETS ============--

SELECT CustomerId, FruitsId, OrderDate, Quantity, Vat, Discount,
		SUM(TotalBill) AS TotalBill
FROM Orders
GROUP BY GROUPING SETS (CustomerId, FruitsId, OrderDate, Quantity, Vat, Discount)

GO
--============== 7.19 SUB-QUERIES============--

--A subquery:
SELECT
    S.SupplierId,
    S.SupplierName,
    S.ContactNumber,
    S.DateOfBirth,
    S.Email,
    S.CityId,
    S.CountryId,
    S.OccupationId,
    S.NationalityId,
    O.OccupationName
FROM
    Suppliers S
JOIN
    Occupation O ON S.OccupationId = O.OccupationId
WHERE
    S.OccupationId IN (
        SELECT
            OccupationId
        FROM
            Occupation
        WHERE
            OccupationName = 'STUDENT')
GO

--A correlated subquery:
SELECT SupplierId, SupplierName, ContactNumber,DateOfBirth,Email,CityId,CountryId,OccupationId, NationalityId,
    (
        SELECT TOP 1
            OccupationName
        FROM
            Occupation
        WHERE
            Occupation.OccupationId = Suppliers.OccupationId
    ) AS OccupationName
FROM
    Suppliers
GO


--============== 7.20 EXISTS ============--

-- EXISTS operator:
SELECT
    SupplierId,
    SupplierName,
    ContactNumber,
    DateOfBirth,
    Email,
    CityId,
    CountryId,
    OccupationId,
    NationalityId
FROM
    Suppliers S
WHERE
    EXISTS (SELECT 1 FROM Orders OT WHERE OT.OrderId = S.SupplierId)
	GO


--============== 7.21 CTE ============--

-- calculate stock difference
WITH StockDifference AS (
    SELECT
        COALESCE(Shop.FruitsId, House.FruitsId) AS FruitsId,
        COALESCE(Shop.Quantity, 0) AS ShopQuantity,
        COALESCE(House.Quantity, 0) AS HouseQuantity,
        COALESCE(Shop.Quantity, 0) - COALESCE(House.Quantity, 0) AS Difference
    FROM
        ShopStock Shop
    FULL OUTER JOIN
        FruitsStockHouse House ON Shop.FruitsId = House.FruitsId
)
GO
SELECT * FROM StockDifference
GO

--============== 7.22 MERGE ============--
-- MERGE stock
MERGE INTO FruitsStockHouse AS Target
USING ShopStock AS Source
ON Target.FruitsId = Source.FruitsId

WHEN MATCHED THEN
    UPDATE SET Target.Quantity = Source.Quantity

WHEN NOT MATCHED BY TARGET THEN
    INSERT (FruitsId, Quantity)
    VALUES (Source.FruitsId, Source.Quantity)
GO
SELECT * FROM FruitsStockHouse
GO
--============== 7.23 BUILT IN FUNCTION ============--

-- Get current date and time
SELECT GETDATE()
GO

-- GET STRING LENGTH
SELECT employeeId, LEN(FirstName) 'Name Length' FROM Employees
GO

-- CONVERT DATA USING CAST()
SELECT CAST(1500 AS decimal(17,2)) AS DecimalNumber
GO

-- CONVERT DATA USING CONVERT()
DECLARE @currTime DATETIME = GETDATE()
SELECT CONVERT(VARCHAR, @currTime, 108) AS ConvertToTime
GO

-- CONVERT DATA USING TRY_CONVERT()
SELECT TRY_CONVERT(FLOAT, 'HELLO', 1) AS ReturnNull
GO

-- GET DIFFERENCE OF DATES
SELECT DATEDIFF(DAY, '2021-01-01', '2022-01-01') AS DAYinYear
GO

-- GET A MONTH NAME
SELECT DATENAME(MONTH, GETDATE()) AS 'Month'
GO

--============== 7.24 CASE ============--
SELECT
    EmployeeId,
    FirstName,
    LastName,
    GenderId,
    Email,
    PhoneNumber,
    DateOfBirth,
    JoiningDate,
    Salary,
    BloodGroupId,
    EmployeePositionId,
    CityId,
    CountryId,
    NationalityId,
    EducationLevelId,
    MaritalStatusId,
    ReligionId,
    CASE
        WHEN Salary >= 50000 THEN 'High Salary'
        WHEN Salary >= 30000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS SalaryCategory
FROM
    Employees
GO

--============== 7.25 IIF ============--
SELECT EmployeeId, FirstName, LastName,Salary,
    IIF(Salary >= 50000, 'High Salary', 'Low Salary') AS SalaryCategory
FROM
    Employees
GO

--============== 7.26 COALESCE & ISNULL ============--
--ISNULL:
SELECT
    EmployeeId,
    FirstName,
    ISNULL(LastName, 'N/A') AS LastName,
    ISNULL(Email, 'Not Available') AS Email
FROM
    Employees
GO
---COALESCE:
SELECT
    EmployeeId,
    FirstName,
    LastName,
    COALESCE(Email, 'No Email') AS Email
FROM
    Employees;

--============== 7.27 WHILE ============--

	GO
		DECLARE @counter INT
	SET @counter = 0

	WHILE @counter < 20

	BEGIN
	  SET @counter = @counter + 1
	  INSERT INTO EmployeePosition (EmployeePositionId, EmployeePositionName) VALUES((NEXT VALUE FOR [dbo].seqNum), NULL)
	END

	SELECT * FROM EmployeePosition
GO

--============== 7.28 GROPING FUNCTION ============--
SELECT
    C.CustomerId,
    C.FirstName,
    C.LastName,
    G.GenderName,
    C.Email,
    C.DateOfBirth,
    CT.CityName,
    CO.CountryName,
    N.NationalityName,
    O.OccupationName,
    R.ReligionName
FROM
    Customers C
JOIN
    Gender G ON C.GenderId = G.GenderId
JOIN
    City CT ON C.CityId = CT.CityId
JOIN
    Country CO ON C.CountryId = CO.CountryId
JOIN
    Nationality N ON C.NationalityId = N.NationalityId
JOIN
    Occupation O ON C.OccupationId = O.OccupationId
JOIN
    MaritalStatus M ON C.MaritalStatusId = M.MaritalStatusId
JOIN
    Religion R ON C.ReligionId = R.ReligionId
GROUP BY
    ROLLUP (
        C.CustomerId,
        C.FirstName,
        C.LastName,
        G.GenderName,
        C.Email,
        C.DateOfBirth,
        CT.CityName,
        CO.CountryName,
        N.NationalityName,
        O.OccupationName,
        R.ReligionName
    )
GO


--============== 7.29 RANKING FUNCTION ============--
SELECT 
RANK() OVER(ORDER BY EmployeeId) AS 'Rank',
DENSE_RANK() OVER(ORDER BY EmployeePositionId) AS 'Dense_Rank',
NTILE(3) OVER(ORDER BY GenderId) AS 'NTILE',
EmployeeId,
EmployeePositionId, 
GenderId
FROM Employees
GO

--============== 7.30 IF ELSE & PRINT ============--
-- Example stored procedure using IF, ELSE, and PRINT
CREATE PROCEDURE spCheckMaritalStatus
										@CustomerId INT
AS
BEGIN
		 DECLARE @MaritalStatusId INT
			SELECT @MaritalStatusId = MaritalStatusId
		FROM Customers
		WHERE CustomerId = @CustomerId

    IF @MaritalStatusId = 1

		BEGIN
			PRINT 'Customer is Single'
		END
    ELSE IF @MaritalStatusId = 2
		BEGIN
			PRINT 'Customer is Married'
		 END
    ELSE
		BEGIN
			PRINT 'Marital Status not specified'
    END
END
GO

--============== 7.31 TRY CATCH ============--

CREATE PROCEDURE spInsertCustomer
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @GenderId INT,
    @Email VARCHAR(100),
    @PhoneNumber VARCHAR(20),
    @DateOfBirth DATE,
    @CityId INT,
    @CountryId INT,
    @NationalityId INT,
    @OccupationId INT,
    @MaritalStatusId INT,
    @ReligionId INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Customers (FirstName, LastName, GenderId, Email, PhoneNumber, DateOfBirth, CityId, CountryId, NationalityId, OccupationId, MaritalStatusId, ReligionId)
        VALUES (@FirstName, @LastName, @GenderId, @Email, @PhoneNumber, @DateOfBirth, @CityId, @CountryId, @NationalityId, @OccupationId, @MaritalStatusId, @ReligionId);

        PRINT 'Customer inserted successfully';
    END TRY
    BEGIN CATCH

        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

        PRINT 'Error Message: ' + @ErrorMessage;
        PRINT 'Error Severity: ' + CAST(@ErrorSeverity AS NVARCHAR);
        PRINT 'Error State: ' + CAST(@ErrorState AS NVARCHAR);


        THROW;
    END CATCH
END
GO

--============== 7.32 GOTO ============--
-- Example stored procedure using TRY, CATCH, and THROW for error handling
CREATE PROCEDURE spInsertCustomer
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @GenderId INT,
    @Email VARCHAR(100),
    @PhoneNumber VARCHAR(20),
    @DateOfBirth DATE,
    @CityId INT,
    @CountryId INT,
    @NationalityId INT,
    @OccupationId INT,
    @MaritalStatusId INT,
    @ReligionId INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Customers (FirstName, LastName, GenderId, Email, PhoneNumber, DateOfBirth, CityId, CountryId, NationalityId, OccupationId, MaritalStatusId, ReligionId)
        VALUES (@FirstName, @LastName, @GenderId, @Email, @PhoneNumber, @DateOfBirth, @CityId, @CountryId, @NationalityId, @OccupationId, @MaritalStatusId, @ReligionId);

        PRINT 'Customer inserted successfully';
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

        PRINT 'Error Message: ' + @ErrorMessage;
        PRINT 'Error Severity: ' + CAST(@ErrorSeverity AS NVARCHAR);
        PRINT 'Error State: ' + CAST(@ErrorState AS NVARCHAR);

        THROW 50000, @ErrorMessage, 1
    END CATCH
END
GO

--============== 7.33 WAITFOR ============--

PRINT 'HELLO FRIUTS BUSINESS SYSTEM'
WAITFOR DELAY '00:00:03'
PRINT 'GOOD LUCK'
GO

--============== 7.34 SYSTEM STORED PROCEDURE(sp_helptext) TO GET UNENCRYPTED STORED PROCEDURE SCRIPT  ============--

EXEC sp_helptext spUpdateEmployee
GO

--============== 7.35 TRANSACTION WITH SAVE POINT  ============--

-- Create a sample table:
CREATE TABLE #ExampleTable (
    ID INT PRIMARY KEY,
    Data VARCHAR(50)
);

-- Begin a transaction:
BEGIN TRANSACTION;

-- Insert data into the table:
INSERT INTO #ExampleTable (ID, Data) VALUES (1, 'Data 1');

-- Create a savepoint:
SAVE TRANSACTION SavePoint1;

BEGIN TRY
-- Attempt to insert more data:
    INSERT INTO #ExampleTable (ID, Data) VALUES (2, 'Data 2');
    
-- Commit the transaction:
    COMMIT;
    PRINT 'Transaction committed successfully.';
END TRY
BEGIN CATCH
-- Rollback to the savepoint in case of an error:
    ROLLBACK TRANSACTION SavePoint1;
    PRINT 'Transaction rolled back to SavePoint1 due to an error.';
-- You can log or handle the error here
END CATCH;

-- Check the contents of the table
SELECT * FROM #ExampleTable;

-- Clean up
DROP TABLE #ExampleTable;


-----------------------------------END---------------------------------------------