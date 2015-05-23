<?php
defined('_JEXEC') or die;

abstract class HeaderHelper
{
    public function getHeaderInfo()
    {
        $app = JFactory::getApplication();

        //get the menu. we will use it multiple times so might as well declare it once to a variable
        $menu = $app->getMenu();

        //get the current menu item
        $current_menu_item = $menu->getActive();
        $params = $current_menu_item->params;

        $return_array = array();

        $return_array['service_title_text'] = $params->get('service_title_text');
        $return_array['service_description_text'] = $params->get('service_description_text');
        $return_array['service_embeded_video'] = $params->get('service_embeded_video');

        return $return_array;
    }
}