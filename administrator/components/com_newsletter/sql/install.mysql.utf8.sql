DROP TABLE IF EXISTS `#__newsletter`;

CREATE TABLE `#__newsletter` (
	`id`       INT(11)     NOT NULL AUTO_INCREMENT,
	`email` VARCHAR(100) NOT NULL,
	`newsletter_type` VARCHAR(100) NOT NULL,
	`published` tinyint(4) NOT NULL,
	PRIMARY KEY (`id`)
)
	ENGINE =MyISAM
	AUTO_INCREMENT =0
	DEFAULT CHARSET =utf8;


