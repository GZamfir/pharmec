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