SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `turismo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `turismo`;

-- -----------------------------------------------------
-- Table `turismo`.`Destino_Turistico`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `turismo`.`Destino_Turistico` (
  `IdDestinoTuristico` INT NOT NULL AUTO_INCREMENT ,
  `NombreDestino` VARCHAR(100) NULL ,
  `Distrito` VARCHAR(100) NULL ,
  `Provincia` VARCHAR(100) NULL ,
  `Departamento` VARCHAR(100) NULL ,
  PRIMARY KEY (`IdDestinoTuristico`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `turismo`.`Responsable`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `turismo`.`Responsable` (
  `IdResponsable` INT NOT NULL AUTO_INCREMENT ,
  `Dni` VARCHAR(9) NULL ,
  `Apellidos` VARCHAR(100) NULL ,
  `Nombres` VARCHAR(100) NULL ,
  `Password` VARCHAR(100) NULL ,
  PRIMARY KEY (`IdResponsable`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `turismo`.`Usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `turismo`.`Usuario` (
  `IdUsuario` INT NOT NULL AUTO_INCREMENT ,
  `Dni` VARCHAR(9) NULL ,
  `Apellidos` VARCHAR(100) NULL ,
  `Nombres` VARCHAR(100) NULL ,
  `Password` VARCHAR(100) NULL ,
  PRIMARY KEY (`IdUsuario`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `turismo`.`Establecimiento`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `turismo`.`Establecimiento` (
  `IdEstablecimiento` INT NOT NULL AUTO_INCREMENT ,
  `NombreEstablecimiento` VARCHAR(100) NULL ,
  `Direccion` VARCHAR(255) NULL ,
  `IdDestinoTuristico` INT NULL ,
  `IdResponsable` INT NULL ,
  `IdUsuario` INT NULL ,
  `FechaAsignacion` DATE NULL ,
  PRIMARY KEY (`IdEstablecimiento`) ,
  INDEX `fk_Establecimiento_Destino_Turistico` (`IdDestinoTuristico` ASC) ,
  INDEX `fk_Establecimiento_Responsable` (`IdResponsable` ASC) ,
  INDEX `fk_Establecimiento_Usuario` (`IdUsuario` ASC) ,
  CONSTRAINT `fk_Establecimiento_Destino_Turistico`
    FOREIGN KEY (`IdDestinoTuristico` )
    REFERENCES `turismo`.`Destino_Turistico` (`IdDestinoTuristico` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Establecimiento_Responsable`
    FOREIGN KEY (`IdResponsable` )
    REFERENCES `turismo`.`Responsable` (`IdResponsable` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Establecimiento_Usuario`
    FOREIGN KEY (`IdUsuario` )
    REFERENCES `turismo`.`Usuario` (`IdUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `turismo`.`Capacitacion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `turismo`.`Capacitacion` (
  `IdCapacitacion` INT NOT NULL AUTO_INCREMENT ,
  `IdEstablecimiento` INT NULL ,
  `NombreCapacitacion` VARCHAR(100) NULL ,
  `Fecha` DATE NULL ,
  PRIMARY KEY (`IdCapacitacion`) ,
  INDEX `fk_Capacitacion_Establecimiento` (`IdEstablecimiento` ASC) ,
  CONSTRAINT `fk_Capacitacion_Establecimiento`
    FOREIGN KEY (`IdEstablecimiento` )
    REFERENCES `turismo`.`Establecimiento` (`IdEstablecimiento` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `turismo`.`Correo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `turismo`.`Correo` (
  `IdCorreo` INT NOT NULL AUTO_INCREMENT ,
  `IdResponsableRemitente` INT NULL ,
  `IdResponsableDestinatario` INT NULL ,
  `Asunto` VARCHAR(255) NULL ,
  `Cuerpo` TEXT NULL ,
  `Fecha` DATE NULL ,
  PRIMARY KEY (`IdCorreo`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
