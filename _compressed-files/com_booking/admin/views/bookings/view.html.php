<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_booking
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

/**
 * Bookings View
 *
 * @since  0.0.1
 */
class BookingViewBookings extends JViewLegacy
{
    /**
     * Display the  Booking view
     *
     * @param   string  $tpl  The name of the template file to parse; automatically searches through the template paths.
     *
     * @return  void
     */
    function display($tpl = null)
    {
        //load in the model
        $model = $this->getModel('Bookings');
        // Get application
        $app = JFactory::getApplication();
        $context = "booking.list.admin.booking";
        // Get data from the model
        $this->state			= $this->get('State');
        $this->items		= $this->get('Items');


        //get the tags
        if(!empty($this->items)){
            //loop through the items
            foreach($this->items as $k=>$item) {
                //get the tags from the model
                $tags = $model->getTags($item->id);

                $tagString = "";
                //loop through the array that we got back
                foreach($tags as $tag){
                    //convert it to a string (can't use implode on objects)
                    $tagString .= $tag->title .", ";
                }
                //remove the last comma
                $tagString =  rtrim($tagString,", ");

                //append it to a property of the object
                $item->tags = $tagString;
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
        $title = JText::_('COM_BOOKING_MANAGER_BOOKINGS');
        if ($this->pagination->total)
        {
            $title .= "<span style='font-size: 0.5em; vertical-align: middle;'>(" . $this->pagination->total . ")</span>";
        }
        JToolBarHelper::title($title, 'booking');
        JToolBarHelper::deleteList('', 'bookings.delete');
        JToolBarHelper::editList('booking.edit');
        JToolBarHelper::addNew('booking.add');
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
        $document->setTitle(JText::_('COM_BOOKING_ADMINISTRATION'));
    }
}