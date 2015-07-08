DROP TABLE IF EXISTS `#__book`;

CREATE TABLE `#__book` (
	`id`       INT(11)     NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NOT NULL,
	`author` VARCHAR(255) NOT NULL,
	`genre` VARCHAR(255) NOT NULL,
	`cover` VARCHAR(255),
	`reader` VARCHAR(255) NOT NULL,
	`summary` VARCHAR(255) NOT NULL,
	`votes` INT(11) DEFAULT 0,
	`published` tinyint(4) NOT NULL,
	PRIMARY KEY (`id`)
)
	ENGINE =MyISAM
	AUTO_INCREMENT =0
	DEFAULT CHARSET =utf8;

