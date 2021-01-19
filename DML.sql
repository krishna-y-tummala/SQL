USE DMDDP4

GO
-- DATA for category


INSERT INTO category (categoryID, categoryName, categoryDescription, categoryPicture) 
VALUES (1,'T-Shirts','T-Shirts great for casual wear, work, parties', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\T-shirt.jpg', SINGLE_BLOB)image));
INSERT INTO category (categoryID, categoryName, categoryDescription, categoryPicture) 
VALUES(2,'Shirts','Shirts great for casual wear, work, parties', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\Shirt.jpg', SINGLE_BLOB)image));
INSERT INTO category (categoryID, categoryName, categoryDescription, categoryPicture) 
VALUES(3,'Sweaters','Winter Sweaters', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\Sweater.jpg', SINGLE_BLOB)image));
INSERT INTO category (categoryID, categoryName, categoryDescription, categoryPicture)
VALUES(4,'SweatShirts','Casual style Sweatshirts, Winter Sweatshirts', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\Sweat shirt.jpg', SINGLE_BLOB)image));
INSERT INTO category (categoryID, categoryName, categoryDescription, categoryPicture) 
VALUES(5,'Jackets','Jackets great for casual wear, work, parties, winter', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\Jacket.jpg', SINGLE_BLOB)image));
INSERT INTO category (categoryID, categoryName, categoryDescription, categoryPicture) 
VALUES(6,'Casual Trousers','Casual trousers great for casual wear, work, parties', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\Trousers.jpg', SINGLE_BLOB)image));
INSERT INTO category (categoryID, categoryName, categoryDescription, categoryPicture) 
VALUES(7,'Shorts','Shorts great for casual wear, parties', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\Shorts.jpg', SINGLE_BLOB)image));
INSERT INTO category (categoryID, categoryName, categoryDescription, categoryPicture) 
VALUES(8,'Joggers','Joggers great for casual wear, work-out, gym', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\Joggers.jpg', SINGLE_BLOB)image));
INSERT INTO category (categoryID, categoryName, categoryDescription, categoryPicture) 
VALUES(9,'Dresses','Dresses great for casual wear, work, parties', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\Dresses.jpg', SINGLE_BLOB)image));
INSERT INTO category (categoryID, categoryName, categoryDescription, categoryPicture) 
VALUES(10,'Jumpsuits','Jumpsuits great for casual wear, work, parties', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\Jumpsuits.jpg', SINGLE_BLOB)image));
INSERT INTO category (categoryID, categoryName, categoryDescription, categoryPicture) 
VALUES(11,'Skirts','Skirts great for casual wear, work, parties', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\Skirts.jpg', SINGLE_BLOB)image));
INSERT INTO category (categoryID, categoryName, categoryDescription, categoryPicture) 
VALUES(12,'Shrugs','Shrugs great for casual wear, work, parties', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\Shrugs.jpg', SINGLE_BLOB)image));
INSERT INTO category (categoryID, categoryName, categoryDescription, categoryPicture) 
VALUES(13,'Tops','Tops great for casual wear, work, parties', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\Tops.jpg', SINGLE_BLOB)image));
INSERT INTO category (categoryID, categoryName, categoryDescription, categoryPicture) 
VALUES (14,'Blazers','Blazers great for casual wear, work, parties', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\Blazers.jpg', SINGLE_BLOB)image));


-- DATA for Customer


INSERT INTO Customer (customerID, CustomerFirstName, CustomerLastName, CustomerPhoneNo, CustomerEmail) 
VALUES (1,'Cecelia','Chapman','8493221093','cecelia@gmail.com');
INSERT INTO Customer (customerID, CustomerFirstName, CustomerLastName, CustomerPhoneNo, CustomerEmail) 
VALUES (2,'Iris','Watson','3725872335','iris@gmail.com');
INSERT INTO Customer (customerID, CustomerFirstName, CustomerLastName, CustomerPhoneNo, CustomerEmail) 
VALUES(3,'Celeste','Slater','7867138616','celeste@gmail.com');
INSERT INTO Customer (customerID, CustomerFirstName, CustomerLastName, CustomerPhoneNo, CustomerEmail) 
VALUES(4,'Theodore','Lowe','7867138616','Theodore@gmail.com');
INSERT INTO Customer (customerID, CustomerFirstName, CustomerLastName, CustomerPhoneNo, CustomerEmail) 
VALUES(5,'Kyla','Olsen','6543935734','kyla@gmail.com');
INSERT INTO Customer (customerID, CustomerFirstName, CustomerLastName, CustomerPhoneNo, CustomerEmail) 
VALUES(6,'Hiroko','Potter','3142446306','hiroko@gmail.com');
INSERT INTO Customer (customerID, CustomerFirstName, CustomerLastName, CustomerPhoneNo, CustomerEmail) 
VALUES(7,'Nyssa','Vazquez','9472785929','nyssa@gmail.com');
INSERT INTO Customer (customerID, CustomerFirstName, CustomerLastName, CustomerPhoneNo, CustomerEmail) 
VALUES(8,'Lawrence','Moreno','6845791879','lawrence@gmail.com');
INSERT INTO Customer (customerID, CustomerFirstName, CustomerLastName, CustomerPhoneNo, CustomerEmail) 
VALUES(9,'Ian','Somerhalder','3142444006','Ian@gmail.com');
INSERT INTO Customer (customerID, CustomerFirstName, CustomerLastName, CustomerPhoneNo, CustomerEmail) 
VALUES(10,'Aaron','Hawkins','6606634518','aaron@gmail.com');
INSERT INTO Customer (customerID, CustomerFirstName, CustomerLastName, CustomerPhoneNo, CustomerEmail) 
VALUES(11,'Hedy','Greene','6082652215','hedy@gmail.com');
INSERT INTO Customer (customerID, CustomerFirstName, CustomerLastName, CustomerPhoneNo, CustomerEmail) 
VALUES(12,'Melvin','Porter','9591198364','melvin@gmail.com');
INSERT INTO Customer (customerID, CustomerFirstName, CustomerLastName, CustomerPhoneNo, CustomerEmail) 
VALUES(13,'Keefe','Sellers','4683532641','keefe@gmail.com');
INSERT INTO Customer (customerID, CustomerFirstName, CustomerLastName, CustomerPhoneNo, CustomerEmail) 
VALUES(14,'Joan','Romero','2486754007','joan@gmail.com');


-- DATA for creditCard


INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES ('1234567891234567', 1,'yes','VISA','11/21');
INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES('2222405343248877', 2,'yes','VISA','01/23');
INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES('2222990905257051', 3,'yes','VISA','01/23');
INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES('2223007648726984', 4,'no','MASTERCARD','03/25');
INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES('2223577120017656', 5,'yes','APPEX','09/25');
INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES('378282246310005', 1,'no','MASTERCARD','11/25');
INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES('5105105105105100', 6,'yes','VISA','09/25');
INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES('5111010030175156', 7,'no','MASTERCARD','08/23');
INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES('5185540810000019', 8,'yes','APPEX','02/24');
INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES('5200828282828210', 9,'no','APPEX','04/27');
INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES('5204230080000017', 10,'no','MASTERCARD','04/27');
INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES('5204740009900014', 11,'yes','VISA','05/25');
INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES('5420923878724339', 12,'no','VISA','06/23');
INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES('5455330760000018', 13,'no','MASTERCARD','07/22');
INSERT INTO creditCard (creditCardNo, customerID, setAsPrimary, creditCardType, cardExpiry) 
VALUES('5506900490000436', 14,'no','APPEX','02/25');


-- DATA for customerAddress


INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (1, 1,'Marlboro street','Mankato','96522','yes');
INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (2, 1,'Amet street','RockyMount WA','48580','no');
INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (3, 2,'Arcu street','Tinsville','19587','yes');
INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (4, 3,'Seasame street','SantaBarbara','88017','yes');
INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (5, 4,'Maple street','Wilmington','05182','yes');
INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (6, 5,'Cedar street','Watertown','07367','no');
INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (7, 6,'Elm street','SantaBarbara','88317','yes');
INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (8, 7,'Lake street','Kingsport','56618','no');
INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (9, 8,'Pine street','SouthPort','80317','yes');
INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (10, 9,'Seventh street','Dakota','79637','yes');
INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (11, 10,'Main street','Louisiana','67973','yes');
INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (12, 11,'OAK street','SantaBarbara','88317','yes');
INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (13, 12,'Park street','Austin','50710','yes');
INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (14, 13,'View street','Wyoming','88117','yes');
INSERT INTO customerAddress (customerAddressID, customerID, street, city, postalCode, useAsBillingAddress) VALUES (15, 14,'Third street','Woburn','84317','yes');


-- DATA for Order


INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (1, 1,'01/17/2020','$140','20:30:12');
INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (2, 1,'02/18/2020','$140','20:30:12');
INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (3, 2,'02/11/2020','$80','10:30:06');
INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (4, 3,'01/01/2020','$126','09:30:04');
INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (5, 4,'01/17/2020','$78','12:30:08');
INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (6, 5,'01/21/2020','$39','21:30:11');
INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (7, 6,'05/01/2020','$80','13:00:12');
INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (8, 7,'02/26/2020','$103','15:00:12');
INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (9, 8,'03/10/2020','$120','16:13:00');
INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (10, 9,'01/06/2020','$35','20:30:12');
INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (11, 10,'01/04/2020','$140','17:15:36');
INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (12, 11,'04/29/2020','$140','18:18:40');
INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (13, 12,'10/28/2020','$60','23:30:02');
INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (14, 13,'07/29/2020','$180','11:45:12');
INSERT INTO [Order] (orderID, customerID, orderDate, orderTotal, orderTime) VALUES (15, 14,'05/02/2020','$90','10:00:12');


-- DATA for shipment


INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod) 
VALUES (1, 1, 1,'01/18/2020','USPS priority shipping');
INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod)
VALUES (2, 2, 1,'02/18/2020','USPS priority shipping');
INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod) 
VALUES (3, 3, 3,'02/20/2020','UPS Ground');
INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod) 
VALUES (4, 4, 4,'02/01/2020','USPS First Class Package');
INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod) 
VALUES (5, 5, 5,'03/02/2020','UPS Ground');
INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod) 
VALUES (6, 6, 6,'01/23/2020','UPS 3-Day Select');
INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod) 
VALUES (7, 7, 7,'07/01/2020','UPS NEXT DAY Air');
INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod) 
VALUES (8, 8, 8,'05/03/2020','FedEX Ground');
INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod) 
VALUES (9, 9, 9,'11/10/2020','UPS 2-Day Air');
INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod) 
VALUES (10, 10, 10,'08/06/2020','FedEx First Class Package');
INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod) 
VALUES (11, 11, 11,'06/04/2020','FedEx Next Day Air');
INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod) 
VALUES (12, 12, 12,'04/05/2020','FedEx Ground');
INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod) 
VALUES (13, 13, 13,'05/11/2020','USPS Ground');
INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod) 
VALUES (14, 14, 14,'09/08/2020','USPS Ground');
INSERT INTO shipment (shipmentID, orderID, customerAddressID, shippingDAte, shippingMethod) 
VALUES (15, 15, 15,'02/22/2020','USPS Ground');


