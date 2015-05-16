<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_partner
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

/**
 * Partner component helper.
 *
 * @param   string  $submenu  The name of the active view.
 *
 * @return  void
 *
 * @since   1.6
 */
abstract class PartnerHelper
{
    /**
     * Configure the Linkbar.
     */
    public static function addSubmenu($submenu)
    {
        JSubMenuHelper::addEntry(
            JText::_('COM_PARTNER_SUBMENU_MESSAGES'),
            'index.php?option=com_partner',
            $submenu == 'messages'
        );

        JSubMenuHelper::addEntry(
            JText::_('COM_PARTNER_SUBMENU_CATEGORIES'),
            'index.php?option=com_categories&view=categories&extension=com_partner',
            $submenu == 'categories'
        );

        // set some global property
        $document = JFactory::getDocument();
        if ($submenu == 'categories')
        {
            $document->setTitle(JText::_('COM_PARTNER_ADMINISTRATION_CATEGORIES'));
        }
    }
}