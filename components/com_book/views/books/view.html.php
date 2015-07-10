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
class BookViewBooks extends JViewLegacy
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
        $this->books = $this->get('Books');

        $this->logged_in_user = JFactory::getUser();

        if(!empty($this->logged_in_user->id)) {
            $model = $this->getModel('books');
            $voted_books = $model->getListOfVotes($this->logged_in_user->id);

            $compressed_array = $this->array_pluck($voted_books,"book_id");
            
        }

        // Check for errors.
        if (count($errors = $this->get('Errors')))
        {
            JLog::add(implode('<br />', $errors), JLog::WARNING, 'jerror');

            return false;
        }

        // Display the view
        parent::display($tpl);
    }

    function array_pluck(array $array = array(), $key)
    {
        return array_map(function($item) use($key)
        {
            return $item[$key];
        }, $array);
    }
}