-- DATA for customerFeedback


INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (1, 1, 1, 3.5, 4.5, 4.0);
INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (2, 2, 1, 4.5, 4.5, 4.5);
INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (3, 3, 2, 2.8, 3.5, 3.0);
INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (4, 4, 3, 4.5, 5.0, 5.0);
INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (5, 5, 4, 3.4, 4.0, 4.0);
INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (6, 6, 5, 4.0, 4.0, 4.0);
INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (7, 7, 6, 5.0, 4.5, 5.0);
INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (8, 8, 7, 5.0, 5.0, 5.0);
INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (9, 9, 8, 3.5, 3.5, 3.5);
INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (10, 10, 9, 4.5, 3.0, 4.5);
INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (11, 11, 10, 5.0, 5.0, 5.0);
INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (12, 12, 11, 4.5, 3.6, 4.0);
INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (13, 13, 12, 4.8, 3.5, 5.0);
INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (14, 14, 13, 3.0, 3.0, 4.0);
INSERT INTO customerFeedback (feedbackID, orderID, customerID, productRating, shippingRating, experienceRating) VALUES (15, 15, 14, 4.0, 4.0, 4.0);


-- DATA for product


INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (1,'Mustard T-Shirt', 1, 35,'yellow','Small','10%','120gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\MustardT.jpg', SINGLE_BLOB)image),'88% Polyster, 12% Spandex, Machine Wash');
INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (2,'Mustard T-Shirt', 1, 40,'yellow','Large','10%','130gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\MustardT.jpg', SINGLE_BLOB)image),'88% polyester,12% spandex,machine wash.');
INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (3,'Roadster Shirts', 2, 103,'blue','Medium','10%','130gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\RoadsterShirt.jpg', SINGLE_BLOB)image),'88% polyester,12% spandex,machine wash.');
INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (4,'Forever Sweaters', 3, 40,'pink','large','10%','120gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\ForeverSweater.jpg', SINGLE_BLOB)image),'88% polyester,12% wool, Hand wash.');
INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (5,'Forever Sweatshirts', 4, 39,'white','Medium','10%','130gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\ForeverSweatshirtWhite.jpg', SINGLE_BLOB)image),'90% cotton, machine wash.');
INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (6,'Forever Sweatshirts', 4, 39,'black','Medium','10%','130gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\ForeverSweatshirtBlack.jpg', SINGLE_BLOB)image),'90% cotton, machine wash.');
INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (7,'Forever Sweatshirts', 4, 42,'pink','large','10%','130gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\ForeverSweatshirtPink.jpg', SINGLE_BLOB)image),'90% cotton, machine wash.');
INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (8,'Polo Jackets', 5, 40,'blue','medium','10%','150gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\PoloJacketBlue.jpg', SINGLE_BLOB)image),'90% Denim, 10% Cotton machine wash.');
INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (9,'Casual Trousers', 6, 70,'beige','medium','20%','130gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\CasualTrousersBeige.jpg', SINGLE_BLOB)image),'90% cotton, machine wash.');
INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (10,'Jayleane Shorts', 7, 70,'black','medium','20%','130gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\BlackJShorts.jpg', SINGLE_BLOB)image),'90% cotton, machine wash.');
INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (11,'Joggers', 8, 60,'black','medium','20%','130gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\BlackJoggers.jpg', SINGLE_BLOB)image),'90% cotton, machine wash.');
INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (12,'Dresses', 9, 60,'red','medium','20%','130gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\RedDress.jpg', SINGLE_BLOB)image),'90% cotton, machine wash.');
INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (13,'Jumpsuits', 10, 30,'blue print on white','medium','20%','130gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\BlueonWhiteJumpsuit.jpg', SINGLE_BLOB)image),'90% cotton, machine wash.');
INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (14,'Skrits', 11, 35,'brown','medium','20%','130gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\BrownSkirt.jpg', SINGLE_BLOB)image),'90% cotton, machine wash.');
INSERT INTO product (productID, productName, categoryID, productPrice, productColor, productSize, discount, productWeight, productPicture, productDescription) 
VALUES (15,'Shrugs', 12, 35,'off white','medium','20%','130gms', (SELECT * FROM OPENROWSET (BULK N'D:Saved Pictures\OffWhiteShrugs.jpg', SINGLE_BLOB)image),'90% cotton, machine wash.');


