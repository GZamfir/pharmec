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