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
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `idCars` INT NOT NULL,
  `Identificacion` VARCHAR(45) NULL,
  `Fabricante` VARCHAR(45) NULL,
  `Modelo` VARCHAR(45) NULL,
  `Año` YEAR(4) NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Clientes` (
  `idClientes` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Telefono` INT NULL,
  `CorreoElectronico` VARCHAR(45) NULL,
  `Direccion` VARCHAR(45) NULL,
  `Ciudad` VARCHAR(45) NULL,
  `Estado/Provincia` VARCHAR(45) NULL,
  `Pais` VARCHAR(45) NULL,
  `CodigoPostal` VARCHAR(45) NULL,
  PRIMARY KEY (`idClientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vendedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vendedores` (
  `idVendedores` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Tienda` VARCHAR(45) NULL,
  PRIMARY KEY (`idVendedores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Facturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Facturas` (
  `idFacturas` INT NOT NULL,
  `Facturascol` VARCHAR(45) NULL,
  `Clientes_idClientes` INT NOT NULL,
  `Vendedores_idVendedores` INT NOT NULL,
  `Cars_idCars` INT NOT NULL,
  PRIMARY KEY (`idFacturas`, `Clientes_idClientes`, `Vendedores_idVendedores`, `Cars_idCars`),
  INDEX `fk_Facturas_Clientes_idx` (`Clientes_idClientes` ASC) VISIBLE,
  INDEX `fk_Facturas_Vendedores1_idx` (`Vendedores_idVendedores` ASC) VISIBLE,
  INDEX `fk_Facturas_Cars1_idx` (`Cars_idCars` ASC) VISIBLE,
  CONSTRAINT `fk_Facturas_Clientes`
    FOREIGN KEY (`Clientes_idClientes`)
    REFERENCES `mydb`.`Clientes` (`idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Facturas_Vendedores1`
    FOREIGN KEY (`Vendedores_idVendedores`)
    REFERENCES `mydb`.`Vendedores` (`idVendedores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Facturas_Cars1`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `mydb`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
