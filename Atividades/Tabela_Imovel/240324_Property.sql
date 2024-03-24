CREATE SCHEMA  `BD240324_Property`;
USE `BD240324_Property`;

CREATE TABLE `Property` (
  `Property_ID` INT AUTO_INCREMENT NOT NULL,
  `Name` VARCHAR(255) NOT NULL,
  `Description` VARCHAR(255) NOT NULL,
  `Value` FLOAT NOT NULL,
  `Room_Quantity` INT NOT NULL,
  `Image_Quantity` INT NOT NULL,
  `Image_ID` INT NOT NULL,
  `Property_Type_ID` INT NOT NULL,
  `Business_Type_ID` INT NOT NULL,
  `Location_ID` INT NOT NULL,
  PRIMARY KEY (`Property_ID`)
);

CREATE TABLE `Images` (
  `Image_ID` INT AUTO_INCREMENT NOT NULL,
  `Name` VARCHAR(255) NOT NULL,
  `Image_File` LONGBLOB NOT NULL,
  `Alt_Description` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Image_ID`),
  FOREIGN KEY (`Image_ID`) REFERENCES `Property`(`Property_ID`)
);

CREATE TABLE `Property_Type` (
  `Property_Type_ID` INT AUTO_INCREMENT NOT NULL,
  `Type_Prop` ENUM ('House', 'Apartment', 'Farm') ,
  PRIMARY KEY (`Property_Type_ID`)
);

CREATE TABLE `Business_Type` (
  `Business_Type_ID` INT AUTO_INCREMENT NOT NULL,
  `Type_Business` ENUM ('Buy', 'Rent') ,
  PRIMARY KEY (`Business_Type_ID`)
);

CREATE TABLE `Location` (
  `Location_ID` INT AUTO_INCREMENT NOT NULL,
  `Location` ENUM ('Urban', 'Rural') ,
  PRIMARY KEY (`Location_ID`)
);

SELECT * FROM bd240324_property.property;
SELECT * FROM bd240324_property.property_type;
SELECT * FROM bd240324_property.business_type;
SELECT * FROM bd240324_property.location;
SELECT * FROM bd240324_property.images;



