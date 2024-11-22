CREATE DATABASE CarDealership;

USE CarDealership;


CREATE TABLE Dealerships (
dealership_id INTEGER NOT NULL AUTO_INCREMENT,
`name` VARCHAR(50),
address VARCHAR(50),
phone VARCHAR(50),
PRIMARY KEY (dealership_id)
);


CREATE TABLE Vehicles (
VIN VARCHAR(17) NOT NULL,
Make VARCHAR(20),
Model VARCHAR(20),
Color VARCHAR(20),
`Year` VARCHAR(20),
`Type` VARCHAR(20),
`Condition` VARCHAR(20),
Price FLOAT,
Sold BOOLEAN,
PRIMARY KEY (VIN)
);


CREATE TABLE Inventory (
dealership_id INTEGER NOT NULL AUTO_INCREMENT,
VIN VARCHAR(17) NOT NULL,
PRIMARY KEY ( dealership_id, VIN)
);


CREATE TABLE SalesContract (
contract_id INTEGER NOT NULL AUTO_INCREMENT,
VIN VARCHAR(17) NOT NULL,
`Sales Date` DATE,
`Monthly Payment` FLOAT,
`Total Price` FLOAT,
PRIMARY KEY (contract_id),
FOREIGN KEY (VIN) REFERENCES Vehicles (VIN)
);

INSERT INTO Dealerships(`name`, address, phone)
VALUES("Bayview Motors", "1240 Bayshore Blvd, San Francisco, CA 94124", 415-555-2345),
("Eastbay Auto Center", "1800 San Pablo Ave, Berkeley, CA 94702", 510-555-5678),
("Valley View Auto Sales", "2250 Castro Valley Blvd, Castro Valley, CA 94546", 510-555-3467),
("Pleasanton Motor", "3350 Hopyard Rd, Pleasanton, CA 94588", 510-555-8790);


UPDATE Dealerships
SET `name` = "Pleasanton Motors"
WHERE dealership_id = 4;


UPDATE Dealerships
SET phone = "415-555-2345"
WHERE dealership_id = 1;

UPDATE Dealerships
SET phone = "510-555-5678"
WHERE dealership_id = 2;

UPDATE Dealerships
SET phone = "510-555-3467"
WHERE dealership_id = 3;

UPDATE Dealerships
SET phone = "510-555-8790"
WHERE dealership_id = 4;



INSERT INTO Vehicles (VIN, Make, Model, Color, `Year`, `Type`, `Condition`, Price, Sold)
VALUES("1HGBH41JXMN109876", "Honda", "Civic", "Silver", 2012, "Sedan", "Used", 23000.00, FALSE),
("2FMDK3G98CBA23456", "Ford", "F-150 Raptor", "White", 2018, "Truck", "Used", 43000.00, FALSE),
("5NMS3CAD9LH786543", "Hyundai", "Santa Fe", "Blue", 2015, "Sedan", "Used", 21000.00, TRUE),
("1G1ZT62885F123456", "Chevrolet", "Malibu", "White", 2013, "Sedan", "Used", 20000.00, TRUE),
("3TMCZ5AN0LM654321", "Toyota", "Camry", "Grey", 2024, "Sedan", "New", 32000.00, TRUE),
("1HGCM82633A123456", "Honda", "Accord", "Black", 2017, "Sedan", "Used", 20000.00, TRUE),
("1FTRX18L1XKA98765","Chevrolet", "Blazer", "Red", 2021, "SUV", "Used", 30000.00, FALSE),
("3GNAXUEV0JL123456", "Subaru", "Crosstrek", "Silver", 2024, "SUV", "New", 26000.00, FALSE),
("1YVGF22D3Y5134567", "Lexus", "RX 350", "Grey", 2023, "Sedan", "Used", 55000.00, FALSE),
("3LN6L5F94KR012345", "Lincoln", "Navigator", "Black", 2024, "SUV","New", 75000.00, FALSE),
("1FT7W2BT0LE543210", "Chrysler", "Pacifica", "White", 2016, "Van", "Used", 17000.00, TRUE),
("5TDDZ3DC4JS456789", "Toyota", "Sienna", "Grey", 2022, "Van", "Used", 27000.00, FALSE),
("2C4RDGCG9LR012345", "Jeep", "Grand Cherokee", "Olive Green", 2024, "SUV", "NEW", 40000.00, FALSE),
("1N6AF0KY2NN123456", "GMC", "Sierra", "Black", 2016, "Truck", "Used", 18000.00, FALSE),
("1FM5K8D89JGA12345", "Nissan", "Altima", "White", 2020, "Sedan", "Used", 20000.00, TRUE),
("3D7ML43A95G567890", "Cadillac", "CTS-V", "White", 2019, "Sedan", "Used", 45000.00, FALSE);


INSERT INTO Inventory(dealership_id, VIN)
VALUES(1, "1HGBH41JXMN109876"),
(1, "2FMDK3G98CBA23456"),
(1, "5NMS3CAD9LH786543"),
(1, "1G1ZT62885F123456"),
(2, "3TMCZ5AN0LM654321"),
(2, "1HGCM82633A123456"),
(2, "1FTRX18L1XKA98765"),
(2, "3GNAXUEV0JL123456"),
(3, "1YVGF22D3Y5134567"),
(3, "3LN6L5F94KR012345"),
(3, "1FT7W2BT0LE543210"),
(3, "5TDDZ3DC4JS456789"),
(4, "2C4RDGCG9LR012345"),
(4, "1N6AF0KY2NN123456"),
(4, "1FM5K8D89JGA12345"),
(4, "3D7ML43A95G567890");


INSERT INTO SalesContract(VIN, `Sales Date`, `Monthly Payment`, `Total Price`)
VALUES("5NMS3CAD9LH786543", "2024-01-05", 430.00, 21000.00),
("1G1ZT62885F123456", "2024-09-13", 400.00, 20000.00),
("3TMCZ5AN0LM654321", "2024-10-21", 470.00, 32000.00),
("1HGCM82633A123456", "2024-10-30", 400.00, 2000.00),
("1FT7W2BT0LE543210", "2024-11-09", 380.00, 17000.00),
("1FM5K8D89JGA12345", "2024-11-15", 400.00, 20000.00);



 


