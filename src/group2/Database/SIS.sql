-- MySQL Script generated by MySQL Workbench
-- Mon Apr 13 21:34:26 2020
-- Model: New Model    Version: 1.0
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
-- Table `mydb`.`Address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Address` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `AddressNumber` VARCHAR(45) NULL DEFAULT NULL,
  `Suite` VARCHAR(45) NULL DEFAULT NULL,
  `StreetName` VARCHAR(45) NULL DEFAULT NULL,
  `City` VARCHAR(45) NULL DEFAULT NULL,
  `State` VARCHAR(45) NULL DEFAULT NULL,
  `ZipCode` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Course` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `CourseName` VARCHAR(120) NULL DEFAULT NULL,
  `Subject` VARCHAR(45) NULL DEFAULT NULL,
  `CourseNumber` INT NULL DEFAULT NULL,
  `CreditHours` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 22
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Student` (
  `id` INT NOT NULL,
  `FirstName` VARCHAR(45) NULL DEFAULT NULL,
  `MiddleName` VARCHAR(45) NULL DEFAULT NULL,
  `LastName` VARCHAR(45) NULL DEFAULT NULL,
  `PhoneNumber` VARCHAR(45) NULL DEFAULT NULL,
  `Email` VARCHAR(120) NULL DEFAULT NULL,
  `Social` INT NULL DEFAULT NULL,
  `GPA` VARCHAR(45) NULL DEFAULT NULL,
  `Address_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Address_id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_Student_Address_idx` (`Address_id` ASC) VISIBLE,
  CONSTRAINT `fk_Student_Address`
    FOREIGN KEY (`Address_id`)
    REFERENCES `mydb`.`Address` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Credentials`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Credentials` (
  `Student_id` INT NOT NULL,
  `IDHash` VARCHAR(100) NOT NULL,
  `PasswordHash` VARCHAR(100) NOT NULL,
  `AuthenticationHash` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Student_id`),
  UNIQUE INDEX `IDHash_UNIQUE` (`IDHash` ASC) VISIBLE,
  UNIQUE INDEX `PasswordHash_UNIQUE` (`PasswordHash` ASC) VISIBLE,
  UNIQUE INDEX `AuthenticationHash_UNIQUE` (`AuthenticationHash` ASC) VISIBLE,
  CONSTRAINT `fk_Credentials_Student1`
    FOREIGN KEY (`Student_id`)
    REFERENCES `mydb`.`Student` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`EmergencyContact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EmergencyContact` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(45) NULL DEFAULT NULL,
  `LastName` VARCHAR(45) NULL DEFAULT NULL,
  `PhoneNumber` VARCHAR(10) NULL DEFAULT NULL,
  `Email` VARCHAR(120) NULL DEFAULT NULL,
  `Address_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Address_id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_EmergencyContact_Address1_idx` (`Address_id` ASC) VISIBLE,
  CONSTRAINT `fk_EmergencyContact_Address1`
    FOREIGN KEY (`Address_id`)
    REFERENCES `mydb`.`Address` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Instructor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Instructor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(45) NULL DEFAULT NULL,
  `LastName` VARCHAR(45) NULL DEFAULT NULL,
  `OfficeBuilding` VARCHAR(45) NULL DEFAULT NULL,
  `OfficeNumber` VARCHAR(5) NULL DEFAULT NULL,
  `Email` VARCHAR(120) NULL DEFAULT NULL,
  `PhoneNumber` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Section`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Section` (
  `CRN` INT NOT NULL,
  `Semester` VARCHAR(45) NOT NULL,
  `StartDate` DATE NULL DEFAULT NULL,
  `EndDate` DATE NULL DEFAULT NULL,
  `MeetingTimes` VARCHAR(45) NULL DEFAULT NULL,
  `StartTime` VARCHAR(45) NULL DEFAULT NULL,
  `EndTime` VARCHAR(45) NULL DEFAULT NULL,
  `Building` VARCHAR(45) NULL,
  `Room` VARCHAR(45) NULL,
  `InstructionalMethod` VARCHAR(45) NULL DEFAULT NULL,
  `Course_id` INT NOT NULL,
  `Instructor_id` INT NOT NULL,
  PRIMARY KEY (`CRN`, `Course_id`, `Instructor_id`),
  UNIQUE INDEX `CRN_UNIQUE` (`CRN` ASC) VISIBLE,
  INDEX `fk_Section_Course1_idx` (`Course_id` ASC) VISIBLE,
  INDEX `fk_Section_Instructor1_idx` (`Instructor_id` ASC) VISIBLE,
  CONSTRAINT `fk_Section_Course1`
    FOREIGN KEY (`Course_id`)
    REFERENCES `mydb`.`Course` (`id`),
  CONSTRAINT `fk_Section_Instructor1`
    FOREIGN KEY (`Instructor_id`)
    REFERENCES `mydb`.`Instructor` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Registration`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Registration` (
  `Student_id` INT NOT NULL,
  `Section_CRN` INT NOT NULL,
  PRIMARY KEY (`Student_id`, `Section_CRN`),
  INDEX `fk_Student_has_Section_Section1_idx` (`Section_CRN` ASC) VISIBLE,
  INDEX `fk_Student_has_Section_Student1_idx` (`Student_id` ASC) VISIBLE,
  CONSTRAINT `fk_Student_has_Section_Section1`
    FOREIGN KEY (`Section_CRN`)
    REFERENCES `mydb`.`Section` (`CRN`),
  CONSTRAINT `fk_Student_has_Section_Student1`
    FOREIGN KEY (`Student_id`)
    REFERENCES `mydb`.`Student` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`StudentEmergencyContact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`StudentEmergencyContact` (
  `Student_id` INT NOT NULL,
  `EmergencyContact_id` INT NOT NULL,
  PRIMARY KEY (`Student_id`, `EmergencyContact_id`),
  INDEX `fk_Student_has_EmergencyContact_EmergencyContact1_idx` (`EmergencyContact_id` ASC) VISIBLE,
  INDEX `fk_Student_has_EmergencyContact_Student1_idx` (`Student_id` ASC) VISIBLE,
  CONSTRAINT `fk_Student_has_EmergencyContact_EmergencyContact1`
    FOREIGN KEY (`EmergencyContact_id`)
    REFERENCES `mydb`.`EmergencyContact` (`id`),
  CONSTRAINT `fk_Student_has_EmergencyContact_Student1`
    FOREIGN KEY (`Student_id`)
    REFERENCES `mydb`.`Student` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;