-- DATA for productStock


INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (1, 1,'10','4');
INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (2, 2,'10','4');
INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (3, 3,'20','6');
INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (4, 4,'40','15');
INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (5, 5,'10','2');
INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (6, 6,'30','20');
INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (7, 7,'35','25');
INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (8, 8,'30','5');
INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (9, 9,'20','14');
INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (10, 10,'25','14');
INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (11, 11,'30','24');
INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (12, 12,'35','4');
INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (13, 13,'40','14');
INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (14, 14,'20','13');
INSERT INTO productStock (productStockID, productID, unitsInStock, unitsInOrder) VALUES (15, 15,'30','10');


-- DATA for orderDetails


INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (1,1,1,'4','Delivered');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (2,2,1,'4','Delivered');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (3,3,8,'2','Not Applied');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (4,4,7,'3','Not Applied');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (5,5,6,'2','Fulfilled');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (6,6,5,'1','Not Applied');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (7,7,4,'2','Fulfilled');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (8,8,3,'1','Failed');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (9,9,2,'3','Confrimed');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (10,10,1,'1','Not Applied');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (11,11,9,'2','Not Applied');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (12,12,10,'2','Confrimed');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (13,13,11,'1','Confrimed');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (14,14,12,'3','Confrimed');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (15,15,13,'1','Not Applied');
INSERT INTO orderDetails (orderDetailsID, orderID, productID, orderQuantity, fulfillmentStatus) VALUES (16,15,11,'1','Not Applied');
	
	
-- DATA for payment


