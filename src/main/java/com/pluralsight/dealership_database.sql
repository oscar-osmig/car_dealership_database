# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          car_dealership_database                         #
# ---------------------------------------------------------------------- #

DROP DATABASE IF EXISTS car_dealership_database;
CREATE DATABASE IF NOT EXISTS car_dealership_database;

USE car_dealership_database;

# ---------------------------------------------------------------------- #
# Tables                                                                 #
# ---------------------------------------------------------------------- #
# ---------------------------------------------------------------------- #
# Add table "dealerships"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `dealerships` (
    `dealershipi_id` INTEGER AUTO_INCREMENT,
    `name`   VARCHAR(50),
    `address`    VARCHAR(50),
    `phone`          VARCHAR(12),
     PRIMARY KEY (`dealershipi_id`)
);

CREATE TABLE `vehicles` (
    `vin`      VARCHAR(50),
    `model`    VARCHAR(50),
    `make`     VARCHAR(50),
    `year`     VARCHAR(12), 
    `sold`     BIT(1),
     PRIMARY KEY (`vin`)
);

CREATE TABLE `inventory` (
    `dealership_id`    int,
    `vin`      VARCHAR(50),
     PRIMARY KEY (`dealership_id`)
);

CREATE TABLE `sales_contracts` (
	`id`    integer auto_increment,
    `vin`   VARCHAR(50),
    `name`  VARCHAR(50),
     PRIMARY KEY (`vin`),
     UNIQUE KEY (`id`)
);


