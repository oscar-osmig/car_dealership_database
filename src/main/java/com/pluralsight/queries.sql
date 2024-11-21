USE car_dealership_database;

SELECT * FROM sales_contracts;

INSERT INTO `sales_contracts` (`vin`, `name`)
VALUES ('1HGCM82633A123456', 'John Doe');

UPDATE `sales_contracts`
SET `date` = '2024-11-21 12:00:00'
WHERE id = 1;

UPDATE `vehicles`
SET `make` = 'mazda'
WHERE vin = '1HGCM82633A123456';

ALTER TABLE sales_contracts ADD `date` datetime;

INSERT INTO `dealerships` (`name`, `address`, `phone`)
VALUES ('osmigs dealerships', '2025 hay', '5101111111');

# 1
SELECT * FROM dealerships;

INSERT INTO `inventory` ( `dealership_id`, `vin`)
VALUES (1, '1HGCM82633A123456');

SELECT * FROM inventory;

INSERT INTO `vehicles` (`vin`, `model`, `make`, `year`, `sold`)
VALUES ('1HGCM82633A123456', 'mazda', '3', '2023', 0);

SELECT * FROM vehicles;

# 3
SELECT make, model, vin
FROM vehicles
WHERE vin = '1HGCM82633A123456';

# 2
SELECT vc.make, vc.model, vc.vin, i.dealership_id
FROM vehicles vc
INNER JOIN inventory i ON vc.vin = i.vin
WHERE i.dealership_id = 1;

# 4 
SELECT 
    dl.name, 
    dl.address,
    vc.make,
    vc.model
FROM dealerships as dl
JOIN 
	inventory as inv ON dl.dealershipi_id = inv.dealership_id
JOIN 
	vehicles as vc ON inv.vin = vc.vin
WHERE vc.model = 'mazda';

# 5
SELECT 
    dl.name, 
    dl.address,
    vc.make,
    vc.model
FROM dealerships as dl
JOIN 
	inventory as inv ON dl.dealershipi_id = inv.dealership_id
JOIN 
	vehicles as vc ON inv.vin = vc.vin
WHERE vc.make = '3';

# 6
SELECT sc.id, sc.vin, v.model, v.make, v.`year`, sc.`name`, sc.`date`
FROM sales_contracts sc
JOIN vehicles v ON sc.vin = v.vin
WHERE sc.`date` < '2024-11-25' AND sc.`date` > '2024-10-25';
