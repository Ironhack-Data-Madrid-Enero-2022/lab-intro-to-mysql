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
-- -----------------------------------------------------
-- Schema publications
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Sales_person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sales_person` (
  `Staff_ID` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`Staff_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `Invoice_number` VARCHAR(45) NOT NULL,
  `Date` DATETIME NULL,
  `Car` VARCHAR(45) NULL,
  `Customer` VARCHAR(45) NULL,
  `Sales_person` VARCHAR(45) NULL,
  `Sales_person_Staff_ID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Invoice_number`, `Sales_person_Staff_ID`),
  INDEX `fk_Invoices_Sales_person1_idx` (`Sales_person_Staff_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Sales_person1`
    FOREIGN KEY (`Sales_person_Staff_ID`)
    REFERENCES `mydb`.`Sales_person` (`Staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `VIM` VARCHAR(20) NOT NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` YEAR(4) NULL,
  `Color` VARCHAR(45) NULL,
  `Invoices_Invoice_number` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`VIM`, `Invoices_Invoice_number`),
  UNIQUE INDEX `VIM_UNIQUE` (`VIM` ASC) VISIBLE,
  INDEX `fk_Cars_Invoices_idx` (`Invoices_Invoice_number` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Invoices`
    FOREIGN KEY (`Invoices_Invoice_number`)
    REFERENCES `mydb`.`Invoices` (`Invoice_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `Customer_ID` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Phone_number` VARCHAR(15) NULL,
  `Email` VARCHAR(45) NULL,
  `Adress` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Postal_code` VARCHAR(45) NULL,
  `Invoices_Invoice_number` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Customer_ID`, `Invoices_Invoice_number`),
  INDEX `fk_Customers_Invoices1_idx` (`Invoices_Invoice_number` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_Invoices1`
    FOREIGN KEY (`Invoices_Invoice_number`)
    REFERENCES `mydb`.`Invoices` (`Invoice_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
