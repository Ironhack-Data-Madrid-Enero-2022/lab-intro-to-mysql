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
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
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


-- -----------------------------------------------------
-- Table `mydb`.`Store (Sales)`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Store (Sales)` (
  `Store_ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Store_address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Salesperson_ID` INT NOT NULL,
  `Car_(VIN)_ID` INT NOT NULL,
  `Car_requested_ID` INT NOT NULL,
  `Car_(VIN)_ID` INT NOT NULL,
  `Customer_ID` INT NOT NULL,
  `Invoices_Invoice_ID` INT NOT NULL,
  PRIMARY KEY (`Store_ID`, `Salesperson_ID`, `Car_(VIN)_ID`, `Car_requested_ID`, `Car_(VIN)_ID`, `Customer_ID`, `Invoices_Invoice_ID`),
  INDEX `fk_Store (Sales)_Invoices1_idx` (`Invoices_Invoice_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Store (Sales)_Invoices1`
    FOREIGN KEY (`Invoices_Invoice_ID`)
    REFERENCES `mydb`.`Invoices` (`Invoice_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson (Sales)`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson (Sales)` (
  `Salesperson_ID` INT NOT NULL,
  `Customer_ID` INT NOT NULL,
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
  `Invoices_Invoice_ID` INT NOT NULL,
  PRIMARY KEY (`Salesperson_ID`, `Customer_ID`, `Invoices_Invoice_ID`),
  INDEX `fk_Salesperson (Sales)_Invoices1_idx` (`Invoices_Invoice_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson (Sales)_Invoices1`
    FOREIGN KEY (`Invoices_Invoice_ID`)
    REFERENCES `mydb`.`Invoices` (`Invoice_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer (Sales)`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer (Sales)` (
  `Customer_ID` INT NOT NULL,
  `Salesperson_ID` INT NOT NULL,
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
  PRIMARY KEY (`Customer_ID`, `Salesperson_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Stock Cars (Sales)`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Stock Cars (Sales)` (
  `Car_(VIN)_ID` INT NOT NULL,
  `Customer_ID` INT NOT NULL,
  `Salesperson_ID` INT NOT NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Color` VARCHAR(45) NULL,
  `Date` VARCHAR(45) NULL,
  `Price` INT NULL,
  `Salesperson (Sales)_Salesperson_ID` INT NOT NULL,
  `Salesperson (Sales)_Customer_ID` INT NOT NULL,
  `Salesperson (Sales)_Car_(VIN)_ID` INT NOT NULL,
  `Salesperson (Sales)_Car_request_ID` INT NOT NULL,
  `Salesperson (Sales)_Store_ID` INT NOT NULL,
  PRIMARY KEY (`Car_(VIN)_ID`, `Customer_ID`, `Salesperson (Sales)_Salesperson_ID`, `Salesperson (Sales)_Customer_ID`, `Salesperson (Sales)_Car_(VIN)_ID`, `Salesperson (Sales)_Car_request_ID`, `Salesperson (Sales)_Store_ID`, `Salesperson_ID`),
  INDEX `fk_Stock Cars (Sales)_Salesperson (Sales)_idx` (`Salesperson (Sales)_Salesperson_ID` ASC, `Salesperson (Sales)_Customer_ID` ASC, `Salesperson (Sales)_Car_(VIN)_ID` ASC, `Salesperson (Sales)_Car_request_ID` ASC, `Salesperson (Sales)_Store_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Stock Cars (Sales)_Salesperson (Sales)`
    FOREIGN KEY (`Salesperson (Sales)_Salesperson_ID` , `Salesperson (Sales)_Customer_ID` , `Salesperson (Sales)_Car_(VIN)_ID` , `Salesperson (Sales)_Car_request_ID` , `Salesperson (Sales)_Store_ID`)
    REFERENCES `mydb`.`Salesperson (Sales)` (`Salesperson_ID` , `Customer_ID` , `Car_(VIN)_ID` , `Car_request_ID` , `Store_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Car_requested (Sales)`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Car_requested (Sales)` (
  `Car_request_ID` INT NOT NULL,
  `Salesperson_ID` INT NULL,
  `Customer_ID` INT NULL,
  `Store_ID` INT NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Color` VARCHAR(45) NULL,
  `Date` DATE NULL,
  `Price` INT NULL,
  `Salesperson (Sales)_Salesperson_ID` INT NOT NULL,
  `Salesperson (Sales)_Customer_ID` INT NOT NULL,
  `Salesperson (Sales)_Car_(VIN)_ID` INT NOT NULL,
  `Salesperson (Sales)_Car_request_ID` INT NOT NULL,
  `Salesperson (Sales)_Store_ID` INT NOT NULL,
  PRIMARY KEY (`Car_request_ID`, `Salesperson (Sales)_Salesperson_ID`, `Salesperson (Sales)_Customer_ID`, `Salesperson (Sales)_Car_(VIN)_ID`, `Salesperson (Sales)_Car_request_ID`, `Salesperson (Sales)_Store_ID`),
  INDEX `fk_Car_requested (Sales)_Salesperson (Sales)1_idx` (`Salesperson (Sales)_Salesperson_ID` ASC, `Salesperson (Sales)_Customer_ID` ASC, `Salesperson (Sales)_Car_(VIN)_ID` ASC, `Salesperson (Sales)_Car_request_ID` ASC, `Salesperson (Sales)_Store_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Car_requested (Sales)_Salesperson (Sales)1`
    FOREIGN KEY (`Salesperson (Sales)_Salesperson_ID` , `Salesperson (Sales)_Customer_ID` , `Salesperson (Sales)_Car_(VIN)_ID` , `Salesperson (Sales)_Car_request_ID` , `Salesperson (Sales)_Store_ID`)
    REFERENCES `mydb`.`Salesperson (Sales)` (`Salesperson_ID` , `Customer_ID` , `Car_(VIN)_ID` , `Car_request_ID` , `Store_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sold Cars (Sales)`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sold Cars (Sales)` (
  `Car_(VIN)_ID` INT NOT NULL,
  `Salesperson_ID` INT NULL,
  `Customer_ID` INT NULL,
  `Car_request_ID` INT NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Color` VARCHAR(45) NULL,
  `Date` DATE NULL,
  `Price` INT NULL,
  `Salesperson (Sales)_Salesperson_ID` INT NOT NULL,
  `Salesperson (Sales)_Customer_ID` INT NOT NULL,
  `Salesperson (Sales)_Car_(VIN)_ID` INT NOT NULL,
  `Salesperson (Sales)_Car_request_ID` INT NOT NULL,
  `Salesperson (Sales)_Store_ID` INT NOT NULL,
  PRIMARY KEY (`Car_(VIN)_ID`, `Salesperson (Sales)_Salesperson_ID`, `Salesperson (Sales)_Customer_ID`, `Salesperson (Sales)_Car_(VIN)_ID`, `Salesperson (Sales)_Car_request_ID`, `Salesperson (Sales)_Store_ID`),
  INDEX `fk_Sold Cars (Sales)_Salesperson (Sales)1_idx` (`Salesperson (Sales)_Salesperson_ID` ASC, `Salesperson (Sales)_Customer_ID` ASC, `Salesperson (Sales)_Car_(VIN)_ID` ASC, `Salesperson (Sales)_Car_request_ID` ASC, `Salesperson (Sales)_Store_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Sold Cars (Sales)_Salesperson (Sales)1`
    FOREIGN KEY (`Salesperson (Sales)_Salesperson_ID` , `Salesperson (Sales)_Customer_ID` , `Salesperson (Sales)_Car_(VIN)_ID` , `Salesperson (Sales)_Car_request_ID` , `Salesperson (Sales)_Store_ID`)
    REFERENCES `mydb`.`Salesperson (Sales)` (`Salesperson_ID` , `Customer_ID` , `Car_(VIN)_ID` , `Car_request_ID` , `Store_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson (Sales)_has_Customer (Sales)`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson (Sales)_has_Customer (Sales)` (
  `Salesperson (Sales)_Salesperson_ID` INT NOT NULL,
  `Salesperson (Sales)_Customer_ID` INT NOT NULL,
  `Customer (Sales)_Customer_ID` INT NOT NULL,
  `Customer (Sales)_Salesperson_ID` INT NOT NULL,
  PRIMARY KEY (`Salesperson (Sales)_Salesperson_ID`, `Salesperson (Sales)_Customer_ID`, `Customer (Sales)_Customer_ID`, `Customer (Sales)_Salesperson_ID`),
  INDEX `fk_Salesperson (Sales)_has_Customer (Sales)_Customer (Sales_idx` (`Customer (Sales)_Customer_ID` ASC, `Customer (Sales)_Salesperson_ID` ASC) VISIBLE,
  INDEX `fk_Salesperson (Sales)_has_Customer (Sales)_Salesperson (Sa_idx` (`Salesperson (Sales)_Salesperson_ID` ASC, `Salesperson (Sales)_Customer_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson (Sales)_has_Customer (Sales)_Salesperson (Sale1`
    FOREIGN KEY (`Salesperson (Sales)_Salesperson_ID` , `Salesperson (Sales)_Customer_ID`)
    REFERENCES `mydb`.`Salesperson (Sales)` (`Salesperson_ID` , `Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Salesperson (Sales)_has_Customer (Sales)_Customer (Sales)1`
    FOREIGN KEY (`Customer (Sales)_Customer_ID` , `Customer (Sales)_Salesperson_ID`)
    REFERENCES `mydb`.`Customer (Sales)` (`Customer_ID` , `Salesperson_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson (Sales)_has_Store (Sales)`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson (Sales)_has_Store (Sales)` (
  `Salesperson (Sales)_Salesperson_ID` INT NOT NULL,
  `Salesperson (Sales)_Customer_ID` INT NOT NULL,
  `Salesperson (Sales)_Invoices_Invoice_ID` INT NOT NULL,
  `Store (Sales)_Store_ID` INT NOT NULL,
  `Store (Sales)_Salesperson_ID` INT NOT NULL,
  `Store (Sales)_Car_(VIN)_ID` INT NOT NULL,
  `Store (Sales)_Car_requested_ID` INT NOT NULL,
  `Store (Sales)_Car_(VIN)_ID1` INT NOT NULL,
  `Store (Sales)_Customer_ID` INT NOT NULL,
  PRIMARY KEY (`Salesperson (Sales)_Salesperson_ID`, `Salesperson (Sales)_Customer_ID`, `Salesperson (Sales)_Invoices_Invoice_ID`, `Store (Sales)_Store_ID`, `Store (Sales)_Salesperson_ID`, `Store (Sales)_Car_(VIN)_ID`, `Store (Sales)_Car_requested_ID`, `Store (Sales)_Car_(VIN)_ID1`, `Store (Sales)_Customer_ID`),
  INDEX `fk_Salesperson (Sales)_has_Store (Sales)_Store (Sales)1_idx` (`Store (Sales)_Store_ID` ASC, `Store (Sales)_Salesperson_ID` ASC, `Store (Sales)_Car_(VIN)_ID` ASC, `Store (Sales)_Car_requested_ID` ASC, `Store (Sales)_Car_(VIN)_ID1` ASC, `Store (Sales)_Customer_ID` ASC) VISIBLE,
  INDEX `fk_Salesperson (Sales)_has_Store (Sales)_Salesperson (Sales_idx` (`Salesperson (Sales)_Salesperson_ID` ASC, `Salesperson (Sales)_Customer_ID` ASC, `Salesperson (Sales)_Invoices_Invoice_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson (Sales)_has_Store (Sales)_Salesperson (Sales)1`
    FOREIGN KEY (`Salesperson (Sales)_Salesperson_ID` , `Salesperson (Sales)_Customer_ID` , `Salesperson (Sales)_Invoices_Invoice_ID`)
    REFERENCES `mydb`.`Salesperson (Sales)` (`Salesperson_ID` , `Customer_ID` , `Invoices_Invoice_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Salesperson (Sales)_has_Store (Sales)_Store (Sales)1`
    FOREIGN KEY (`Store (Sales)_Store_ID` , `Store (Sales)_Salesperson_ID` , `Store (Sales)_Car_(VIN)_ID` , `Store (Sales)_Car_requested_ID` , `Store (Sales)_Car_(VIN)_ID1` , `Store (Sales)_Customer_ID`)
    REFERENCES `mydb`.`Store (Sales)` (`Store_ID` , `Salesperson_ID` , `Car_(VIN)_ID` , `Car_requested_ID` , `Car_(VIN)_ID` , `Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
