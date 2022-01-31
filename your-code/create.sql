-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Customer_ID` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(15) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Adress` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `Province` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Postal` VARCHAR(5) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salespersons` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Staff_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Invoice_Number` VARCHAR(45) NOT NULL,
  `Date` DATE NOT NULL,
  `Customers_ID` INT NOT NULL,
  `Salespersons_ID` INT NOT NULL,
  `Salespersons_ID1` INT NOT NULL,
  PRIMARY KEY (`ID`, `Customers_ID`, `Salespersons_ID`, `Salespersons_ID1`),
  INDEX `fk_Invoices_Customers1_idx` (`Customers_ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_ID1` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_ID`)
    REFERENCES `mydb`.`Customers` (`ID`),
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_ID1`)
    REFERENCES `mydb`.`Salespersons` (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(17) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` YEAR NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  `Invoices_ID` INT NOT NULL,
  `Invoices_Customers_ID` INT NOT NULL,
  `Invoices_Salespersons_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `Invoices_ID`, `Invoices_Customers_ID`, `Invoices_Salespersons_ID`),
  INDEX `fk_Cars_Invoices1_idx` (`Invoices_ID` ASC, `Invoices_Customers_ID` ASC, `Invoices_Salespersons_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Invoices1`
    FOREIGN KEY (`Invoices_ID` , `Invoices_Customers_ID` , `Invoices_Salespersons_ID`)
    REFERENCES `mydb`.`Invoices` (`ID` , `Customers_ID` , `Salespersons_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


