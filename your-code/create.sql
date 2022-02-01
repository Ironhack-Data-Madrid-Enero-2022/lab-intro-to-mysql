
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
CREATE SCHEMA IF NOT EXISTS `mydb1` DEFAULT CHARACTER SET utf8 ;
USE `mydb1` ;

-- -----------------------------------------------------
-- Table `mydb`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb1`.`Salesperson` (
  `Salesperson_ID` INT NOT NULL,
  `Customer_ID` INT NULL,
  `Car_(VIN)_ID` INT NULL,
  `Car_request_ID` INT NULL,
  `Store_ID` INT NULL,
  `Name` VARCHAR(45) NULL,
  `Surname` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Color` VARCHAR(45) NULL,
  `Date` DATE NULL,
  `Price` INT NULL,
  PRIMARY KEY (`Salesperson_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb1`.`Customer` (
  `Customer_ID` INT NOT NULL,
  `Salesperson_ID` INT NULL,
  `Car_(VIN)_ID` INT NULL,
  `Car_requested_ID` INT NULL,
  `Name` VARCHAR(45) NULL,
  `Surename` VARCHAR(45) NULL,
  `Adress` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Phone_Number` INT NULL,
  `CP` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Color` VARCHAR(45) NULL,
  `Date` DATE NULL,
  `Price` INT NULL,
  `Coments` VARCHAR(120) NULL,
  `Salesperson (Sales)_Salesperson_ID` INT NOT NULL,
  PRIMARY KEY (`Customer_ID`, `Salesperson (Sales)_Salesperson_ID`),
  INDEX `fk_Customer (Sales)_Salesperson (Sales)1_idx` (`Salesperson (Sales)_Salesperson_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Customer (Sales)_Salesperson (Sales)1`
    FOREIGN KEY (`Salesperson (Sales)_Salesperson_ID`)
    REFERENCES `mydb1`.`Salesperson` (`Salesperson_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Stock_Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb1`.`Stock_Cars` (
  `Car_(VIN)_ID` INT NOT NULL,
  `Customer_ID` INT NULL,
  `Salesperson_ID` INT NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Color` VARCHAR(45) NULL,
  `Date` VARCHAR(45) NULL,
  `Price` INT NULL,
  PRIMARY KEY (`Car_(VIN)_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb1`.`Invoices` (
  `Invoice_ID` INT NOT NULL,
  `Customer_ID` INT NULL,
  `Salesperson_ID` INT NULL,
  `Car_(VIN)_ID` INT NULL,
  `Car_request_ID` INT NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Color` VARCHAR(45) NULL,
  `Date` DATE NULL,
  `Price` INT NULL,
  `Coments` VARCHAR(120) NULL,
  PRIMARY KEY (`Invoice_ID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