INSERT INTO payment (paymentID, orderID, paymentMethod, paymentStatus, paymentDate, paymentTime, paymentError, creditCardNoID) VALUES (1, 1,'VISA','Approved','01/17/2020','20:32:02','NO ERROR', 1);
INSERT INTO payment (paymentID, orderID, paymentMethod, paymentStatus, paymentDate, paymentTime, paymentError, creditCardNoID) VALUES (2, 2,'VISA','Approved','02/11/2020','10:35:02','NO ERROR', 2);
INSERT INTO payment (paymentID, orderID, paymentMethod, paymentStatus, paymentDate, paymentTime, paymentError, creditCardNoID) VALUES (3, 3,'VISA','Pending','01/01/2020','09:35:02','Pending', 3);
INSERT INTO payment (paymentID, orderID, paymentMethod, paymentStatus, paymentDate, paymentTime, paymentError, creditCardNoID) VALUES (4, 4,'MASTERCARD','Failed','01/17/2020','12:35:02','Card Invalid', 4);
INSERT INTO payment (paymentID, orderID, paymentMethod, paymentStatus, paymentDate, paymentTime, paymentError, creditCardNoID) VALUES (5, 5,'APPEX','Approved','01/21/2020','21:30:02','NO ERROR', 5);
INSERT INTO payment (paymentID, orderID, paymentMethod, paymentStatus, paymentDate, paymentTime, paymentError, creditCardNoID) VALUES (6, 6,'VISA','Pending','05/01/2020','13:10:52','Pending', 6);
INSERT INTO payment (paymentID, orderID, paymentMethod, paymentStatus, paymentDate, paymentTime, paymentError, creditCardNoID) VALUES (7,7,'MASTERCARD','Approved','02/26/2020','15:12:02','NO ERROR', 7);
INSERT INTO payment (paymentID, orderID, paymentMethod, paymentStatus, paymentDate, paymentTime, paymentError, creditCardNoID) VALUES (8,8,'APPEX','Failed','03/10/2020','16:32:02','Server Time Out', 8);
INSERT INTO payment (paymentID, orderID, paymentMethod, paymentStatus, paymentDate, paymentTime, paymentError, creditCardNoID) VALUES (9,9,'APPEX','Approved','01/06/2020','20:32:02','NO ERROR', 9);
INSERT INTO payment (paymentID, orderID, paymentMethod, paymentStatus, paymentDate, paymentTime, paymentError, creditCardNoID) VALUES (11,11,'VISA','Failed','04/29/2020','18:20:40','Unable to connect', 10);
INSERT INTO payment (paymentID, orderID, paymentMethod, paymentStatus, paymentDate, paymentTime, paymentError, creditCardNoID) VALUES (13,13,'MASTERCARD','Approved','07/29/2020','11:45:02','NO ERROR', 11);
INSERT INTO payment (paymentID, orderID, paymentMethod, paymentStatus, paymentDate, paymentTime, paymentError, creditCardNoID) VALUES (14,14,'APPEX','Approved','05/02/2020','10:20:04','NO ERROR', 12);
INSERT INTO payment (paymentID, orderID, paymentMethod, paymentStatus, paymentDate, paymentTime, paymentError, creditCardNoID) VALUES (15,15,'VISA','Failed','08/02/2020','09:08:13','Time Out', 13);


