CREATE TABLE geo (
  `GeoID` VARCHAR(4) NOT NULL,
  `Geo` TEXT,
  `Region` TEXT,
  PRIMARY KEY (`GeoID`)
);


CREATE TABLE people (
  `Salesperson` TEXT,
  `SPID` VARCHAR(6) NOT NULL,
  `Team` TEXT,
  `Location` TEXT,
  PRIMARY KEY (`SPID`)
)


CREATE TABLE products (
  `PID` VARCHAR(6) NOT NULL,
  `Product` TEXT,
  `Category` TEXT,
  `Size` TEXT,
  `Cost_per_box` DOUBLE DEFAULT NULL,
  PRIMARY KEY (`PID`)
)


CREATE TABLE sales (
  `SPID` TEXT,
  `GeoID` TEXT,
  `PID` TEXT,
  `SaleDate` DATETIME DEFAULT NULL,
  `Amount` INT DEFAULT NULL,
  `Customers` INT DEFAULT NULL,
  `Boxes` INT DEFAULT NULL
)

