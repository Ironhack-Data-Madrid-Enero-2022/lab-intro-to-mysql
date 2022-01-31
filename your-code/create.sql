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
CREATE SCHEMA IF NOT EXISTS `mydb7` DEFAULT CHARACTER SET utf8 ;
USE `mydb7` ;

-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb7`.`cars` (
  `ID` INT NOT NULL,
  `VIN` VARCHAR(25) NOT NULL,
  `Manufacturer` VARCHAR(25) NOT NULL,
  `Model` VARCHAR(8) NOT NULL,
  `Year` YEAR NOT NULL,
  `Color` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb7`.`customers` (
  `ID` INT NOT NULL,
  `idCustomers` INT NOT NULL,
  `name` VARCHAR(25) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(25) NOT NULL,
  `address` VARCHAR(30) NOT NULL,
  `city` VARCHAR(15) NOT NULL,
  `state_province` VARCHAR(15) NOT NULL,
  `Country` CHAR(2) NOT NULL,
  `zip_postalcode` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb7`.`salesperson` (
  `ID` INT NOT NULL,
  `id_staff` INT NOT NULL,
  `name` VARCHAR(25) NOT NULL,
  `store` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb7`.`invoices` (
  `ID` INT NOT NULL,
  `idInvoices` VARCHAR(20) NOT NULL,
  `date` DATE NOT NULL,
  `cars_ID` INT NOT NULL,
  `customers_ID` INT NOT NULL,
  `salesperson_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `cars_ID`, `customers_ID`, `salesperson_ID`),
  INDEX `fk_invoices_customers_idx` (`customers_ID` ASC) VISIBLE,
  INDEX `fk_invoices_salesperson1_idx` (`salesperson_ID` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`cars_ID` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers`
    FOREIGN KEY (`customers_ID`)
    REFERENCES `mydb7`.`customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salesperson1`
    FOREIGN KEY (`salesperson_ID`)
    REFERENCES `mydb7`.`salesperson` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_ID`)
    REFERENCES `mydb7`.`cars` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
