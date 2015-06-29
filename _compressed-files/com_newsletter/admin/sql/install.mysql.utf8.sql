DROP TABLE IF EXISTS `#__booking`;

CREATE TABLE `#__booking` (
	`id`       INT(11)     NOT NULL AUTO_INCREMENT,
	`name_surname` VARCHAR(100) NOT NULL,
	`company` VARCHAR(100) NOT NULL,
	`phone` VARCHAR(100) NOT NULL,
	`city` VARCHAR(100) NOT NULL,
	`email` VARCHAR(100) NOT NULL,
	`message` VARCHAR(100) NOT NULL,
	`service_title` VARCHAR(100) NOT NULL,
	`published` tinyint(4) NOT NULL,
	PRIMARY KEY (`id`)
)
	ENGINE =MyISAM
	AUTO_INCREMENT =0
	DEFAULT CHARSET =utf8;


