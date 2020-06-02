-- MySQL Script generated by MySQL Workbench
-- Mon Jun  1 21:53:25 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema SoatDB
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `SoatDB` ;

-- -----------------------------------------------------
-- Schema SoatDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SoatDB` DEFAULT CHARACTER SET utf8 ;
USE `SoatDB` ;

-- -----------------------------------------------------
-- Table `SoatDB`.`role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SoatDB`.`role` ;

CREATE TABLE IF NOT EXISTS `SoatDB`.`role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SoatDB`.`person`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SoatDB`.`person` ;

CREATE TABLE IF NOT EXISTS `SoatDB`.`person` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `names` VARCHAR(80) NOT NULL,
  `lastNames` VARCHAR(80) NOT NULL,
  `documentType` VARCHAR(50) NOT NULL,
  `document` VARCHAR(45) NOT NULL,
  `cellPhone` VARCHAR(30) NOT NULL,
  `telephone` VARCHAR(30) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `birthday` DATE NULL,
  `creationDate` DATETIME NOT NULL,
  `idRole` INT NOT NULL,
  `idCompany` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SoatDB`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SoatDB`.`user` ;

CREATE TABLE IF NOT EXISTS `SoatDB`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nickname` VARCHAR(60) NOT NULL,
  `password` VARCHAR(60) NOT NULL,
  `state` INT NOT NULL,
  `photo` VARCHAR(100) NOT NULL,
  `idPerson` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SoatDB`.`accessHistory`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SoatDB`.`accessHistory` ;

CREATE TABLE IF NOT EXISTS `SoatDB`.`accessHistory` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `login` DATETIME NOT NULL,
  `logout` DATETIME NOT NULL,
  `numHours` VARCHAR(15) NOT NULL,
  `ipAddress` VARCHAR(30) NOT NULL,
  `device` VARCHAR(20) NOT NULL,
  `browser` VARCHAR(30) NOT NULL,
  `idUser` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SoatDB`.`module`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SoatDB`.`module` ;

CREATE TABLE IF NOT EXISTS `SoatDB`.`module` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SoatDB`.`userModules`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SoatDB`.`userModules` ;

CREATE TABLE IF NOT EXISTS `SoatDB`.`userModules` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `state` INT NOT NULL,
  `idUser` INT NOT NULL,
  `idModule` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SoatDB`.`tpoVehicle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SoatDB`.`tpoVehicle` ;

CREATE TABLE IF NOT EXISTS `SoatDB`.`tpoVehicle` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SoatDB`.`vehicle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SoatDB`.`vehicle` ;

CREATE TABLE IF NOT EXISTS `SoatDB`.`vehicle` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `model` INT NOT NULL,
  `brand` INT NOT NULL,
  `tpoVehicle` INT NOT NULL,
  `idPerson` INT NOT NULL,
  `idTpoVehicle` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SoatDB`.`soat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SoatDB`.`soat` ;

CREATE TABLE IF NOT EXISTS `SoatDB`.`soat` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `dateBuy` DATETIME NOT NULL,
  `dateExpire` DATETIME NOT NULL,
  `price` INT NOT NULL,
  `idVehicle` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `SoatDB`.`role`
-- -----------------------------------------------------
START TRANSACTION;
USE `SoatDB`;
INSERT INTO `SoatDB`.`role` (`id`, `name`) VALUES (1, 'Admin');
INSERT INTO `SoatDB`.`role` (`id`, `name`) VALUES (2, 'Jefe de Ventas');
INSERT INTO `SoatDB`.`role` (`id`, `name`) VALUES (3, 'Jefe de Servicios');
INSERT INTO `SoatDB`.`role` (`id`, `name`) VALUES (4, 'Asistente de Ventas');
INSERT INTO `SoatDB`.`role` (`id`, `name`) VALUES (5, 'Asistente de Mantenimiento');
INSERT INTO `SoatDB`.`role` (`id`, `name`) VALUES (6, 'Vendedor');
INSERT INTO `SoatDB`.`role` (`id`, `name`) VALUES (7, 'Cliente');
INSERT INTO `SoatDB`.`role` (`id`, `name`) VALUES (8, 'Proveedor');
INSERT INTO `SoatDB`.`role` (`id`, `name`) VALUES (9, 'Prospecto');

COMMIT;


-- -----------------------------------------------------
-- Data for table `SoatDB`.`person`
-- -----------------------------------------------------
START TRANSACTION;
USE `SoatDB`;
INSERT INTO `SoatDB`.`person` (`id`, `names`, `lastNames`, `documentType`, `document`, `cellPhone`, `telephone`, `email`, `address`, `city`, `birthday`, `creationDate`, `idRole`, `idCompany`) VALUES (1, 'Test', 'Test', 'CC', '10348464813', '31982654131', '4312184', 'hdduquec@gmail.com', 'Calle 3123 sad # 58-30', 'Bogota', '1990-10-11', '2018-10-11', 1, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `SoatDB`.`user`
-- -----------------------------------------------------
START TRANSACTION;
USE `SoatDB`;
INSERT INTO `SoatDB`.`user` (`id`, `nickname`, `password`, `state`, `photo`, `idPerson`) VALUES (1, 'hakem', 'hakem', 1, 'view/img/users/default/anonymous.png', 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `SoatDB`.`module`
-- -----------------------------------------------------
START TRANSACTION;
USE `SoatDB`;
INSERT INTO `SoatDB`.`module` (`id`, `name`) VALUES (1, 'Users');

COMMIT;


-- -----------------------------------------------------
-- Data for table `SoatDB`.`tpoVehicle`
-- -----------------------------------------------------
START TRANSACTION;
USE `SoatDB`;
INSERT INTO `SoatDB`.`tpoVehicle` (`id`, `name`) VALUES (1, 'Carro');
INSERT INTO `SoatDB`.`tpoVehicle` (`id`, `name`) VALUES (2, 'Camion');
INSERT INTO `SoatDB`.`tpoVehicle` (`id`, `name`) VALUES (3, 'Bus');
INSERT INTO `SoatDB`.`tpoVehicle` (`id`, `name`) VALUES (4, 'Moto');

COMMIT;

