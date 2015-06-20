<?php

class modPharmecFooterBookingHelper {

	var $db;

	public function __construct() {
		$this->db = JFactory::getDbo();

	}

	function getListOfServices(){
		//get the categories first
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		$query->select('title')
			->from($db->quoteName('#__categories', 'c'))
			->where("c.published = 1")
			->where('c.extension = "com_service"');
		$db->setQuery($query);
		$list_of_categories = $db->loadObjectList();

		//get the services now
		$query = $db->getQuery(true);
		$query->select('title')
			->from($db->quoteName('#__service', 's'))
			->where("s.published = 1");
		$db->setQuery($query);
		$list_of_services = $db->loadObjectList();

		$returned_result = array_merge($list_of_categories,$list_of_services);
		return $returned_result;
	}
}