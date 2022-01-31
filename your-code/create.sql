-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydbb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydbb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydbb` DEFAULT CHARACTER SET utf8 ;
USE `mydbb` ;

-- -----------------------------------------------------
-- Table `mydbb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydbb`.`Customers` (
  `customerID` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `phone` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(60) NULL DEFAULT NULL,
  `address` VARCHAR(100) NULL DEFAULT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `state_province` VARCHAR(45) NULL DEFAULT NULL,
  `country` VARCHAR(45) NULL DEFAULT NULL,
  `postal_code` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`customerID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydbb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydbb`.`Invoices` (
  `invoice_number` INT NOT NULL,
  `date` DATE NULL DEFAULT NULL,
  `Customers_customerID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`invoice_number`, `Customers_customerID`),
  INDEX `fk_Invoices_Customers1_idx` (`Customers_customerID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_customerID`)
    REFERENCES `mydbb`.`Customers` (`customerID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydbb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydbb`.`Cars` (
  `VIN` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `model` VARCHAR(45) NULL DEFAULT NULL,
  `year` YEAR NULL DEFAULT NULL,
  `color` VARCHAR(45) NULL DEFAULT NULL,
  `Invoices_invoice_number` INT NOT NULL,
  PRIMARY KEY (`VIN`, `Invoices_invoice_number`),
  INDEX `fk_Cars_Invoices_idx` (`Invoices_invoice_number` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Invoices`
    FOREIGN KEY (`Invoices_invoice_number`)
    REFERENCES `mydbb`.`Invoices` (`invoice_number`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydbb`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydbb`.`Salespersons` (
  `staffID` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `store` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`staffID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydbb`.`Invoices_has_Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydbb`.`Invoices_has_Salespersons` (
  `Invoices_invoice_number` INT NOT NULL,
  `Invoices_Customers_customerID` VARCHAR(45) NOT NULL,
  `Salespersons_staffID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Invoices_invoice_number`, `Invoices_Customers_customerID`, `Salespersons_staffID`),
  INDEX `fk_Invoices_has_Salespersons_Salespersons1_idx` (`Salespersons_staffID` ASC) VISIBLE,
  INDEX `fk_Invoices_has_Salespersons_Invoices1_idx` (`Invoices_invoice_number` ASC, `Invoices_Customers_customerID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_has_Salespersons_Invoices1`
    FOREIGN KEY (`Invoices_invoice_number` , `Invoices_Customers_customerID`)
    REFERENCES `mydbb`.`Invoices` (`invoice_number` , `Customers_customerID`),
  CONSTRAINT `fk_Invoices_has_Salespersons_Salespersons1`
    FOREIGN KEY (`Salespersons_staffID`)
    REFERENCES `mydbb`.`Salespersons` (`staffID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;