-- DATA for shipper


INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (1, 1,'Real Essentials','4312546565');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (2, 15,'Real Essentials','4312546565');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (3, 14,'Rowey','74623104362');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (4, 13,'Mayhem','84730654265');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (5, 12,'for-Ever','89734065245');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (6, 11,'Real clothing','12381521343');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (7, 10,'Essentials','893648724512');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (8, 9,'Corry Clothing','65434213121');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (9, 8,'Emma Boutique','12313435564');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (10, 7,'Femina','371287814432');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (11, 6,'Jay Cotton','64392745613');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (12, 5,'Cotton King','45623911243');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (13, 4,'Jane Clothes','18726372423');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (14, 3,'KBC Clothing','46378126436');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (15, 2,'lia Cottons','01923827897');
INSERT INTO shipper (shipperID, shipmentID, shipperName, shipperPhoneNo) VALUES (16, 1,'Cali Clothing','76545321312');


-- DATA for supplier


INSERT INTO supplier (supplierID, supplierFirstName, supplierLastName, supplierPhoneNo, supplierEmail, supplierURL, supplierDescription)
VALUES (1,'Tamara','Howe','1213431320','Tamara@gmail.com','www.THSuppliers.com','we supply best of clothing');
INSERT INTO supplier (supplierID, supplierFirstName, supplierLastName, supplierPhoneNo, supplierEmail, supplierURL, supplierDescription)
VALUES(2,'Owen','Babara','2233445566','owen@gmail.com','www.OwenSuppliers.com','we supply all kind of clothes');
INSERT INTO supplier (supplierID, supplierFirstName, supplierLastName, supplierPhoneNo, supplierEmail, supplierURL, supplierDescription)
VALUES(3,'Amara','welson','9087654321','amara@gmail.com','www.amaraBoutique.com','world standards clothing');
INSERT INTO supplier (supplierID, supplierFirstName, supplierLastName, supplierPhoneNo, supplierEmail, supplierURL, supplierDescription)
VALUES(4,'Neha','Kishore','4793284123','neha@gmail.com','www.nehaclothins.com','Best clothing');
INSERT INTO supplier (supplierID, supplierFirstName, supplierLastName, supplierPhoneNo, supplierEmail, supplierURL, supplierDescription)
VALUES(5,'Ria','Lamba','9283018349','ria@gmail.com','www.riaBoutique.com','Finest Clothes');
INSERT INTO supplier (supplierID, supplierFirstName, supplierLastName, supplierPhoneNo, supplierEmail, supplierURL, supplierDescription)
VALUES(6,'Mark','Mayer','8237138236','mark@gmail.com','www.markSupplies.com','best quality clothes');
INSERT INTO supplier (supplierID, supplierFirstName, supplierLastName, supplierPhoneNo, supplierEmail, supplierURL, supplierDescription)
VALUES(7,'Leo','Lama','1903892832','Leo@gmail.com','www.leoClothing.com','Finest clothings');
INSERT INTO supplier (supplierID, supplierFirstName, supplierLastName, supplierPhoneNo, supplierEmail, supplierURL, supplierDescription)
VALUES(8,'Jane','Corry','8278139217','jane@gmail.com','www.janeBoutique.com','Best Clothing');
INSERT INTO supplier (supplierID, supplierFirstName, supplierLastName, supplierPhoneNo, supplierEmail, supplierURL, supplierDescription)
VALUES(9,'Kristine','Walker','2837189782','Kristine@gmail.com','www.kristineBoutique.com','we supply best quality clothes');
INSERT INTO supplier (supplierID, supplierFirstName, supplierLastName, supplierPhoneNo, supplierEmail, supplierURL, supplierDescription)
VALUES(10,'Ariya','Sen','2918382321','ariya@gmail.com','www.ariyaClothing.com','best quality clothes');
INSERT INTO supplier (supplierID, supplierFirstName, supplierLastName, supplierPhoneNo, supplierEmail, supplierURL, supplierDescription)
VALUES(11,'Maureen','Den','8237923811','maureen@gmail.com','www.maureenClothing.com','finest Clothes');
INSERT INTO supplier (supplierID, supplierFirstName, supplierLastName, supplierPhoneNo, supplierEmail, supplierURL, supplierDescription)
VALUES(12,'Rachel','Doe','2371837927','rachel@gmail.com','www.rachelDaleClothing.com','best clothing');
INSERT INTO supplier (supplierID, supplierFirstName, supplierLastName, supplierPhoneNo, supplierEmail, supplierURL, supplierDescription)
VALUES(13,'Monica','Fayer','3874923213','monica@gmail.com','www.monicaBoutique.com','Finest Clothing');
INSERT INTO supplier (supplierID, supplierFirstName, supplierLastName, supplierPhoneNo, supplierEmail, supplierURL, supplierDescription)
VALUES(14,'Priya','Welson','8317918278','priya@gmail.com','www.priyaCollection.com','finest clothes collection ');


