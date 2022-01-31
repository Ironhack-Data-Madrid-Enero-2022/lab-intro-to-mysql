-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Car_Company
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Car_Company
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Car_Company` DEFAULT CHARACTER SET utf8 ;
USE `Car_Company` ;

-- -----------------------------------------------------
-- Table `Car_Company`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Company`.`Cars` (
  `VIN` VARCHAR(45) NULL DEFAULT NULL,
  `Manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `Model` VARCHAR(45) NULL DEFAULT NULL,
  `Year` YEAR NULL DEFAULT NULL,
  `Color` VARCHAR(45) NULL DEFAULT NULL,
  `ID` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `Car_Company`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Company`.`Customers` (
  `Cust_ID` INT NULL DEFAULT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Phone_num` VARCHAR(45) NULL DEFAULT NULL,
  `Email` VARCHAR(45) NULL DEFAULT NULL,
  `Address` VARCHAR(45) NULL DEFAULT NULL,
  `City` VARCHAR(45) NULL DEFAULT NULL,
  `StateProv` VARCHAR(45) NULL DEFAULT NULL,
  `Country` VARCHAR(45) NULL DEFAULT NULL,
  `ZIP_code` INT NULL DEFAULT NULL,
  `ID` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `Car_Company`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Company`.`Salesperson` (
  `Staff_ID` INT NULL DEFAULT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Store` VARCHAR(45) NULL DEFAULT NULL,
  `ID` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `Car_Company`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Company`.`Invoice` (
  `Inv_Number` INT NULL DEFAULT NULL,
  `date` DATE NULL DEFAULT NULL,
  `ID` INT NOT NULL,
  `Cars_ID` INT NOT NULL,
  `Salesperson_ID` INT NOT NULL,
  `Customers_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `Cars_ID`, `Salesperson_ID`, `Customers_ID`),
  INDEX `fk_Invoice_Cars1_idx` (`Cars_ID` ASC) VISIBLE,
  INDEX `fk_Invoice_Salesperson1_idx` (`Salesperson_ID` ASC) VISIBLE,
  INDEX `fk_Invoice_Customers1_idx` (`Customers_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_Cars1`
    FOREIGN KEY (`Cars_ID`)
    REFERENCES `Car_Company`.`Cars` (`ID`),
  CONSTRAINT `fk_Invoice_Customers1`
    FOREIGN KEY (`Customers_ID`)
    REFERENCES `Car_Company`.`Customers` (`ID`),
  CONSTRAINT `fk_Invoice_Salesperson1`
    FOREIGN KEY (`Salesperson_ID`)
    REFERENCES `Car_Company`.`Salesperson` (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


