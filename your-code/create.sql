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
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `idCars` INT NOT NULL,
  `VehicleID` VARCHAR(40) NULL DEFAULT NULL,
  `Manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `Model` VARCHAR(45) NULL DEFAULT NULL,
  `Year` YEAR NULL DEFAULT NULL,
  `Color` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer` (
  `idcustomer` INT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `phone` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `state` VARCHAR(45) NULL DEFAULT NULL,
  `country` VARCHAR(45) NULL DEFAULT NULL,
  `postalcode` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`idcustomer`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salesperson` (
  `idSalesPerson` INT NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Store` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idSalesPerson`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `idinvoices` INT NOT NULL,
  `customer_idcustomer` INT NOT NULL,
  `salesperson_idsalesperson` INT NOT NULL,
  `cars_idcars` INT NOT NULL,
  PRIMARY KEY (`idinvoices`, `customer_idcustomer`, `salesperson_idsalesperson`, `cars_idcars`),
  INDEX `fk_invoices_customer_idx` (`customer_idcustomer` ASC) VISIBLE,
  INDEX `fk_invoices_salesperson1_idx` (`salesperson_idsalesperson` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`cars_idcars` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_idcars`)
    REFERENCES `mydb`.`cars` (`idCars`),
  CONSTRAINT `fk_invoices_customer`
    FOREIGN KEY (`customer_idcustomer`)
    REFERENCES `mydb`.`customer` (`idcustomer`),
  CONSTRAINT `fk_invoices_salesperson1`
    FOREIGN KEY (`salesperson_idsalesperson`)
    REFERENCES `mydb`.`salesperson` (`idSalesPerson`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
