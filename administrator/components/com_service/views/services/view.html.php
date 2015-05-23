<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_service
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

/**
 * Services View
 *
 * @since  0.0.1
 */
class ServiceViewServices extends JViewLegacy
{
    /**
     * Display the  Service view
     *
     * @param   string  $tpl  The name of the template file to parse; automatically searches through the template paths.
     *
     * @return  void
     */
    function display($tpl = null)
    {
        //load in the model
        $model = $this->getModel('Services');
        // Get application
        $app = JFactory::getApplication();
        $context = "service.list.admin.service";
        // Get data from the model
        $this->state			= $this->get('State');
        $this->items		= $this->get('Items');


        //get the categories and convert the date
        if(!empty($this->items)){
            //loop through the items
            foreach($this->items as $k=>$item) {
                //get the tags from the model
                $category_result = $model->getCategoryName($item->catid);
                $category_name = "";
                //loop through the array that we got back
                foreach($category_result as $category){
                    //convert it to a string (can't use implode on objects)
                    $category_name = $category->title;
                }

                //append it to a property of the object
                $item->category_name = $category_name;
            }
        }

        $this->pagination	= $this->get('Pagination');
        $this->filter_order 	= $app->getUserStateFromRequest($context.'filter_order', 'filter_order', 'message', 'cmd');
        $this->filter_order_Dir = $app->getUserStateFromRequest($context.'filter_order_Dir', 'filter_order_Dir', 'asc', 'cmd');
        $this->filterForm    	= $this->get('FilterForm');
        $this->activeFilters 	= $this->get('ActiveFilters');

        // Check for errors.
        if (count($errors = $this->get('Errors')))
        {
            JError::raiseError(500, implode('<br />', $errors));

            return false;
        }

        // Set the submenu
        ServiceHelper::addSubmenu('services');

        // Set the toolbar and number of found items
        $this->addToolBar();

        // Display the template
        parent::display($tpl);

        // Set the document
        $this->setDocument();
    }


    /**
     * Add the page title and toolbar.
     *
     * @return  void
     *
     * @since   1.6
     */
    protected function addToolBar()
    {
        $title = JText::_('COM_SERVICE_MANAGER_SERVICES');
        if ($this->pagination->total)
        {
            $title .= "<span style='font-size: 0.5em; vertical-align: middle;'>(" . $this->pagination->total . ")</span>";
        }
        JToolBarHelper::title($title, 'service');
        JToolBarHelper::deleteList('', 'services.delete');
        JToolBarHelper::editList('service.edit');
        JToolBarHelper::addNew('service.add');
    }
    /**
     * Method to set up the document properties
     *
     *
     * @return void
     */
    protected function setDocument()
    {
        $document = JFactory::getDocument();
        $document->setTitle(JText::_('COM_SERVICE_ADMINISTRATION'));
    }
}