-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema movie_shop
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema movie_shop
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `movie_shop` DEFAULT CHARACTER SET utf8 ;
USE `movie_shop` ;

-- -----------------------------------------------------
-- Table `movie_shop`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_shop`.`customer` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `phone-number` VARCHAR(45) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movie_shop`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_shop`.`movies` (
  `movie_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `quantities` TINYINT NOT NULL,
  `daily_rental_rate` FLOAT NOT NULL,
  `barcode` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`movie_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movie_shop`.`coupon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_shop`.`coupon` (
  `coupon_id` INT NOT NULL AUTO_INCREMENT,
  `couponcode` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  `discount` INT NOT NULL,
  PRIMARY KEY (`coupon_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movie_shop`.`rental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_shop`.`rental` (
  `rental_id` INT NOT NULL AUTO_INCREMENT,
  `rental_date` DATE NOT NULL,
  `return_date` DATE NOT NULL,
  `customer_customer_id` INT NOT NULL,
  `coupon_coupon_id` INT NOT NULL,
  `movies_movie_id` INT NOT NULL,
  PRIMARY KEY (`rental_id`, `customer_customer_id`, `movies_movie_id`),
  INDEX `fk_rental_customer_idx` (`customer_customer_id` ASC) VISIBLE,
  INDEX `fk_rental_coupon1_idx` (`coupon_coupon_id` ASC) VISIBLE,
  INDEX `fk_rental_movies1_idx` (`movies_movie_id` ASC) VISIBLE,
  CONSTRAINT `fk_rental_customer`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `movie_shop`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_rental_coupon1`
    FOREIGN KEY (`coupon_coupon_id`)
    REFERENCES `movie_shop`.`coupon` (`coupon_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_rental_movies1`
    FOREIGN KEY (`movies_movie_id`)
    REFERENCES `movie_shop`.`movies` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movie_shop`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_shop`.`role` (
  `role_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`role_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movie_shop`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_shop`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `last_login` DATETIME NOT NULL,
  `role_role_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `role_role_id`),
  INDEX `fk_users_role1_idx` (`role_role_id` ASC) VISIBLE,
  CONSTRAINT `fk_users_role1`
    FOREIGN KEY (`role_role_id`)
    REFERENCES `movie_shop`.`role` (`role_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
