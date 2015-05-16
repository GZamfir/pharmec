DROP TABLE IF EXISTS `#__partner`;

CREATE TABLE `#__partner` (
	`id`       INT(11)     NOT NULL AUTO_INCREMENT,
	`message` VARCHAR(25) NOT NULL,
	`published` tinyint(4) NOT NULL,
	PRIMARY KEY (`id`)
)
	ENGINE =MyISAM
	AUTO_INCREMENT =0
	DEFAULT CHARSET =utf8;

INSERT INTO `#__partner` (`message`) VALUES
(' Partner!'),
('Good bye Partner!');

INSERT INTO `#__content_types` (`type_title`,`type_alias`,`table`,`field_mappings`) VALUES
	(' Partner Tags','com_partners.partner',
	 '{
		"special": {
			"dbtable": "#__partner",
			"key": "id",
			"type": "partner",
			"prefix": "partnerTable",
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
