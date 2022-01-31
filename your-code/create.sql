-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema my_db5
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema my_db5
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `my_db5` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `my_db5` ;

-- -----------------------------------------------------
-- Table `my_db5`.`Salesmen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_db5`.`Salesmen` (
  `staff_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NULL DEFAULT NULL,
  `store` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`staff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `my_db5`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_db5`.`cars` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vin` VARCHAR(20) NOT NULL,
  `manufacturer` VARCHAR(20) NULL DEFAULT NULL,
  `model` VARCHAR(20) NULL DEFAULT NULL,
  `year` VARCHAR(20) NULL DEFAULT NULL,
  `color` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `my_db5`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_db5`.`customer` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NULL DEFAULT NULL,
  `phone_number` VARCHAR(20) NULL DEFAULT NULL,
  `email` VARCHAR(20) NULL DEFAULT NULL,
  `address` VARCHAR(20) NULL DEFAULT NULL,
  `city` VARCHAR(20) NULL DEFAULT NULL,
  `state` VARCHAR(20) NULL DEFAULT NULL,
  `country` VARCHAR(20) NULL DEFAULT NULL,
  `zipcode` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `my_db5`.`invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_db5`.`invoice` (
  `invoice_number` INT NOT NULL,
  `date` VARCHAR(20) NULL DEFAULT NULL,
  `cars_id` VARCHAR(20) NOT NULL,
  `customer_customer_id` VARCHAR(20) NOT NULL,
  `Salesmen_staff_id` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`invoice_number`, `cars_id`, `customer_customer_id`, `Salesmen_staff_id`),
  INDEX `fk_invoice_cars1_idx` (`cars_id` ASC) VISIBLE,
  INDEX `fk_invoice_customer1_idx` (`customer_customer_id` ASC) VISIBLE,
  INDEX `fk_invoice_Salesmen2_idx` (`Salesmen_staff_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoice_cars1`
    FOREIGN KEY (`cars_id`)
    REFERENCES `my_db5`.`cars` (`id`),
  CONSTRAINT `fk_invoice_customer1`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `my_db5`.`customer` (`customer_id`),
  CONSTRAINT `fk_invoice_Salesmen2`
    FOREIGN KEY (`Salesmen_staff_id`)
    REFERENCES `my_db5`.`Salesmen` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

