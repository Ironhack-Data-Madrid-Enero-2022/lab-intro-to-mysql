SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';



CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema publications
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `VIN` CHAR(17) NOT NULL,
  `MANUFACTURER` VARCHAR(45) NULL,
  `MODEL` VARCHAR(45) NULL,
  `YEAR` YEAR(4) NULL,
  `COLOR` VARCHAR(45) NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Custumer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Custumer` (
  `idCustumer` INT NOT NULL,
  `NAME` VARCHAR(45) NULL,
  `PHONENUMBER` INT NULL,
  `EMAIL` VARCHAR(45) NULL,
  `ADRESS` VARCHAR(45) NULL,
  `CITY` VARCHAR(45) NULL,
  `STATE/PROVINCE` VARCHAR(10) NULL,
  `COUNTRY` VARCHAR(45) NULL,
  `ZIP/POSTAL CODE` CHAR(5) NULL,
  `Custumercol` VARCHAR(45) NULL,
  PRIMARY KEY (`idCustumer`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson` (
  `StaffID` INT NOT NULL,
  `NAME` VARCHAR(45) NULL,
  `STORE` VARCHAR(45) NULL,
  PRIMARY KEY (`StaffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `InvoiceNumber` INT NOT NULL,
  `DATE` DATETIME(6) NULL,
  `Cars_VIN` CHAR(17) NOT NULL,
  `Custumer_idCustumer` INT NOT NULL,
  `Salesperson_StaffID` INT NOT NULL,
  PRIMARY KEY (`InvoiceNumber`, `Cars_VIN`, `Custumer_idCustumer`, `Salesperson_StaffID`),
  INDEX `fk_Invoices_Cars_idx` (`Cars_VIN` ASC),
  INDEX `fk_Invoices_Custumer1_idx` (`Custumer_idCustumer` ASC),
  INDEX `fk_Invoices_Salesperson1_idx` (`Salesperson_StaffID` ASC),
  CONSTRAINT `fk_Invoices_Cars`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `mydb`.`Cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Custumer1`
    FOREIGN KEY (`Custumer_idCustumer`)
    REFERENCES `mydb`.`Custumer` (`idCustumer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salesperson1`
    FOREIGN KEY (`Salesperson_StaffID`)
    REFERENCES `mydb`.`Salesperson` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
