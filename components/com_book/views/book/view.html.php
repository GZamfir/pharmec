<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_book
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

/**
 * HTML View class for the Book Component
 *
 * @since  0.0.1
 */
class BookViewBook extends JViewLegacy
{
    /**
     * Display the  Book view
     *
     * @param   string  $tpl  The name of the template file to parse; automatically searches through the template paths.
     *
     * @return  void
     */
    function display($tpl = null)
    {
        // Assign data to the view
        $this->item = $this->get('Item');
        if(!empty($this->item)){
            $this->item->details = json_decode($this->item->params);

            //we need to override the ID
            $input = JFactory::getApplication()->input;
            $this->item->id  = $input->get('id');
        }

        $this->logged_in_user = JFactory::getUser();

        $session = JFactory::getSession();
        $this->voted_books_session = $session->get('voted_books');

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