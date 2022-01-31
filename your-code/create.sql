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
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema pub3
-- -----------------------------------------------------
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Cars` (
  `idCars` INT NOT NULL,
  `VIM` VARCHAR(17) NULL,
  `Manufacturer` VARCHAR(20) NULL,
  `Model` VARCHAR(20) NULL,
  `Year` YEAR(4) NULL,
  `Color` VARCHAR(10) NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Invoices` (
  `idInvoices` INT NOT NULL,
  `Invoice Number` INT NULL,
  `Date` DATE NULL,
  `Car` INT NULL,
  `Customer` INT NULL,
  `Sales Person` INT NULL,
  PRIMARY KEY (`idInvoices`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Customers` (
  `idCustomers` INT NOT NULL,
  `CustomerId` INT NULL,
  `Name` VARCHAR(25) NULL,
  `Phone` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Adress` VARCHAR(45) NULL,
  `City` VARCHAR(20) NULL,
  `State/Province` VARCHAR(20) NULL,
  `Country` VARCHAR(20) NULL,
  `Postal` INT NULL,
  `Invoices_idInvoices` INT NOT NULL,
  `Invoices_idInvoices1` INT NOT NULL,
  `Cars_idCars` INT NOT NULL,
  PRIMARY KEY (`idCustomers`, `Invoices_idInvoices`, `Invoices_idInvoices1`, `Cars_idCars`),
  INDEX `fk_Customers_Invoices1_idx` (`Invoices_idInvoices1` ASC) VISIBLE,
  INDEX `fk_Customers_Cars1_idx` (`Cars_idCars` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_Invoices1`
    FOREIGN KEY (`Invoices_idInvoices1`)
    REFERENCES `mydb`.`Invoices` (`idInvoices`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customers_Cars1`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `mydb`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salesperson` (
  `idSalesperson` INT NOT NULL,
  `Staff ID` INT NULL,
  `Name` VARCHAR(25) NULL,
  `Store` VARCHAR(20) NULL,
  PRIMARY KEY (`idSalesperson`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson_has_Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salesperson_has_Customers` (
  `Salesperson_idSalesperson` INT NOT NULL,
  `Customers_idCustomers` INT NOT NULL,
  `Customers_Invoices_idInvoices` INT NOT NULL,
  PRIMARY KEY (`Salesperson_idSalesperson`, `Customers_idCustomers`, `Customers_Invoices_idInvoices`),
  INDEX `fk_Salesperson_has_Customers_Customers1_idx` (`Customers_idCustomers` ASC, `Customers_Invoices_idInvoices` ASC) VISIBLE,
  INDEX `fk_Salesperson_has_Customers_Salesperson1_idx` (`Salesperson_idSalesperson` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_has_Customers_Salesperson1`
    FOREIGN KEY (`Salesperson_idSalesperson`)
    REFERENCES `mydb`.`Salesperson` (`idSalesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Salesperson_has_Customers_Customers1`
    FOREIGN KEY (`Customers_idCustomers` , `Customers_Invoices_idInvoices`)
    REFERENCES `mydb`.`Customers` (`idCustomers` , `Invoices_idInvoices`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars_has_Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Cars_has_Customers` (
  `Cars_idCars` INT NOT NULL,
  `Customers_idCustomers` INT NOT NULL,
  `Customers_Invoices_idInvoices` INT NOT NULL,
  PRIMARY KEY (`Cars_idCars`, `Customers_idCustomers`, `Customers_Invoices_idInvoices`),
  INDEX `fk_Cars_has_Customers_Customers1_idx` (`Customers_idCustomers` ASC, `Customers_Invoices_idInvoices` ASC) VISIBLE,
  INDEX `fk_Cars_has_Customers_Cars1_idx` (`Cars_idCars` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_has_Customers_Cars1`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `mydb`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_has_Customers_Customers1`
    FOREIGN KEY (`Customers_idCustomers` , `Customers_Invoices_idInvoices`)
    REFERENCES `mydb`.`Customers` (`idCustomers` , `Invoices_idInvoices`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson_has_Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salesperson_has_Invoices` (
  `Salesperson_idSalesperson` INT NOT NULL,
  `Invoices_idInvoices` INT NOT NULL,
  PRIMARY KEY (`Salesperson_idSalesperson`, `Invoices_idInvoices`),
  INDEX `fk_Salesperson_has_Invoices_Invoices1_idx` (`Invoices_idInvoices` ASC) VISIBLE,
  INDEX `fk_Salesperson_has_Invoices_Salesperson1_idx` (`Salesperson_idSalesperson` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_has_Invoices_Salesperson1`
    FOREIGN KEY (`Salesperson_idSalesperson`)
    REFERENCES `mydb`.`Salesperson` (`idSalesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Salesperson_has_Invoices_Invoices1`
    FOREIGN KEY (`Invoices_idInvoices`)
    REFERENCES `mydb`.`Invoices` (`idInvoices`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars_has_Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Cars_has_Invoices` (
  `Cars_idCars` INT NOT NULL,
  `Invoices_idInvoices` INT NOT NULL,
  PRIMARY KEY (`Cars_idCars`, `Invoices_idInvoices`),
  INDEX `fk_Cars_has_Invoices_Invoices1_idx` (`Invoices_idInvoices` ASC) VISIBLE,
  INDEX `fk_Cars_has_Invoices_Cars1_idx` (`Cars_idCars` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_has_Invoices_Cars1`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `mydb`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_has_Invoices_Invoices1`
    FOREIGN KEY (`Invoices_idInvoices`)
    REFERENCES `mydb`.`Invoices` (`idInvoices`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
