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

INSERT INTO `#__content_types` (`type_title`,`type_alias`,`table`,`field_mappings`) VALUES
	(' Service Tags','com_services.service',
	 '{
		"special": {
			"dbtable": "#__service",
			"key": "id",
			"type": "service",
			"prefix": "serviceTable",
			"config": "array()"
		},
		"common": {
			"dbtable": "#__ucm_content",
			"key": "ucm_id",
			"type": "Corecontent",
			"prefix": "JTable",
			"config": "array()"
		}
	}',
	 '{
  "common": {
    "core_content_item_id": "id",
    "core_title": "message",
    "core_state": "published",
    "core_params": "params",
    "core_catid": "catid",
    "core_xreference": "null",
    "asset_id": "null"
  },
  "special": {
    "message": "message"
  }
}');
