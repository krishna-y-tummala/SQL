/********************************************ENCRYPTION******************************/
USE DMDDP4

GO

-- Create database Key
CREATE MASTER KEY 
ENCRYPTION BY PASSWORD = 'DMDDP4Encrypt';

--verify that master key has been created
SELECT name KeyName, 
symmetric_key_id KeyID,
key_length KeyLength,
algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;

-------------------------------------END OF STEP 1--------------------------

-- Create self signed certificate
USE DMDDP4;
GO
CREATE CERTIFICATE CreditCardNumber
WITH SUBJECT = 'EncryptCreditCardData';
GO

------------------------------------END OF STEP 2----------------------------

-- Create symmetric Key
CREATE SYMMETRIC KEY CustCC_SM 
 WITH ALGORITHM = AES_256 
 ENCRYPTION BY CERTIFICATE CreditCardNumber;



------------------------------------END OF STEP 3----------------------------

 --ADD new column for encrypted data
 ALTER TABLE creditcard
 ADD encryptedCreditCardNo varbinary(MAX)

 
------------------------------------END OF STEP 4-----------------------------

-- Opens the symmetric key for use
OPEN SYMMETRIC KEY CustCC_SM
DECRYPTION BY CERTIFICATE CreditCardNumber;


-- Populating encrypted credit card no into new column
UPDATE dbo.creditcard 
SET encryptedCreditCardNo = EncryptByKey (Key_GUID('CustCC_SM'), creditCardNo)
FROM dbo.creditcard;
GO


------------------------------------END OF STEP 5----------------------------

-- Closing the symmetric key
CLOSE SYMMETRIC KEY CustCC_SM;
GO

---DROPPING CreditCardNo----
ALTER TABLE creditCard
DROP COLUMN creditCardNo;
GO

----CHECK THE NEW ENCRYPTED DATA-------
SELECT * FROM creditCard


------------------------------------END OF STEP 6----------------------------

---Decryting Credit Card No-
OPEN SYMMETRIC KEY CustCC_SM
DECRYPTION BY CERTIFICATE CreditCardNumber;
SELECT creditCardNoID, customerID, SetAsPrimary, creditCardType, cardExpiry, encryptedCreditCardNo AS 'Encrypted CC', CONVERT(varchar(50), DecryptByKey(encryptedCreditCardNo)) AS 'Decrypted CC'
FROM creditcard



------------------------------------END OF ENCRYPTION-----------------------------------------


/********************************** USER DEFINED FUNCTIONS *****************************************************/

USE DMDDP4
GO

------ GETS CustomerID as input parameter and returns CUSTOMER FULL NAME-----------------------

CREATE FUNCTION CustomerFullName (@customerID int) RETURNS varchar(50)
AS
BEGIN
DECLARE @FullName varchar(50)
SELECT @FullName = c.customerFirstName + ' ' + c.customerLastName 
FROM customer c
WHERE customerID = @customerID
RETURN @FullName
END

---------------------END OF UDF 1----------------------


------ GETS SupplierID as input parameter and returns SUPPLIER FULL NAME-----------------------

CREATE FUNCTION SupplierFullName (@supplierID int) RETURNS varchar(50)
AS
BEGIN
DECLARE @FullName varchar(50)
SELECT @FullName = s.supplierFirstName + ' ' + s.supplierLastName
FROM supplier s
WHERE supplierID = @supplierID
RETURN @FullName
END

SELECT dbo.SupplierFullName (s.supplierID) AS supplierFullName
FROM supplier s

---------------------END OF UDF 2----------------------


-------------Gets ORDER TOTAL with OrderID as input----------

CREATE FUNCTION GetOrderTotal (@orderID int)
RETURNS Float
AS 
BEGIN
DECLARE @OrderTotal float
SELECT @OrderTotal = SUM ((o.orderQuantity) * (p.productPrice)) 
FROM orderDetails o JOIN product p
ON orderID = @orderID AND o.productID = p.productID
RETURN @OrderTotal
END

---------------------END OF UDF 3----------------------



/********************************** STORED PROCEDURES *****************************************************/

USE DMDDP4
GO

------ GETS CustomerID as parameter and displays CUSTOMER INFORMATION and FEEDBACK ON ORDER ID BASED ON THE @customer_ID input parameter.-----------------------

CREATE PROCEDURE GetCustomerFeedbackWith @customer_ID INT 
AS
BEGIN
SELECT customer.customerID, dbo.CustomerFullName (customer.customerID) AS CustomerFullName, customerPhoneNo, customerEmail, orderID, productRating, shippingRating, experienceRating 
FROM customer JOIN customerFeedback
ON [customerFeedback].[customerID] = @customer_ID
AND [customer].[customerID]= @customer_ID;
END

----------------------------END OF SP1------------------------


