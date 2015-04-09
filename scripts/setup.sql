SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

/* Create database */
CREATE SCHEMA IF NOT EXISTS `foosball` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `foosball` ;

/* Create table */
-- -----------------------------------------------------
-- Table `foosball`.`game`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `foosball`.`game` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` ENUM('start','end','restart') NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'To store game data';


-- -----------------------------------------------------
-- Table `foosball`.`goal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `foosball`.`goal` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `game_id` INT NOT NULL,
  `type` ENUM('teamOne','teamTwo') NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_goal_game_idx` (`game_id` ASC),
  CONSTRAINT `fk_goal_game`
    FOREIGN KEY (`game_id`)
    REFERENCES `foosball`.`game` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'To store goals';


-- -----------------------------------------------------
-- Table `foosball`.`event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `foosball`.`event` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(255) NULL,
  `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'To store event data';


-- -----------------------------------------------------
-- Table `foosball`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `foosball`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NULL COMMENT 'Hold user data',
  `name_nick` VARCHAR(45) NULL,
  `name_first` VARCHAR(45) NULL,
  `name_last` VARCHAR(45) NULL,
  `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Hold user data',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB
COMMENT = 'To hold user information';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


/* Create User */
USE mysql;
CREATE USER 'foosball'@'%' IDENTIFIED BY 'YOUR_PASSWORD';
GRANT ALL PRIVILEGES ON foosball.* TO 'foosball'@'%' WITH GRANT OPTION;
