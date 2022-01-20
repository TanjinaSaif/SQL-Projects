-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Company
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Company
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Company` DEFAULT CHARACTER SET utf8 ;
USE `Company` ;

-- -----------------------------------------------------
-- Table `Company`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company`.`staff` (
  `staff_id` INT NOT NULL,
  `s_name` VARCHAR(45) NULL,
  `funct` VARCHAR(45) NULL,
  `monthly_sal` DOUBLE NULL,
  PRIMARY KEY (`staff_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Company`.`city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company`.`city` (
  `area_no` INT NULL,
  `area_name` VARCHAR(45) NOT NULL,
  `head_staff` INT NULL,
  INDEX `staff_id_idx` (`head_staff` ASC) VISIBLE,
  PRIMARY KEY (`area_name`),
  UNIQUE INDEX `area_no_UNIQUE` (`area_no` ASC) VISIBLE,
  CONSTRAINT `staff_id`
    FOREIGN KEY (`head_staff`)
    REFERENCES `Company`.`staff` (`staff_id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Company`.`property`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company`.`property` (
  `p_id` INT NOT NULL,
  `address` VARCHAR(100) NULL,
  `type` VARCHAR(45) NULL,
  `monthly_rate` DOUBLE NULL,
  `deposit` DOUBLE NULL,
  `area` VARCHAR(45) NULL,
  PRIMARY KEY (`p_id`),
  INDEX `area_name_idx` (`area` ASC) VISIBLE,
  CONSTRAINT `area_name`
    FOREIGN KEY (`area`)
    REFERENCES `Company`.`city` (`area_name`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Company`.`landlord`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company`.`landlord` (
  `name` VARCHAR(50) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `property` INT NULL,
  INDEX `property_idx` (`property` ASC) VISIBLE,
  CONSTRAINT `propertyx`
    FOREIGN KEY (`property`)
    REFERENCES `Company`.`property` (`p_id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Company`.`tenant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company`.`tenant` (
  `t_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `cur_address` VARCHAR(45) NULL,
  `phone` VARCHAR(15) NULL,
  PRIMARY KEY (`t_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Company`.`lease`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company`.`lease` (
  `lease_no` INT NOT NULL,
  `start_date` VARCHAR(20) NULL,
  `duration_months` INT NULL,
  `property` INT NULL,
  INDEX `property_idx` (`property` ASC) VISIBLE,
  PRIMARY KEY (`lease_no`),
  CONSTRAINT `propertyy`
    FOREIGN KEY (`property`)
    REFERENCES `Company`.`property` (`p_id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Company`.`rented_property`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company`.`rented_property` (
  `tenent` INT NULL,
  `property` INT NULL,
  `lease` INT NULL,
  INDEX `property_idx` (`property` ASC) VISIBLE,
  INDEX `lease_idx` (`lease` ASC) VISIBLE,
  CONSTRAINT `tenant`
    FOREIGN KEY (`tenent`)
    REFERENCES `Company`.`tenant` (`t_id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `property`
    FOREIGN KEY (`property`)
    REFERENCES `Company`.`property` (`p_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `lease`
    FOREIGN KEY (`lease`)
    REFERENCES `Company`.`lease` (`lease_no`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Company`.`available_property`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company`.`available_property` (
  `property` INT NOT NULL,
  PRIMARY KEY (`property`),
  CONSTRAINT `property1`
    FOREIGN KEY (`property`)
    REFERENCES `Company`.`property` (`p_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

