-- MySQL Workbench Synchronization
-- Generated: 2025-04-19 15:49
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Morrisco.net

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `sql_store`.`order_items` 
ADD COLUMN `order_item_notes_note_id` INT(11) NOT NULL AFTER `unit_price`,
ADD INDEX `fk_order_items_order_item_notes1_idx` (`order_item_notes_note_id` ASC) VISIBLE;
;

ALTER TABLE `sql_store`.`order_items` 
ADD CONSTRAINT `fk_order_items_order_item_notes1`
  FOREIGN KEY (`order_item_notes_note_id`)
  REFERENCES `sql_store`.`order_item_notes` (`note_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
