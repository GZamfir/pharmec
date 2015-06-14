<?php

class modPharmecSliderHelper {

	var $db;

	public function __construct() {
		$this->db = JFactory::getDbo();

	}

	public function get_slides(){
		//declare the menu
		$menu = JFactory::getApplication()->getMenu();

		// Initialize query
		$query = $this->db->getQuery(true);

		//first the categories
		$query->select('*')
			  ->from('#__categories')
			  ->where('extension = "com_service"')
			  ->where('published = 1');
		$this->db->setQuery($query);
		$categories = $this->db->loadObjectList();

		//array that needs to be returned
		$returned_cat_array = array();
		//let's loop through them and see if they should be displayed or nah
		foreach($categories as $key => $category){
			$cat_params = json_decode($category->params);

			if(!empty($cat_params) && !empty($cat_params->show_in_slider) && $cat_params->show_in_slider == 1){
				$returned_cat_array[$key]['id'] = $category->id;
				$returned_cat_array[$key]['title'] = $category->title;
				$returned_cat_array[$key]['image'] = $cat_params->category_image;
			}
		}
		//now let's get the menu item and we're done
		if(!empty($returned_cat_array)) {
			foreach ($returned_cat_array as $key => $individual_item) {
				$attributes = array('link');
				$values = array('link' => "index.php?option=com_service&view=category&catid={$individual_item['id']}");
				$menu_item = $menu->getItems($attributes, $values, true);
				$returned_cat_array[$key]['href'] = $menu_item->route;
			}
		}

		//now lets get the single items
		$query = $this->db->getQuery(true);
		$query->select('*')
			->from($this->db->quoteName('#__service'))
			->where($this->db->quoteName('published')."= 1")
			->where($this->db->quoteName('show_in_slider')."= 1");
		$this->db->setQuery($query);
		$single_services = $this->db->loadObjectList();

		$returned_single_services_array = array();

		if(!empty($single_services)){
			foreach($single_services as $key => $single_service){
				//check if we want it to be displayed in the slider
				if(!empty($single_service->show_in_slider) && $single_service->show_in_slider == 1) {
					//we can get all the info in one for this
					//get the id, title, image
					$returned_single_services_array[$key]['id'] = $single_service->id;
					$returned_single_services_array[$key]['title'] = $single_service->title;
					$returned_single_services_array[$key]['image'] = $single_service->title_image;

					//get the menu item now
					$attributes = array('link');
					$values = array('link' => "index.php?option=com_service&view=service&id={$single_service->id}");
					$menu_item = $menu->getItems($attributes, $values, true);
					$returned_single_services_array[$key]['href'] = $menu_item->route;
				}
			}
		}

		$returned_array = array_merge($returned_cat_array,$returned_single_services_array);

		return $returned_array;

	}
}