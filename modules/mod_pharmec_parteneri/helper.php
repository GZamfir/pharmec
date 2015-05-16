<?php

class modPharmecParteneriHelper {

	var $db;

	public function __construct() {
		$this->db = JFactory::getDbo();

	}

	public function getPartners(){
		// Initialize query
		$query = $this->db->getQuery(true);

		//fancy query
		$query->select('*')
			->from($this->db->quoteName('#__partner'))
			->where($this->db->quoteName('published')."= 1");
		$this->db->setQuery($query);
		return $this->db->loadObjectList();
	}
}