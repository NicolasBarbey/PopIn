
# This is a fix for InnoDB in MySQL >= 4.1.x
# It "suspends judgement" for fkey relationships until are tables are set.
SET FOREIGN_KEY_CHECKS = 0;

-- ---------------------------------------------------------------------
-- pop_in_campaign
-- ---------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pop_in_campaign`
(
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `start` DATETIME,
    `end` DATETIME,
    `content_source_type` VARCHAR(255),
    `content_source_id` VARCHAR(255),
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;

# This restores the fkey checks, after having unset them earlier
SET FOREIGN_KEY_CHECKS = 1;