-- DATA for supplierAddress


INSERT INTO supplierAddress (supplierAddressID, supplierID, street,city, postalCode) VALUES (1, 1,'AntonioStreet','RoseVille','11523');
INSERT INTO supplierAddress (supplierAddressID, supplierID, street,city, postalCode) VALUES (2, 2,'FirstStreet','Woburn','10923');
INSERT INTO supplierAddress (supplierAddressID, supplierID, street,city, postalCode) VALUES (3, 3,'Second Street','Framingham','19203');
INSERT INTO supplierAddress (supplierAddressID, supplierID, street,city, postalCode) VALUES (4, 4,'Cedar Street','SomerVille','10923');
INSERT INTO supplierAddress (supplierAddressID, supplierID, street,city, postalCode) VALUES (5, 5,'Parch Street','Mankota','10934');
INSERT INTO supplierAddress (supplierAddressID, supplierID, street,city, postalCode) VALUES (6, 6,'Third Street','Bessemer','29831');
INSERT INTO supplierAddress (supplierAddressID, supplierID, street,city, postalCode) VALUES (7, 7,'Long street','Atmore','37682');
INSERT INTO supplierAddress (supplierAddressID, supplierID, street,city, postalCode) VALUES (8, 8,'Sesame street','Auburn','19082');
INSERT INTO supplierAddress (supplierAddressID, supplierID, street,city, postalCode) VALUES (9, 9,'Fourth street','Clanton','92183');
INSERT INTO supplierAddress (supplierAddressID, supplierID, street,city, postalCode) VALUES (10, 10,'Marlboro','Arlington','92138');
INSERT INTO supplierAddress (supplierAddressID, supplierID, street,city, postalCode) VALUES (11, 11,'Pine Strret','Andover','92108');
INSERT INTO supplierAddress (supplierAddressID, supplierID, street,city, postalCode) VALUES (12, 12,'Basket Street','Bedford','28932');
INSERT INTO supplierAddress (supplierAddressID, supplierID, street,city, postalCode) VALUES (13, 13,'Baker Street','Braintree','29183');
INSERT INTO supplierAddress (supplierAddressID, supplierID, street,city, postalCode) VALUES (14, 14,'Mellow Strret','Csambridge','82719');


-- DATA for supplies


INSERT INTO supplies (supplierID, productID) VALUES (1, 1);
INSERT INTO supplies (supplierID, productID) VALUES (2, 2);
INSERT INTO supplies (supplierID, productID) VALUES (3, 3);
INSERT INTO supplies (supplierID, productID) VALUES (4, 4);
INSERT INTO supplies (supplierID, productID) VALUES (5, 5);
INSERT INTO supplies (supplierID, productID) VALUES (6, 6);
INSERT INTO supplies (supplierID, productID) VALUES (7, 7);
INSERT INTO supplies (supplierID, productID) VALUES (8, 8);
INSERT INTO supplies (supplierID, productID) VALUES (9, 9);
INSERT INTO supplies (supplierID, productID) VALUES (10, 10);
INSERT INTO supplies (supplierID, productID) VALUES (11, 11);
INSERT INTO supplies (supplierID, productID) VALUES (12, 12);
INSERT INTO supplies (supplierID, productID) VALUES (13, 13);
INSERT INTO supplies (supplierID, productID) VALUES (14, 14);


















