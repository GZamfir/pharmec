<?php

class modPharmecNewsHelper {

	var $db;

	public function __construct() {
		$this->db = JFactory::getDbo();

	}

	public function getNews($limit){
		// Initialize query
		$query = $this->db->getQuery(true);

		//fancy query
		$query->select('con.*')
			->from($this->db->quoteName('#__content', 'con'))
			->join('INNER',$this->db->quoteName('#__categories', 'cat') . ' ON (' . $this->db->quoteName('con.catid') . ' = ' . $this->db->quoteName('cat.id') . ')')
			->where($this->db->quoteName('published')."= 1")
			->where($this->db->quoteName('cat.title')."= 'Noutati'")
			->order($this->db->quoteName('con.id').' desc')
			->setLimit($limit);;
		$this->db->setQuery($query);
		return $this->db->loadObjectList();
	}
}