-- MySQL Workbench Synchronization
-- Generated: 2025-04-19 15:38
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Morrisco.net

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER SCHEMA `school`  DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci ;

ALTER TABLE `school`.`courses` 
DROP FOREIGN KEY `fk_courses_instructor`;

ALTER TABLE `school`.`entrollment` 
DROP FOREIGN KEY `fk_entrollment_students`,
DROP FOREIGN KEY `fk_entrollment_courses`;

ALTER TABLE `school`.`course_tag` 
DROP FOREIGN KEY `fk_course_tag_tags`,
DROP FOREIGN KEY `fk_course_tag_courses`;

ALTER TABLE `school`.`students` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `school`.`courses` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
DROP COLUMN `instructor_id`,
ADD COLUMN `instructor_id` INT(11) NOT NULL AFTER `price`,
ADD INDEX `fk_courses_instructor1_idx` (`instructor_id` ASC) VISIBLE,
DROP INDEX `fk_courses_instructor1_idx` ;
;

ALTER TABLE `school`.`entrollment` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
DROP COLUMN `course_id`,
DROP COLUMN `student_id`,
ADD COLUMN `student_id` INT(11) NOT NULL FIRST,
ADD COLUMN `course_id` INT(11) NOT NULL AFTER `student_id`,
ADD COLUMN `coupon` VARCHAR(50) NULL DEFAULT NULL AFTER `price`,
ADD INDEX `fk_entrollment_students_idx` (`student_id` ASC) VISIBLE,
ADD INDEX `fk_entrollment_courses1_idx` (`course_id` ASC) VISIBLE,
DROP INDEX `fk_entrollment_courses1_idx` ,
DROP INDEX `fk_entrollment_students_idx` ;
ALTER TABLE `school`.`entrollment` ALTER INDEX `PRIMARY` VISIBLE;

ALTER TABLE `school`.`tags` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `school`.`course_tag` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
DROP COLUMN `tag_id`,
DROP COLUMN `course_id`,
ADD COLUMN `course_id` INT(11) NOT NULL FIRST,
ADD COLUMN `tag_id` TINYINT(4) NOT NULL AFTER `course_id`,
ADD INDEX `fk_course_tag_courses1_idx` (`course_id` ASC) VISIBLE,
ADD INDEX `fk_course_tag_tags1_idx` (`tag_id` ASC) VISIBLE,
DROP INDEX `fk_course_tag_tags1_idx` ,
DROP INDEX `fk_course_tag_courses1_idx` ;
ALTER TABLE `school`.`entrollment` ALTER INDEX `PRIMARY` VISIBLE;
ALTER TABLE `school`.`course_tag` ALTER INDEX `PRIMARY` VISIBLE;

ALTER TABLE `school`.`instructor` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `school`.`courses` 
ADD CONSTRAINT `fk_courses_instructor`
  FOREIGN KEY (`instructor_id`)
  REFERENCES `school`.`instructor` (`instructor_id`)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

ALTER TABLE `school`.`entrollment` 
ADD CONSTRAINT `fk_entrollment_students`
  FOREIGN KEY (`student_id`)
  REFERENCES `school`.`students` (`student_id`)
  ON DELETE RESTRICT
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk_entrollment_courses`
  FOREIGN KEY (`course_id`)
  REFERENCES `school`.`courses` (`course_id`)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

ALTER TABLE `school`.`course_tag` 
ADD CONSTRAINT `fk_course_tag_courses`
  FOREIGN KEY (`course_id`)
  REFERENCES `school`.`courses` (`course_id`)
  ON DELETE RESTRICT
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk_course_tag_tags`
  FOREIGN KEY (`tag_id`)
  REFERENCES `school`.`tags` (`tag_id`)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
