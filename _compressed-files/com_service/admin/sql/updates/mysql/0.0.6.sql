DROP TABLE IF EXISTS `#__service`;

CREATE TABLE `#__service` (
	`id`       INT(11)     NOT NULL AUTO_INCREMENT,
	`message` VARCHAR(25) NOT NULL,
	`published` tinyint(4) NOT NULL,
	PRIMARY KEY (`id`)
)
	ENGINE =MyISAM
	AUTO_INCREMENT =0
	DEFAULT CHARSET =utf8;

INSERT INTO `#__service` (`message`) VALUES
(' Service!'),
('Good bye Service!');