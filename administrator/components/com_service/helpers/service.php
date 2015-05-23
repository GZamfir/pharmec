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
 * Service component helper.
 *
 * @param   string  $submenu  The name of the active view.
 *
 * @return  void
 *
 * @since   1.6
 */
abstract class ServiceHelper
{
    /**
     * Configure the Linkbar.
     */
    public static function addSubmenu($submenu)
    {
        JSubMenuHelper::addEntry(
            JText::_('COM_SERVICE_SUBMENU_MESSAGES'),
            'index.php?option=com_service',
            $submenu == 'messages'
        );

        JSubMenuHelper::addEntry(
            JText::_('COM_SERVICE_SUBMENU_CATEGORIES'),
            'index.php?option=com_categories&view=categories&extension=com_service',
            $submenu == 'categories'
        );

        // set some global property
        $document = JFactory::getDocument();
        if ($submenu == 'categories')
        {
            $document->setTitle(JText::_('COM_SERVICE_ADMINISTRATION_CATEGORIES'));
        }
    }
}