CREATE TABLE IF NOT EXISTS `HIRE_MUSICIAN`.`User` (
  `UserID` INT NOT NULL,
  `Username` VARCHAR(255) NULL,
  `Password` VARCHAR(45) NULL,
  `Email` VARCHAR(255) NULL,
  PRIMARY KEY (`UserID`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `HIRE_MUSICIAN`.`Musician_Profile` (
  `MusicianID` INT NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Genre` VARCHAR(255) NULL DEFAULT NULL,
  `Experience` DECIMAL(2,2) NULL DEFAULT NULL,
  `Skills` VARCHAR(255) NULL DEFAULT NULL,
  `Links` VARCHAR(255) NULL DEFAULT NULL,
  `FK_UserID_Musician` INT NULL DEFAULT NULL,
  PRIMARY KEY (`MusicianID`),
  INDEX `UserID_idx` (`FK_UserID_Musician` ASC) VISIBLE,
  CONSTRAINT `FK_UserID_Musician`
    FOREIGN KEY (`FK_UserID_Musician`)
    REFERENCES `HIRE_MUSICIAN`.`User` (`UserID`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `HIRE_MUSICIAN`.`Employer_Profile` (
  `EmployerID` INT NOT NULL,
  `CompanyName` VARCHAR(45) NULL DEFAULT NULL,
  `ContactInfo` INT NULL DEFAULT NULL,
  `FK_UserID_Employer` INT NULL DEFAULT NULL,
  PRIMARY KEY (`EmployerID`),
  INDEX `UserID_idx` (`FK_UserID_Employer` ASC) VISIBLE,
  CONSTRAINT `FK_UserID_Employer`
    FOREIGN KEY (`FK_UserID_Employer`)
    REFERENCES `HIRE_MUSICIAN`.`User` (`UserID`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `HIRE_MUSICIAN`.`Job_Listing` (
  `JobID` INT NOT NULL,
  `JobTitle` VARCHAR(45) NULL DEFAULT NULL,
  `Description` VARCHAR(255) NULL DEFAULT NULL,
  `Payment` DECIMAL(9,2) NULL DEFAULT NULL,
  `Location` VARCHAR(255) NULL DEFAULT NULL,
  `FK_EmployerID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`JobID`),
  INDEX `EmployerID_idx` (`FK_EmployerID` ASC) VISIBLE,
  CONSTRAINT `FK_EmployerID`
    FOREIGN KEY (`FK_EmployerID`)
    REFERENCES `HIRE_MUSICIAN`.`Employer_Profile` (`EmployerID`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `HIRE_MUSICIAN`.`Job_Application` (
  `ApplicationID` INT NOT NULL,
  `FK_JobID` INT NULL DEFAULT NULL,
  `FK_MusicianID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`ApplicationID`),
  INDEX `JobID_idx` (`FK_JobID` ASC) VISIBLE,
  INDEX `MusicianID_idx` (`FK_MusicianID` ASC) VISIBLE,
  CONSTRAINT `FK_JobID`
    FOREIGN KEY (`FK_JobID`)
    REFERENCES `HIRE_MUSICIAN`.`Job_Listing` (`JobID`),
  CONSTRAINT `FK_MusicianID`
    FOREIGN KEY (`FK_MusicianID`)
    REFERENCES `HIRE_MUSICIAN`.`Musician_Profile` (`MusicianID`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `HIRE_MUSICIAN`.`Messages` (
  `MessageID` INT NOT NULL,
  `FK_UserID_Message` INT NOT NULL,
  PRIMARY KEY (`MessageID`),
  INDEX `UserID_idx` (`FK_UserID_Message` ASC) VISIBLE,
  CONSTRAINT `FK_UserID_Message`
    FOREIGN KEY (`FK_UserID_Message`)
    REFERENCES `HIRE_MUSICIAN`.`User` (`UserID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

/* TO CHANGE DATATYPE */
ALTER TABLE Employer_Profile
DROP COLUMN ContactInfo;
ALTER TABLE Employer_Profile
ADD COLUMN ContactInfo VARCHAR(45);

ALTER TABLE Musician_Profile
DROP COLUMN Experience;
ALTER TABLE Musician_Profile
ADD COLUMN Experience DOUBLE;

ALTER TABLE Musician_Profile RENAME COLUMN Experience TO Experience_in_Years;

ALTER TABLE Musician_Profile RENAME COLUMN Experience TO Experience_in_Years;
ALTER TABLE Job_Listing RENAME COLUMN Payment TO Payment_in_INR;
