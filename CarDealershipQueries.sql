-- 1) Get all dealerships
SELECT * FROM Dealerships;

-- 2) Find all vehicles for a specific dealership
SELECT * FROM Vehicles AS v
JOIN Inventory AS i
ON v.VIN = i.VIN
JOIN Dealerships AS d
ON i.dealership_id = d.dealership_id
WHERE d.dealership_id = 1;

-- 3) Find car by VIN
SELECT * FROM Vehicles
WHERE VIN = "2FMDK3G98CBA23456";

-- 4) Find dealership where certain car is by VIN
SELECT * FROM Dealerships AS d
JOIN Inventory as i
ON d.dealership_id = i.dealership_id
WHERE VIN = "3TMCZ5AN0LM654321";


-- 5) Find all dealerships that have a certain car type
SELECT * FROM Dealerships AS d
JOIN Inventory AS i
ON d.dealership_id = i.dealership_id
JOIN Vehicles as v
ON i.VIN = v.VIN
WHERE v.`Type` = "SUV";

-- 6) Get all sales information for a specific dealer for a specific date range
SELECT * FROM Inventory AS i
JOIN Dealerships AS d
ON i.dealership_id = d.dealership_id
JOIN SalesContract AS s
ON i.VIN = s.VIN
WHERE d.dealership_id = 3 AND `Sales Date` BETWEEN "2024-10-1" AND "2024-11-15";



