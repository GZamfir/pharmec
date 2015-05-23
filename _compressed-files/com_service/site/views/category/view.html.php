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
class ServiceViewCategory extends JViewLegacy
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
        require_once JPATH_COMPONENT . '/helpers/HeaderHelper.php';
        // Assign data to the view
        $this->services_within_category = $this->get('ServicesWithinCategory');

        $this->header_info = HeaderHelper::getHeaderInfo();

        foreach($this->services_within_category as $k=>$individual_service){
            $this->services_within_category[$k]->formated_date = date('l jS F Y', strtotime($this->services_within_category[$k]->service_date));
            $this->services_within_category[$k]->date_for_title = date('d/m/Y', strtotime($this->services_within_category[$k]->service_date));
        }


        //load in jquery
        JHtml::_('jquery.framework');

        $this->header = $this->get('Header');

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