----- GETS CustomerID as parameter and displays CUSTOMER INFORMATION and ADDRESS BASED ON THE @customer_ID input parameter.-----------------------

CREATE PROCEDURE GetCustomerInformation @customer_ID INT 
AS
BEGIN
Select customer.customerID, dbo.CustomerFullName (customer.customerID) AS CustomerFullName, customerPhoneNO, customerEmail, street, city, postalCode
FROM Customer JOIN customerAddress
ON [Customer].[customerID] = @customer_ID and [customerAddress].[customerID] = @customer_ID;
END


----------------------------END OF SP2------------------------


------ GETS orderID as parameter and displays PAYMENT STATUS INFORMATION BASED ON THE @order_ID input parameter.-----------------------

CREATE PROCEDURE GetPaymentStatusWith @order_ID INT 
AS
BEGIN
SELECT paymentStatus, paymentMethod, paymentDate, paymentTime, paymentError,p.creditCardNoID, c.encryptedCreditCardNo, orderTime, fulfillmentStatus
FROM orderDetails, payment p, [order], creditcard c
WHERE [orderDetails].[orderID] = @order_ID and p.[orderID] = @order_ID and [order].orderID = @order_ID and p.creditCardNoID = c.creditCardNoID
END


----------------------------END OF SP3------------------------


------ GETS productID and new product_Price as parameters and UPDATES PRODUCT PRICE.-----------------------

CREATE PROCEDURE updateProductPrice @product_ID INT, @new_product_Price VARCHAR(10) 
AS
BEGIN
DECLARE @currProductPrice VARCHAR(10);
SET @currProductPrice = (SELECT productPrice from product where productID = @product_ID);
Update product SET productPrice = @new_product_Price where productID = @product_ID;
SELECT productName, p.productID, productPrice AS NewProductPrice, productDescription, unitsInStock, unitsInORder FROM product p JOIN
productStock ON [productStock].[productID] = @product_ID and p.[productID] = @product_ID;
END


----------------------------END OF SP4------------------------


------ GETS Exp_Rating as parameter and displays the CustomerID and the OrderID based on that Experience Rating. -----------------------

CREATE PROCEDURE GetCustomerIDandOrderIDWithExperienceRating @Exp_Rating decimal(2,1) 
AS
BEGIN
SELECT customerID, orderID, ExperienceRating FROM customerFeedback
WHERE [customerFeedback].[ExperienceRating] = @Exp_Rating;
END


----------------------------END OF SP5------------------------


/*************************************** TRIGGER ****************************************************/

-----THIS TRIGGER IS CALLED WHEN PRODUCT PRICE IS UPDATED. CHECK IF THE PRODUCT PRICE IS NOT LESS THAN 0 AND NOT GREATER THAT SPECIFIED LIMIT. --------------------------

CREATE TRIGGER CheckProductPriceChanges
ON product
AFTER UPDATE
AS
    DECLARE @productPrice INT
    SET @productPrice=(select productPrice from inserted) 
    IF( @productPrice < 0)
    	BEGIN
      		UPDATE product SET productPrice = 0
    	END  
    IF(@productPrice > 10000)
    	BEGIN
        	UPDATE product SET productPrice=10000 
    	END
	 
------------------------------END OF TRIGGER--------------------------------


/**************************************** VIEWS **************************************/

-----THIS VIEW DISPLAYS ALL CUSTOMER INFORMATION WITH THEIR CREDIT CARD INFORMATION. --------------------------

CREATE VIEW CustomersAndTheirCreditCards 
AS
Select dbo.CustomerFullName (customer.customerID) AS CustomerFullName, customerPhoneNo, customerEmail, C.encryptedcreditCardNo, creditCardType, setAsPrimary, cardExpiry
FROM Customer JOIN creditCard C
ON [Customer].[customerID] = C.[customerID];


----------------------END OF VIEW 1--------------------------

-----THIS VIEW DISPLAYS ALL SUPPLIER INFORMATION WITH THEIR ADDRESSES. --------------------------

CREATE VIEW ShowSupplierInfoAndTheirAddress 
AS
SELECT s.supplierID, dbo.SupplierFullName (s.supplierID) AS SupplierName, supplierPhoneNo, supplierEmail, supplierUrl, street, city, postalCode
FROM supplier s JOIN supplierAddress
ON s.[supplierID] = [supplierAddress].[supplierID];


----------------------END OF VIEW 2--------------------------


-----THIS VIEW DISPLAYS ALL PRODUCT INFORMATION. --------------------------

CREATE VIEW ViewProductInfoWithUnits 
AS
SELECT p.productID, productName, categoryID, productPrice, productSize, discount, productWeight, productPicture, productDescription, unitsInStock, unitsInOrder
FROM product p JOIN productStock
ON p.[productID] = [productStock].[productID];



----------------------END OF VIEW 3--------------------------




