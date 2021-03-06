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
 * HTML View class for the Service Component
 *
 * @since  0.0.1
 */
class ServiceViewService extends JViewLegacy
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
        // Assign data to the view
        //get the individual item
        $this->item = $this->get('Item');

        //get the upcoming services
        $this->upcoming_services = $this->get('UpcomingServices');

        $this->item->date_for_title = date('l jS F Y', strtotime($this->item->service_date));

        //load in jquery
        JHtml::_('jquery.framework');

        // Check for errors.
        if (count($errors = $this->get('Errors')))
        {
            JLog::add(implode('<br />', $errors), JLog::WARNING, 'jerror');

            return false;
        }
        // Display the view
        parent::display($tpl);
    }
}